class CountiesController < ApplicationController
  before_action :set_county, only: [:show, :update, :destroy]

  # GET /counties
  def index
    @counties = County.all
    json_response(@counties)
  end

  # POST /counties
  def create
    @counties = Count.create!(county_params)
    json_response(@county, :created)
  end

  private

  def county_params
    # allowed params
    params.permit(:title, :lat, :lng, :created_by)
  end

  def set_county
    @county = County.find(params[:id])
  end

end
