require 'digest/sha2'

class UrlController < ApplicationController
  
  attr_reader :url, :link_model
  
  def initialize(url, link_model)
      @url = url
      @link_model = link_model
  end

  def show
    @link = Link.where(params[:lookup_code]) 
    render 'errors/404', status: 404 if @link.nil?
    @link.update_attribute(:clicked, @link.clicked + 1)
    redirect_to @link.url
  end
  
  def create
    loop do
    code = SecureRandom.uuid[0..6]
    break code unless Link.exists?(lookup_code: code) 
    link_model.create(url: @url, lookup_code: code)
  end
end