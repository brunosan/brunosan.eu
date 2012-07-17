module Jekyll
  class Vimeo < Liquid::Tag
    @@width = 420
    @@height = 315

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
    %(<iframe src="http://player.vimeo.com/video/#{@id}?portrait=0" width="#{@@width}" height="#{@@height}" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>)
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)
