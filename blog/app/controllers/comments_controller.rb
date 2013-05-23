class CommentsController < ApplicationController
  
  def create
    @tea = Tea.find(params[:tea_id])
    @comment = @tea.comments.create(params[:comment])
    redirect_to tea_path(@tea)
  end
  
  def destroy
    @tea = Tea.find(params[:tea_id])
    @comment = @tea.comments.find(params[:id])
    @comment.destroy
    redirect_to tea_path(@tea)
  end
end
