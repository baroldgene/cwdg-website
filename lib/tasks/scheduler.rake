require 'open-uri'

desc 'Tasks that deal with the CWDG tutorials'
namespace :tutorials do
  desc 'Sync with CWDG/tutorials'
  task sync: :environment do
    github_tutorials = Octokit.contents('CWDG/tutorials').keep_if do |file|
      !file[:name].eql?('README.md') && file[:name] =~ /\.md/
    end

    # Remove tutorials no longer in the repo
    (Tutorial.all.pluck(:file_name) - github_tutorials.map { |t| t[:name] }).each do |file_name|
      puts "Removing #{file_name}..."
      Tutorial.find_by(file_name: file_name).destroy
      puts "Done!"
    end

    # Create or Update Tutorial(s)
    github_tutorials.each do |file|
      begin
        tutorial = Tutorial.find_by(file_name: file[:name])
      rescue ActiveRecord::RecordNotFound
        puts "Creating #{file[:name]}..."
        Tutorial.new(file_name: file[:name],
                     content:   get_tutorial_content(file[:name]),
                     sha:       file[:sha],
                     title:     capitalize_all(file[:name][0..-4])).save
        puts "Done!"
      else
        if tutorial.sha != file[:sha]
          puts "Updating #{file[:name]}..."
          tutorial.update_attribute(:content, get_tutorial_content(file[:name]))
          puts "Done!"
        end
      end
    end
  end

  def capitalize_all(sentence)
    sentence.split(/\W/).map(&:capitalize).join(' ')
  end

  def get_tutorial_content(file_name)
    content = Nokogiri::HTML(open("https://raw.githubusercontent.com/CWDG/tutorials/master/#{file_name}"))
    content.css('body > p').children.text
  end
end
