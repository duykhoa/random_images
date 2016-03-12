module RndImg
  class Robohash
    BASE_URL = "https://robohash.org/"

    def image_url
      BASE_URL + SecureRandom.hex(3)
    end
  end
end
