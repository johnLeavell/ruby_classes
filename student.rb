require_relative 'patronus'

class Student    
  def initialize
    @name = @name
    @house = @house
    @patronus = @patronus
    @house_members = []
  end

  VALID_HOUSES = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]

  def get_name
    puts "what is your name?"

    while (@name = gets.chomp.capitalize).to_s.empty?
      puts "Missing name, please try again"
      puts "what is your name?"
    end
  end

  def get_house
    puts "What house are you in?"

    @house = gets.chomp.capitalize

    while @house.empty? || !VALID_HOUSES.include?(@house)
      if @house.empty?
        puts "Missing house, please try again"
      else
        puts "Invalid house, please try again"
      end
      puts "What house are you in?"
      @house = gets.chomp
    end
  end

  def add_to_house(house, name)
    @house_members << {@house => @name}
  end

  def get_patronus
    puts "What is your patronus?"
    patronus_name = gets.chomp.downcase

    while patronus_name.empty? || !Patronus::EMOJIS.key?(patronus_name)
      if patronus_name.empty?
        puts "Missing patronus, please try again"
      else
        puts "Invalid patronus, please try again"
      end
      puts "What is your patronus?"
      patronus_name = gets.chomp
    end

    @patronus = Patronus.new(patronus_name)
  end

  def cast_patronus
    puts "Expecto Patronum!"
    puts @patronus.emoji
  end
  
  def to_s
    "#{@name}, from #{@house}, with Patronus #{@patronus} #{@patronus.emoji}"
  end
end

