require 'csv'
require_relative 'person.rb'

people = Person.load_csv("baza_danych.csv")

people=people.sort_by!{ |person| person.last_name}

puts Person.load_list(people)
