class InstagramController < ApplicationController
  require 'json'
  require 'httparty'
  def search
    unless params[:tag] and params[:access_token]
      head 400
    tag = params[:tag]
  	access_token = params[:access_token]
    tag_data= HTTParty.get('https://api.instagram.com/v1/tags/'+tag+'?access_token='+token)
    recent_data= HTTParty.get('https://api.instagram.com/v1/tags/'+tag+'/media/recent?access_token='+access_token)
    metadata = ({:total => tag_data["data"]["media_count"].to_i})
    posts=[]
    for i in 0..9
      post = ({:tags => recent_data["data"][i]["tags"], :username => recent_data["data"][i]["caption"]["from"]["username"], :likes => recent_data["data"][i]["likes"]["count"], :url => recent_data["data"][i]["images"]["standard_resolution"]["url"], :caption => recent_data["data"][i]["caption"]["text"]})
      posts.push(post)
    end
    version='1.0.0'
    render json: {metadata: metadata, posts: posts, version: version}
  end
end
