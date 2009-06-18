require 'fragments_respect_deploys'
ENV['REVISION'] ||= (File.exists?('REVISION') ? File.read('REVISION').to_i : nil).to_s
