require 'csv'

persons_list = []
CSV.foreach("baza_danych.csv") do |person|
  persons_list<<Person.new(first_name: person[0],last_name: person[1])
end

persons_list.each do |person|
  puts person.to_s
end
