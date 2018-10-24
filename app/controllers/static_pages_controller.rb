class StaticPagesController < ApplicationController
<<<<<<< HEAD
  
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end 
=======
  def home
>>>>>>> d2660275cf4a5feb2bf84fe454f49ecad7dd918c
  end

  def help
  end

  def about
  end

  def contact
  end
end
