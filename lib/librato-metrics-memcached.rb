module Librato
  module Metrics
    module Memcached
      def self.version
        verfile = File.join(File.dirname(__FILE__), '../VERSION')
        File.read(verfile).chomp
      end
    end
  end
end
