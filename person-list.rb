require 'csv'
require_relative 'person.rb'

people = Person.load_csv("baza_danych.csv")

puts Person.load_list(people)
