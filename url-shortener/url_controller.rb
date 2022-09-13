require 'digest/sha2'

class UrlController < ApplicationController

  def show
    @link = Link.find_by_slug(params[:slug]) 
    render 'errors/404', status: 404 if @link.nil?
    @link.update_attribute(:clicked, @link.clicked + 1)
    redirect_to @link.url
  end

  def create
  end

  before_validation :generate_slug
  
  def generate_slug
    self.slug = SecureRandom.uuid[0..5] if self.slug.nil? || self.slug.empty?
    true
  end
  
  # fast access to the shortened link
  def short
    Rails.application.routes.url_helpers.short_url(slug: self.slug)
  end
  
  # the API
  def self.shorten(url, slug = '')
    link = Link.where(url: url, slug: slug).first
    return link.short if link  
    
    link = Link.new(url: url, slug: slug)
    return link.short if link.save
    
    Link.shorten(url, slug + SecureRandom.uuid[0..2])
  end

  attr_reader :url, :link_model

  def initialize(url, link_model = Link)
      @url = url
      @link_model = link_model
  end

  def generate_short_link
      link_model.create(original_url: url, lookup_code: lookup_code)
  end

  def lookup_code
      loop do
          code = SecureRandom.uuid[0..6]
          break code unless link_model.exists?(lookup_code: code)
      end 
  end
end
