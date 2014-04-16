require 'rails/engine'
require 'action_view/helpers/asset_tag_helper'

module HttpErrorDogs
  class Engine < Rails::Engine
    initializer 'http_error_dogs.load_static_assets' do |app|
      app.config.assets.precompile += %w(*.jpg)
    end

  end

  extend ActionView::Helpers::AssetTagHelper
  extend ActionView::Helpers::TagHelper

  mattr_accessor :layout, :codes, :html

  def self.layout
    @@layout || false
  end

  def self.codes
    @@codes || :all
  end

  def self.html
    @@html || Proc.new do |status_code|
      image_tag "/assets/http_error_dogs/#{status_code}.jpg", alt: "Status code #{status_code}"
    end
  end

end
