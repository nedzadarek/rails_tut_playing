class CommentsController < ApplicationController
  
  def create
    @tea = Tea.find(params[:tea_id])
    @comment = @tea.comments.create(params[:comment])
    redirect_to tea_path(@tea)
  end
end
