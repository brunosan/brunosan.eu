module Jekyll
  class Image < Liquid::Tag

    def initialize(image, filename, tokens )
      super
      @filename = filename
    end

    def render(context)
      %(<a href=\"/media/#{@filename}\"> <img width=\"100\%\" src=\"/media/#{@filename}\" class="center" /></a>)
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::Image)
