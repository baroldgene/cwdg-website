module OcticonsHelper
  def mega_oction(code)
    content_tag :span, '', :class => "mega-octicon octicon-#{code.to_s.dasherize}"
  end

  def oction(code)
    content_tag :span, '', :class => "octicon octicon-#{code.to_s.dasherize}"
  end
end
