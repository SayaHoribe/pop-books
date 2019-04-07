class RecommendsController < ApplicationController
  before_action :set_recommend, only: [:show, :edit, :update, :destroy]

  # GET /recommends
  def index
    @recommends = Recommend.all
  end

  # GET /recommends/1
  def show
  end

  # GET /recommends/new
  def new
    @recommend = Recommend.new
  end

  # GET /recommends/1/edit
  def edit
  end

  # POST /recommends
  def create
    @recommend = Recommend.new(recommend_params)

    if @recommend.save
      redirect_to @recommend, notice: 'Recommend was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recommends/1
  def update
    if @recommend.update(recommend_params)
      redirect_to @recommend, notice: 'Recommend was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recommends/1
  def destroy
    @recommend.destroy
    redirect_to recommends_url, notice: 'Recommend was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommend
      @recommend = Recommend.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recommend_params
      params.fetch(:recommend, {})
    end
end
