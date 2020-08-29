class ApplicationController < ActionController::API
  def index
    render json: { test: "success" }
  end
end