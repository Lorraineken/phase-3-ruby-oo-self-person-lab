
class Person
     attr_reader :name
     attr_accessor :bank_account 
     attr_writer :happiness, :hygiene
     

    def initialize(name, bank_account = 25, happiness = 8 ,hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness
        if (@happiness < 0)
            self.happiness = 0
        elsif(@happiness > 10)
            self.happiness = 10
        end
        @happiness
    end
    
    def hygiene
        if (@hygiene < 0)
            self.hygiene = 0
        elsif(@hygiene > 10)
            self.hygiene = 10
        end
        @hygiene
    end
    
    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def call_friend(friend)
       self.happiness +=3
       friend.happiness +=3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
       
    def start_conversation(friend,topic)
        if (topic == "politics")

            self.happiness -=2
            friend.happiness -=2

           return "blah blah partisan blah lobbyist"

        elsif (topic == "weather")

            self.happiness +=1
            friend.happiness +=1

            return "blah blah sun blah rain"
        
        end

        return "blah blah blah blah blah"
    end
    
end

