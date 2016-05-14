class InstagramController < ApplicationController
  def search
    unless params[:tag] and params[:access_token]
	    head 400
		  return
		  end
  end
end
