module P9gag
  module Request
    def update
      store(RestClient.get(url_builder))
    end
  end
end
