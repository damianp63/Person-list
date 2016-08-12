require 'csv'
require_relative 'person.rb'

persons_list = []
CSV.foreach("baza_danych.csv") do |person|
  persons_list<<Person.new(first_name: person[0],last_name: person[1])
end
CSV.foreach("Baza_danych_2.csv") do |person|
  persons_list<<Person.new(first_name: person[0],last_name: person[1])
 end

CSV.open("baza_danych_3.csv","wb") do |file|
  persons_list.each do |person|
    file << [person.first_name,person.last_name]
  end
end
