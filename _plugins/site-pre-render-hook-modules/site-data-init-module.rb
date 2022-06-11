$logger.debug('Load Module SiteData...')

class SiteData

  def init(site) 
    # insert lang
    site.config['lang'] || site.config['lang'] = 'en'
    $logger.debug("lang=#{site.config['lang']}")

    # init logo data
    _site_logo = site.data['site']['logo'] || {} 
    _site_logo['sm'] = site.config['logo'] if _site_logo['sm'] == nil
    _site_logo['md'] = site.config['image'] if _site_logo['md'] == nil
    site.data['site']['logo'] = _site_logo
  end

end