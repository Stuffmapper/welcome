class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
	  flash[:notice] = 'Email successfully received. Thanks! ;-)'
      redirect_to  action: 'new'
	else
	  render 'new'
	end
  end

  private
    def comment_params
	  params.require(:comment).permit(:email, :name, :comment)
    end
end
