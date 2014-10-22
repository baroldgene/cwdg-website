desc "This task gets the files that are tutorials from the repo"
task :get_repo_tutorial_files do
  tutorial_files = Octokit.contents('CWDG/tutorials').keep_if do |file|
    !file[:name].eql?('README.md') && file[:name] =~ /^\w*\.md/
  end
end

desc "This task is called by Heroku scheduler add-on, it updates/adds the tutorials from the CWDG/tutorial repo"
task update_tutorials: :environment do

end

