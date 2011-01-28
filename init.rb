require 'fragments_respect_deploys'
ENV['REVISION'] ||= (File.exists?('REVISION') ? File.read('REVISION') : nil).to_s
