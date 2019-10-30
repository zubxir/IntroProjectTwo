# frozen_string_literal: true

class LocationController < ApplicationController
  def index
    @location = Location.all.order(:locationname)
  end

  def show
    @location = Location.find(params[:id])
  end
end
