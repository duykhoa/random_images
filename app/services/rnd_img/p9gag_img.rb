module RndImg
  class P9gagImg
    def image_url
      P9gagLink.all.sample.link
    end
  end
end
