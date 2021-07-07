# your code goes here
class Person 
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account 

    def initialize(name)
        @name = name
        @happiness = 8 
        @hygiene = 8
        @bank_account = 25
    end 

    def hygiene=(number)
        @hygiene = number
        if number >= 10
            @hygiene = 10
        end 
        if number < 0
            @hygiene = 0
        end
    end

    def happiness=(number)
        @happiness = number
        if number >= 10 
            @happiness = 10
        end
        if number < 0
            @happiness = 0
        end  
    end 

    def clean?
        hygiene > 7 
    end 

    def happy?
        happiness > 7 
    end 
    
    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def get_paid(salary)
        self.bank_account += salary
        p "all about the benjamins"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            p "blah blah sun blah rain"
        else p "blah blah blah blah blah"
        end
    end 
end 

