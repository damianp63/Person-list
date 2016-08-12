require 'csv'
require_relative 'person.rb'

people = Person.load_csv("baza_danych.csv")

people.concat(Person.load_csv("baza_danych.csv"))

CSV.open("baza_danych_3.csv","wb",:write_headers=> true,:headers =>["first_name","last_name"]) do |file|
  people.each do |person|
    file << [person.first_name,person.last_name]
  end
end
