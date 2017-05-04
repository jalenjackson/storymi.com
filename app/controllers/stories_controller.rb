class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :view, :edit, :update, :destroy]
  impressionist :action => [:view]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.paginate(:page => params[:page], :per_page => 21)
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @messages = @story.messages.order(created_at: :desc).reverse

  end



  def publish
    @story = Story.find(params[:id])
    @story.ispublished = true
    @story.save
  end
  # GET /stories/new
  def new
    @story = Story.new
    @category = Category.new
  end

  # GET /stories/1/edit
  def edit

  end


  def profile
    @user = User.find_by_id(params[:id])


    if User.find_by_id(params[:id])
      @email = params[:id]
      @user = User.find_by_id(params[:id])
      @views = 1
      @user.stories.each do |i|
        @views += i.impressionist_count(:filter => :params)
      end
      @user.articles.each do |i|
        @views += i.impressionist_count(:filter => :params)
      end

    else
      redirect_to "/"
    end

  end

  # POST /stories
  # POST /stories.json
  def create
    @story = current_user.stories.build (story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Item was successfully created.' }
        format.json { render json: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def view
    @messages = @story.messages.order(created_at: :desc).reverse
    @count = Story.count
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :category_id, :synopsis,:texter,:reciever, :image, :video, :cover)
    end


end
