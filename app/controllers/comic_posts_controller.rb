class ComicPostsController < ApplicationController
  before_action :set_comic_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[show index]
  # GET /comic_posts or /comic_posts.json
  def index
    @comic_posts = ComicPost.all
  end

  # GET /comic_posts/1 or /comic_posts/1.json
  def show
  end

  # GET /comic_posts/new
  def new
    @comic_post = ComicPost.new
  end

  # GET /comic_posts/1/edit
  def edit
  end

  # POST /comic_posts or /comic_posts.json
  def create
    @comic_post = ComicPost.new(comic_post_params)

    respond_to do |format|
      if @comic_post.save
        format.html { redirect_to comic_post_url(@comic_post), notice: "Custom Character was successfully created." }
        format.json { render :show, status: :created, location: @comic_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comic_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comic_posts/1 or /comic_posts/1.json
  def update
    respond_to do |format|
      if @comic_post.update(comic_post_params)
        format.html { redirect_to comic_post_url(@comic_post), notice: "Custom Character was successfully updated." }
        format.json { render :show, status: :ok, location: @comic_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comic_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comic_posts/1 or /comic_posts/1.json
  def destroy
    @comic_post.destroy

    respond_to do |format|
      format.html { redirect_to comic_posts_url, notice: "Custom Character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comic_post
      @comic_post = ComicPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comic_post_params
      params.require(:comic_post).permit(:title, :body)
    end
end
