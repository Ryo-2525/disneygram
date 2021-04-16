class HomesController < ApplicationController

  def top
    @posts = Post.all.limit(5).includes(:photos).order('created_at DESC')

  end

  def about

  end

end
