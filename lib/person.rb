class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(num)
        @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end


    def happy?
        if @happiness > 7
            true
        else false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        song = "♪ Rub-a-dub just relaxing in the tub ♫"
        self.hygiene += 4
        song
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        name.happiness +=3
        self.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if  topic == 'politics'
            name.happiness -= 2 
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        

        elsif  topic == 'weather'
            name.happiness += 1 
            self.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

    

 
end
