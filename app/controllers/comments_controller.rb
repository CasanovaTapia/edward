class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_post

  respond_to :html

  def index
    @comments = @post.comments.all
    authorize @comments
  end

  def show
    authorize @comment
  end

  def new
    @comment = @post.comments.new
    authorize @comment
  end

  def edit
    authorize @comment
  end

  def create
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save!
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      flash[:error] = "Comment was not saved, please try again."
      render :new
    end
  end

  def update
    authorize @comment
    if @comment.update(comment_params)
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      flash[:error] = "Comment was not saved, please try again."
      render :new
    end
  end

  def destroy
    authorize @comment
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
