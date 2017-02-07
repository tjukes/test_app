class SnurksController < ApplicationController
  before_action :set_snurk, only: [:show, :update, :destroy]

  # GET /snurks
  def index
    @snurks = Snurk.all

    render json: @snurks
  end

  # GET /snurks/1
  def show
    render json: @snurk
  end

  # POST /snurks
  def create
    @snurk = Snurk.new(snurk_params)

    if @snurk.save
      render json: @snurk, status: :created, location: @snurk
    else
      render json: @snurk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snurks/1
  def update
    if @snurk.update(snurk_params)
      render json: @snurk
    else
      render json: @snurk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snurks/1
  def destroy
    @snurk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snurk
      @snurk = Snurk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snurk_params
      params.fetch(:snurk, {})
    end
end
