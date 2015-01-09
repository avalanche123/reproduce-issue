require 'bundler/setup'
require 'cassandra'

cluster = Cassandra.cluster
cluster.each_host do |host| # automatically discovers all peers
  puts "Host #{host.ip}: id=#{host.id} datacenter=#{host.datacenter} rack=#{host.rack}"
end
