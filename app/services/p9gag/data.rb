module P9gag
  module Data
    def store(raw_data)
      json_data = JSON.parse(raw_data)

      json_data["data"].each do |json|
        P9gagLink.create(link: json["images"]["large"])
      end
    end
  end
end
