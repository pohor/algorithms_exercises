require 'date'
require './reader.rb'
require './book.rb'

class Library
  attr_accessor :list_of_books, :list_of_readers
  def initialize
    self.list_of_books = []
    self.list_of_readers = []
  end
  def add_book(book)
    list_of_books << book
  end
  def add_reader(reader)
    list_of_readers << reader
  end

  def lend_book(book_title)
    puts "Nie posiadamy takiej książki w zasobach." if list_of_books.any? { |book| book.title == book_title } == false
    list_of_books.any? do |book|
      if book.title == book_title && book.state == "availible"
        puts "Książka jest dostępna."
        book.state = "unavailibe"
        book.borrow_time = Time.new
      elsif book.title == book_title && book.state == "unavailibe"
        puts "Książka jest niedostępna."
      end
    end
  end

  def get_book_back(book_title)
    puts "Taka książka nigdy do nas nie należała. Proszę zwrócić ją do właściwej biblioteki." if list_of_books.any? { |book| book.title == book_title } == false
    list_of_books.any? do |book|
      if book.title == book_title && book.state == "unavailibe"
        puts "Dziękujemy za zwrot książki."
        book.state = "availible"
        book.return_time = Time.new
        puts "Książka była trzymana #{(book.borrow_time-book.return_time).to_i/86400} dni."
      elsif book.title == book_title && book.state == "availible"
        puts "Ta książka została już zwrócona."
      end
    end
  end

  def view_list_of_books_borrowed_by_reader(reader_name)
    puts "Nie ma u nas takiego czytelnika." if list_of_readers.any? { |reader| reader.name == reader_name } == false
    list_of_readers.any? do |reader|
      if reader.name == reader_name && reader.borrow_list.empty? == false
        puts "Czytelnik #{reader.name} ma aktualnie wypożyczone książki:"
        reader.borrow_list.each { |book| puts "Tytuł: #{book.title}, Autor: #{book.author}, Data wypożyczenia: #{book.borrow_time}." }
      elsif reader.name == reader_name && reader.borrow_list.empty? == true
        puts "Czytelnik #{reader.name} nie ma aktualnie wypożyczonych książek."
      end
    end
  end

  def access_to_view_list_of_books
    self.view_list_of_books
  end

  protected
  def view_list_of_books
    list_of_books.each { |book| puts "Tytuł: #{book.title}, Autor: #{book.author}, Status: #{book.state}." }
  end

end


library = Library.new
library.add_book(Book.new("Napoje na bazie chmielu","Kobra Chmielowa","availible"))
library.add_book(Book.new("Malibu - drink czy miasto","Santiago Baccardi","availible"))
library.add_book(Book.new("Stylizacja włosów u kundli", "Radosław Mrożek","availible"))
library.add_book(Book.new("Jak wychować mądrego kundla.","Radosław Mrożek","availible"))
library.add_book(Book.new("Kundel od A do Z", "Radosław Mrożek","availible"))
library.add_book(Book.new("Encyklopedia Ameb", "Andrzej Ameba","availible"))
library.add_book(Book.new("ABC dodatków do Pizzy", "Gianiluggi Knurro","availible"))
library.add_book(Book.new("Technorattan - przyszłość, która powinna być przeszłością", "Radosław Mrożek","availible"))
library.add_book(Book.new("Ogniem i Pieczeń", "Roban Makłowicz","availible"))
library.add_book(Book.new("Seksowne warzywa", "Madda Gessler","availible"))

john = Reader.new("John Lemon")
janusz = Reader.new("Janusz Kowalski")
karyna = Reader.new("Karyna Mól")

library.add_reader(john)
library.add_reader(janusz)
library.add_reader(karyna)

janusz.borrow_book(library,"Encyklopedia Ameb")
library.view_list_of_books_borrowed_by_reader("Janusz Kowalski")
library.view_list_of_books_borrowed_by_reader("Ola Pohorecka")
john.borrow_book(library,"Encyklopedia Ameb")
karyna.borrow_book(library,"Jakaśtam książka")
janusz.return_book(library,"Encyklopedia Ameb")
janusz.borrow_book(library,"Ogniem i Pieczeń")

janusz.view_borrow_history
