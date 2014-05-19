class CommentsController < ApplicationController
  def new

    @comment = Comment.new
  end


  def create
    @league = League.find(params[:league_id])
    if Comment.create(params.require(:comment).permit(:name, :message, :league_id, :picture))
      flash[:success]="Your message was successfully saved."
      redirect_to :back
    else
      flash[:danger]="Try again"
      redirect_to :back
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end
end
