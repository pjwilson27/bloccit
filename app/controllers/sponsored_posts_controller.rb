class SponsoredPostsController < ApplicationController
  def show
    @sp = SponsoredPost.find(params[:id])
  end

  def new
    @sp = SponsoredPost.new
  end

  def edit
    @sp = SponsoredPost.find(params[:id])
  end
  
  def update
    @sp = SponsoredPost.find(params[:id])
    @sp.title = params[:sp][:title]
    @sp.body = params[:sp][:body]
    @sp.price = params[:sp][:price]
  end
  
  def destroy
    @sp = SponsoredPost.find(params[:id])
  end
  
end
