$:.push('./lib')
require 'money-tree'
require 'byebug'
require 'awesome_print'
require 'pp'

m = MoneyTree::Master.new
path = '0p/0/44/0'
n = m.node_for_path(path)

puts "seed_hex: #{m.seed_hex}"
puts "    path: #{path}"
puts "  base58: #{n.private_key.to_wif}"
puts " address: #{n.to_address}"

