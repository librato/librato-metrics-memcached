require "librato-metrics-memcached/version"

module Librato
  module Metrics
    module Memcached
      def self.version
        VERSION
      end
    end
  end
end
