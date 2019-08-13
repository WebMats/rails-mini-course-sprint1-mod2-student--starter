require_relative "lendable"


class Book
    attr_reader :title
    attr_reader :author
    attr_writer :finished
    attr_accessor :count
    include Lendable

    def initialize(author, title)
        @author = author
        @title = title
        @finished = false
        @count = 3
    end

    def self.recommended_books
        [
            Book.new("The Well-Grounded Rubyist", "David A. Black"),
            Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
            Book.new("Effective Testing with RSpec", "Myron Marston")
        ]
    end
end


