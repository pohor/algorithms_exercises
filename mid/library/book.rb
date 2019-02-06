class Book
attr_accessor :title, :author, :state, :borrow_time, :return_time
  def initialize(title,author,state)
    self.title = title
    self.author = author
    self.state = state
    self.borrow_time = 0
    self.return_time = 0
  end
end
