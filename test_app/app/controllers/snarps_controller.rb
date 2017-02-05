class SnarpsController < ApplicationController
  before_action :set_snarp, only: [:show, :update, :destroy]

  # GET /snarps
  def index
    @snarps = Snarp.all

    render json: @snarps
  end

  # GET /snarps/1
  def show
    render json: @snarp
  end

  # POST /snarps
  def create
    @snarp = Snarp.new(snarp_params)

    if @snarp.save
      render json: @snarp, status: :created, location: @snarp
    else
      render json: @snarp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snarps/1
  def update
    if @snarp.update(snarp_params)
      render json: @snarp
    else
      render json: @snarp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snarps/1
  def destroy
    @snarp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snarp
      @snarp = Snarp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snarp_params
      params.fetch(:snarp, {})
    end
end
