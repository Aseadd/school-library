require './src/book'
require './src/modules/list'
require 'json'

class PersistBook
    def initialize(book)
        @books = book
    end
include List

    def read_book_data
        book_data = File.read('./src/books.json')
        book_list = JSON.parse(book_data)
        book_list.each_with_index do |book, index|
          puts "#{index} Title: #{book['title']} Author: #{book['author']}}"
        end
    end

    def persist_book(title, author)
        new_book = {'title' => title, 'author' => author}
        book_data = File.read('./src/books.json')
        book_list = JSON.parse(book_data)
        book_list << new_book
        File.open('./src/books.json', 'w') do |file|
        file.write(JSON.pretty_generate(book_list))
        end
    end
end