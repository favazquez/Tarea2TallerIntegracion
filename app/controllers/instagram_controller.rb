class InstagramController < ApplicationController
  def search
    unless params[:access_token] and params[:tag]
	     head 400
  end
end
