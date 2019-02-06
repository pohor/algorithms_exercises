class Workshop
  attr_accessor :date, :place, :coach_list, :student_list

  def initialize(date,place)
    self.date = date
    self.place = place
    self.coach_list = []
    self.student_list = []
  end

  def add_participant(name)

    if name.class == Coach
      self.coach_list << name
    else
      self.student_list << name
    end

  end

  def print_details

    separator = "+------------------+"
    puts "The Workshop will take place on the #{date}, #{self.place}. The coaches teaching will be:"
    coach_list.each do |coach|
      puts "#{coach.full_name}, bio: #{coach.bio}, skills: #{coach.skills.join(", ")}"
    end
    puts "The students taking part in the workshops will be:"
    student_list.each do |student|
      puts "#{student.full_name}, reason: #{student.reason}"
    end
  end

end



class Coach < Student
  attr_accessor :bio, :skills

  def initialize(full_name, bio)
    super(full_name, nil)
    self.bio = bio
    self.skills = []
  end

  def add_skill(skill)
    skills << skill
  end

end


class Student
  attr_accessor :full_name, :reason

  def initialize(full_name,reason)
    self.full_name = full_name
    self.reason = reason
  end

end


workshop = Workshop.new("17/11/2018", "Fabryczna 20A")
jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")
workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details
