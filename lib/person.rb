require "pry"
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene



    ##################initialize

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def name
        @name   
    end
    def bank_account
        @bank_account
    end
    def happiness
        @happiness.clamp(0,10)
    end
    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
         @happiness > 7
    end
    def clean?
        @hygiene > 7
   end

   def get_paid(salary)
    @bank_account += salary
    p "all about the benjamins"
   end

   def take_bath
    self.hygiene += 4
    p "♪ Rub-a-dub just relaxing in the tub ♫"
   end
   def work_out
    self.happiness += 2
    self.hygiene -= 3
    p "♪ another one bites the dust ♫"
   end
   def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
   end
   def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
   end




    # binding.pry
    # 0
end
