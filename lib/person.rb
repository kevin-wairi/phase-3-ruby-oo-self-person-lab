# your code goes here
class Person    
    attr_accessor :bank_account , :happiness ,:hygiene
    attr_reader :name 
    # attr_writer :value

    def initialize(name)
        @name = name
        @happiness  = 8
        @hygiene = 8
        @bank_account = 25
    end
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def happiness=(value)
        @happiness = value  > 10 ? 10 :value < 0 ? 0 : value
    end
    def hygiene=(value)
        @hygiene = value > 10 ? 10 : value < 0 ? 0 : value

    end

    def happy?
        happiness > 7 
    end
    def clean?
        hygiene > 7
    end
    def get_paid(amount)
        @amount = amount
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person,topic)
        if topic == 'politics'
             self.happiness -=2
            person.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
             self.happiness +=1
            person.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        
    end

end
# stella = Person.new("stella")
# stella.happiness = 9