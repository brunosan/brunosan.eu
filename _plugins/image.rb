module Jekyll
  class Image < Liquid::Tag
    @@width = '100%'

    def initialize(name, filename, tokens)
      super
      @filename = filename
    end

    def render(context)
      %(<a href="/media/#{@filename}"> <img width="#{@@width}" src="/media/#{@filename}"></a>)
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::Image)
