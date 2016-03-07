require 'open-uri'

class ImagesController < ApplicationController
  def index
     data = open("https://robohash.org/" + SecureRandom.hex(3)).read
     send_data data, type: "image/png", disposition: 'inline', file: "photo.png"
  end
end
