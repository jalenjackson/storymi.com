class ArticlesController < ApplicationController
  include AmazonSignature
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  impressionist :action => [:show]


  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
    @hash = AmazonSignature::data_hash

  end

  # GET /articles/1/edit
  def edit
    @hash = AmazonSignature::data_hash

  end

  # POST /articles
  # POST /articles.json

  def create
    @hash = AmazonSignature::data_hash

    @article = current_user.articles.build (article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to "/articles/#{@article.id}/edit", notice: 'Item was successfully created.' }
        format.json { render json: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def publish
    @article = Article.find(params[:id])
    @article.ispublished = true
    @article.save
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :synopsis ,:body, :cover, :category_id)
  end

end