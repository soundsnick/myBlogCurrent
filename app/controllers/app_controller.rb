class AppController < ApplicationController
  def index
    @meta_title = "Все публикации"
    @posts = Post.order(id: :desc).paginate(page: params[:page], per_page: 10)
  end

  def tag
    @meta_title = "Записи с тегом ##{params[:tag]}"
    @posts = Post.where("tags LIKE ?", "%#{params[:tag]}%").order(id: :desc).paginate(page: params[:page], per_page: 10)
    render 'index'
  end
end
