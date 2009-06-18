module ActionController #:nodoc:
  module Caching
    
    module Fragments
      
      alias_method :old_fragment_cache_key, :fragment_cache_key
      
      def fragment_cache_key(key)
        fragment_key = old_fragment_cache_key(key)
        fragment_key << '_rev:' + ENV['REVISION'] unless fragment_key.include?('_rev:')
        fragment_key
      end
      
    end
    
  end
end
