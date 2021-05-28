class DirectionsController < ApplicationController
  require "http"
  def index
   response = HTTP.get("https://maps.googleapis.com/maps/api/directions/json?origin=#{params[:origin]}&destination=#{params[:destination]}&key=AIzaSyDv0nZPr5xAfCwE-RJrJ3QARsdF7ME93J8")
  render json: response.parse(:json)

  end
end
