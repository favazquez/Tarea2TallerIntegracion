class InstagramController < ApplicationController
  require 'json'
  require 'httparty'
  def search
    unless params[:tag] and params[:access_token]
      head 400
  end
end
