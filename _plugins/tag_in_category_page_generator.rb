module Jekyll

  class TagInCategoryPage < Page
    def initialize(site, base, dir, category, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category-tag-index.html')
      self.data['category'] = category
      self.data['tag'] = tag

      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
      tag_title_prefix = site.config['tag_title_prefix'] || 'Tag: '
      self.data['title'] = "#{category_title_prefix}#{category} / #{tag_title_prefix}#{tag}"
    end
  end

  class TagInCategoryPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'category-tag-index'
        category_dir = site.config['category_dir'] || 'categories'
        dir = site.config['tag_dir'] || 'tags'
        site.categories.keys.each do |category|
          site.tags.keys.each do |tag|
            site.pages << TagInCategoryPage.new(site, site.source, File.join(category_dir, category, dir, tag), category, tag)
          end
        end
      end
    end
  end

end