class Reader
  attr_accessor :name, :borrow_list, :borrow_history, :card_id
  def initialize(name)
    self.name = name
    self.borrow_list = []
    self.borrow_history = []
    self.card_id = self.get_card_id
  end


  def borrow_book(library,book_title)
    library.lend_book(book_title)
    borrow_list << library.list_of_books.find {|book| book.title == book_title }
    borrow_history << library.list_of_books.find {|book| book.title == book_title }
  end

  def return_book(library,book_title)
    library.get_book_back(book_title)
    borrow_list.delete_if { |book| book.title == book_title }
    (borrow_history.find {|book| book.title == book_title }).return_time = Time.new
  end

  def view_borrow_history
    puts "Rekordy wypożyczeń:"
    self.borrow_history.each do |book|
      if book.return_time == 0
        puts "Tytuł: #{book.title}, Autor: #{book.author}, czas przetrzymywania: #{(Time.now - book.borrow_time).to_i/86400} dni."
      else
        puts "Tytuł: #{book.title}, Autor: #{book.author}, czas przetrzymywania: #{(book.borrow_time-book.return_time).to_i/86400} dni."
      end
    end
  end

#  private

  def get_card_id
    alph = ("aaaa".."zzzz").to_a
    self.card_id ||= (alph[rand(456976)])+((rand(100000)).to_s)
  end

end
