require 'open-uri'

class ImagesController < ApplicationController
  def index
    data = open(image_class.image_url).read
    send_data data, type: "image/png", disposition: 'inline', file: "photo.png"
  end

  private

  def image_class
    @image_class ||= check_image_class
  end

  def check_image_class
    if params[:type] == "cat"
      RndImg::Cat.new
    elsif params[:type] == "9gag"
      RndImg::P9gagImg.new
    else
      RndImg::Robohash.new
    end
  end
end
