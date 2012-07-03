module PostMore
  def postmorefilter(input, url, text)
    baseurl = @context.registers[:site].config['baseurl']

    if input.include? "<!--more-->"
      input.split("<!--more-->").first + "<p class='more'><a href='#{baseurl + url}'>#{text}</a></p>"
    else
      input
    end
  end
end

Liquid::Template.register_filter(PostMore)
