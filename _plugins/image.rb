module Jekyll
  class Image < Liquid::Tag

    def initialize(image, filename, width, tokens )
      super
      @filename = filename

      if $2.nil? then
        @width = "100%"
      else
        @width = $2 
      end
    end

    def render(context)
      %(<a href=\"/media/#{@filename}\"> <img width=\" #{@width}\" src=\"/media/#{@filename}\" class="center" /></a>)
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::Image)
