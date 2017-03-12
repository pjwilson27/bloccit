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
end
