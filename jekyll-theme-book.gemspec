# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-book"
  spec.version       = "0.0.0"
  spec.authors       = ["LawssssCat"]
  spec.email         = ["1191693505@qq.com"]

  spec.summary       = "A jekyll theme."
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.5"

  spec.add_runtime_dependency "jekyll", "~> 4.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
end
