class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new
    if @comment.create(params.require(:comment).permit(:name, :message, :time, :league))
      flash[:success]="Your message was successfully saved."
      redirect_to :back
    else
      flash[:danger]="Try again"
      redirect_to :back
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
