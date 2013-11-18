class Library
  def initialize
    @books = []
    available_books = []
    borrowed_books = []
  end

  def books
    @books
  end

  def list_books
    @books.each do |book|
    puts "The status of #{book.title} is #{book.status}"
    end
  end

  def borrowed_books
    
  end

  def available_books

  end

  def add_book(book)
    @books.push(book)
    return "a new book, #{book.title} , has been added"
  end

  def check_out(name, book)
    if @borrowed_books_count == 2
      return "Sorry, that user already has two books checked out"
    end

    if @status == "available"
      @status == "checked out"
      @borrowed_books_count =+ 1
      return "#{name} has checked out #{book}"

    else
      puts "Sorry, that book is not available"
    end
  end

  def check_in(book)
    book.status == "available"
  end
end

class Borrower
  def initialize(name)
    @name = name
    @borrowed_books_count = 0
    @borrowed_books = []
    puts "a new borrower named #{name} has been added"
  end

  def borrowed_books

  end

  def name
    @name
  end

  def borrowed_books_count
    @borrowed_books_count 
  end

  def borrowed_books_list
    @borrowed_books_list.push[borrowed_book]
  end
end

class Book
  attr_accessor :title, :author

  # def initialize(title, author)
  #   @title = title
  #   @author = author
  #   @status = status
  # end
  
  def initialize(title, author)
    @title = title
    @author = author
    @status = "available"
    @borrower = nil
    puts "#{title} was created"
  end

  def title
    @title
  end

  def author
    @author
  end

  def status
    @status
   end


  # def status=(new_value)
  #   @status = new_value
  # end

  def borrower
    @borrower
  end

  # def borrower=(new_value)
  #   @borrower = new_value
  # end

  # def title
  #   @title
  # end
    
  # def title=(value)
  #   @title = value
  # end

end


