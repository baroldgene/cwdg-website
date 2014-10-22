class TutorialsController < ApplicationController
  before_action :set_markdown_renderer, only: [:show]

  def index
    @tutorials = Tutorial.all
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    @content = @markdown.render(@tutorial.content)
  end

  private

    def set_markdown_renderer
      @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    end
end
