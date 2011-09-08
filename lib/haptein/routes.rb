require 'http_router'

module Haptein
  class Routes
    def self.spec
      @@routes = HttpRouter.new do
        add('/time').to(Haptein::Events)
      end
    end
  end
end
