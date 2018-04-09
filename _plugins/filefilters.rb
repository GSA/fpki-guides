module Jekyll
  module FileFilters
    def filedate(input)
      File.mtime(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::FileFilters)