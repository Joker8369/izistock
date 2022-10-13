class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @suppliers = Supplier.all
  end

  def edit
  end

  def new
    @article = Article.new
  end

  def create
    @article = Post.create(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def artilce_params
    params.require(:artilce).permit(:name, :designation, :colour, :purchase_price, :sale_price, :code, :quantity, :supplier_id)
  end

  def find
    @article = Article.find(params[:id])
  end
end
