class Student    
  def initialize
    @name = ""
    @house = ""
  end

  def get_name
    puts "What is your name?"
    @name = gets.chomp
  end

  def get_house
    puts "What house are you in?"
    @house = gets.chomp
  end

  def get_student
    student = {}
    student[:name] = get_name
    student[:house] = get_house

    student 
  end


  def to_s
    "#{@name}, from #{@house}"
  end
  
end
    
student = Student.new
student.get_student


puts student
