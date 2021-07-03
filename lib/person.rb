# your code goes here
class Person

  attr_reader :name
attr_accessor :bank_account, :hygiene, :happiness

  def initialize (name)
    @person_name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  # attr_accessor = :bank_account

  def name
    @person_name
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  # hygiene.clamp(0, 10)
  def happiness=(happiness)
   @happiness = happiness.clamp(0, 10)
  end
  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0, 10)
  end

  def happy?
    if happiness > 7
      return true
    else false
    end
  end

  def clean?
    if hygiene > 7
      return true
    else false
    end
  end 

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3 
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    
    elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
    else return "blah blah blah blah blah"
  end


end
end