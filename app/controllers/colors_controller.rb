# frozen_string_literal: true
class ColorsController < ProtectedController
  before_action :set_color, only: [:update, :destroy]

  # GET /colors
  # GET /colors.json
  def index
    @colors = Color.all

    render json: @colors
  end

  # GET /colors/1
  # GET /colors/1.json
  def show
    render json: Color.find(params[:id])
  end

  # POST /colors
  # POST /colors.json
  def create
    @color = current_user.colors.build(color_params)

    if @color.save
      render json: @color, status: :created
    else
      render json: @color.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
    if @color.update(color_params)
      head :no_content
    else
      render json: @color.errors, status: :unprocessable_entity
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @color.destroy

    head :no_content
  end

  def set_color
    @color = current_user.colors.find(params[:id])
  end

  def color_params
    params.require(:color).permit(:favorite)
  end

  private :set_color, :color_params
end
