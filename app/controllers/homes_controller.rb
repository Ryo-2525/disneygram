class HomesController < ApplicationController
  
  #def top
   # @posts = Post.all.limit(5).includes(:photos).order('created_at DESC')
  #end
  
  LIMIT = 5.freeze # freeze メソッドで LIMIT 変数に再代入を不可
  def top
    @posts = Post.all.limit(LIMIT).includes(:photos).order('created_at DESC')
  end

  def about; end
end
