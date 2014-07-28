class SearchesController < ApplicationController

  def create
    redirect_to search_path(params[:twitter][:search])
  end

  def show
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end

    @tweets = client.search("##{params[:id]}").to_a
  end

end