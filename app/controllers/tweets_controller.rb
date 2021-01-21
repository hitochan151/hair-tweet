class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  

  private

  def tweet_prams
    params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
  end
end
