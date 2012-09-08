module Jekyll
  class SkillDetail < Page
    def initialize(site, base, skill)
      @site = site
      @base = base
      @dir =  site.config['skills_dir'] || '/skills'
      @name = File.join(skill, 'index.html')

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'skill_detail.html')

      self.data['skill'] = skill
      skill.gsub('-', ' ').split(' ').map {|w| w.capitalize }.join(' ').gsub('And', 'and').gsub('On', 'on')

    end
  end

  class SkillsGenerator < Generator
    safe true
    LayoutDetail = 'skill_detail'
    LayoutIndex = 'skill_index'
    def generate(site)
      unless site.layouts.key? LayoutDetail or
             site.layouts.key? LayoutIndex
        return
      end

      @site = site
      self.write_skill_details()
    end
  
    def write_skill_details
      unless @site.layouts.key? LayoutDetail
        return
      end

      @site.tags.keys.each do |skill|
        detail = SkillDetail.new(@site, @site.source, skill)
        detail.render(@site.layouts, @site.site_payload)
        detail.write(@site.dest)
        @site.pages << detail
      end
    end
  end
end
