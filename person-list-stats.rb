require 'csv'
require_relative 'person.rb'

persons_list = []
CSV.foreach("baza_danych_3.csv") do |person|
  persons_list<<Person.new(first_name: person[0],last_name: person[1])
end

first_name_list=[]
last_name_list=[]
persons_list.each do |person|
  first_name_list << person.first_name
  last_name_list << person.last_name
end

uniq_first_name_list=persons_list.uniq{|person| person.first_name}
uniq_last_name_list=persons_list.uniq{|person| person.last_name}

puts "Nazwiska:"
uniq_last_name_list.each do |person|
  duplication=last_name_list.count(person.last_name)
  puts "#{person.last_name} (#{duplication})"
end

puts "Imiona:"
uniq_first_name_list.each do |person|
  duplication=first_name_list.count(person.first_name)
  puts "#{person.first_name} (#{duplication})"
end
