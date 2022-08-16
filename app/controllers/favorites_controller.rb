class FavoritesController < ApplicationController
# def show
#    @favorite_exists = Favorite.where(post: @post, user: current_user) == [] ? false : true
# end

  def update
    favorite = Favorite.where(post: Post.find(params[:post]), user: current_user)
    if favorite == []
      #create favorite if not exist
      Favorite.create(post: Post.find(params[:post]), user: current_user)
    #check if favorite exist from other areas and if not we create it
    @favorite_exists = true
    else
      #delete the favorite
      favorite.destroy_all
      @favorite_exists = false
  end

  respond_to do |format|
    format.html {}
    format.js {}
    end
  end
end
