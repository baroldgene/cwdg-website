module MarkdownHelper
  def markdown(text)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    raw(renderer.render(text))
  end
end
