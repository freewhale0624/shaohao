class CarouselsController < ApplicationController
  before_action :set_carousel, only: [:show, :edit, :update, :destroy]

  # GET /carousels
  # GET /carousels.json
  def index
    @carousels = Carousel.all
  end

  # GET /carousels/1
  # GET /carousels/1.json
  def show
  end

  # GET /carousels/new
  def new
    @carousel = Carousel.new
  end

  # POST /carousels
  # POST /carousels.json
  def create
    @carousel = Carousel.new(carousel_params)

    if @carousel.save
     redirect_to carousels_url, notice: "建立成功"
    else
     render :new 
    end
  end

  # PATCH/PUT /carousels/1
  # PATCH/PUT /carousels/1.json
  def update
    if @carousel.update(carousel_params)
      redirect_to carousels_url, notice: "修改成功"
    else
      render :edit
    end
  end

  # DELETE /carousels/1
  # DELETE /carousels/1.json
  def destroy
    @carousel.destroy
    redirect_to carousels_url, notice: "刪除成功"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carousel
      @carousel = Carousel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carousel_params
      params.require(:carousel).permit(:url, :priority, :video, :image)
    end
end
