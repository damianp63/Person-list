require 'csv'

persons_list = []
CSV.foreach("baza_danych.csv") do |person|
  persons_list<<Person.new(array: person)
end

persons_list.each do |person|
  puts person.to_s
end
