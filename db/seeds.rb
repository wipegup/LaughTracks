require 'csv'
require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

options_hash = {col_sep: "\t", headers: true,
  header_converters: :symbol, converters: :numeric}

comedians = CSV.open('./data/comedians.tsv', options_hash)
specials = CSV.open('./data/specials.tsv', options_hash)
special_hashes = specials.map{ |row| row.to_hash }
comedian_hashes  = comedians.map{ |row| row.to_hash }

comedians_activerecord_hash = {}
comedian_hashes.each do |hash|
  comedians_activerecord_hash[hash[:name]] = Comedian.create(hash)
end

special_hashes.each do |hash|
  comedian = comedians_activerecord_hash[hash.delete(:comedian)]
  comedian.specials.create(hash)
end
