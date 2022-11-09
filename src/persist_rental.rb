require './src/rental'
require './src/book'
require './src/person'
require './src/modules/list'
require './src/persist_book'
require './src/persist_person'
require 'json'

class PersistRental
  attr_reader :rentals, :books, :people

  def initialize(rentals, books, people)
    @rentals = rentals
    @books = books
    @people = people
  end
  include List

  def read_rental_data
    puts '=================Rental List ==================='
    return [] unless File.exist?('./src/rentals.json')
    rental_data = File.read('./src/rentals.json')
    rental_list = JSON.parse(rental_data)
    rental_list.each_with_index do |rental, index|
      print "#{index} Date: #{rental['date']} Author: #{rental['author']} "
      puts "Title: #{rental['title']} Name: #{rental['name']}"
    end
    puts '===================End of Rental List ======================'
  end

  def save_rental_data(date, book_index, person_index)
    new_rental = { 'date' => date, 'author' => @books[book_index]['author'], 'title' => @books[book_index]['title'],
                   'name' => @people[person_index]['name'] }
    rental_data = File.read('./src/rentals.json')
    rental_list = JSON.parse(rental_data)
    rental_list << new_rental
    File.write('./src/rentals.json', JSON.pretty_generate(rental_list))
  end
end
