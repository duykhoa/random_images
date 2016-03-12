require 'p9gag/request'
require 'p9gag/data'

module P9gag
  class Client
    include Request
    include Data

    URL = "http://infinigag.k3min.eu"

    attr_reader :section, :id

    def initialize(section:, id: nil)
      @section = section
      @id = id
    end

    private

    def url_builder
      [URL, id].compact.join('/')
    end
  end
end
