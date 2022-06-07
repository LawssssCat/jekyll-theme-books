module ConfigSamplePluginGenerator
  class Generator < Jekyll::Generator
    priority :highest

    def generate(site)

      # init site.lang
      site.config['lang'] || site.config['lang'] = 'en'
      puts "lang=#{site.config['lang']}"
      # puts site.collections['books']['title']
      # book_data = site.data['books']
      # ongoing = book_data.select { |book| book['status'] == 'ongoing' }
      # done = book_data.select { |book| book['status'] == 'finished' }

      # # get template
      # reading = site.pages.find { |page| page.name == 'reading.html'}

      # # inject data into template
      # reading.data['ongoing'] = ongoing
      # reading.data['done'] = done
    end
  end
end