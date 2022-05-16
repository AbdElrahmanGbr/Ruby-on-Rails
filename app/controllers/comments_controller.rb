class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    comment = @article.comments.new(comment_params)
    redirect_to article_path(@article) if comment.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: 303
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
