class Api::PhotosController < ApplicationController
  def index
    photos = Photo.all
    render status: 200, json: photos
  end
end
