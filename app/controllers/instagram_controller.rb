class InstagramController < ApplicationController
  require 'json'
  require 'httparty'
  skip_before_action :verify_authenticity_token
  def search
    unless params[:tag] and params[:access_token]
	    head 400
		  return
		end
    tag = params[:tag]
  	access_token = params[:access_token]
    tag_data= HTTParty.get('https://api.instagram.com/v1/tags/'+tag+'?access_token='+token)
  end
end
