class EventCreator
	class Event
		attr_accessor :stardate, :duration, :title, :attendees
		@@all_users = []
		def initialize(agenda,beginning,time,email)
			@stardate = Time.parse(beginning)
			@duration = time
			@title = agenda
			@attendees = [email]
			puts "the details of the event"
			@my_event = Event.new(@@event1,@@start_date1,@@duration1,@@email1)
			@@all_users << self
		end

		def self.all
			return @@all_users
		end
		
		def postpone_24h
			@stardate = @stardate + 60*60*24
		end

		def end_date
			@end_date = @stardate +@duration*60
			return @end_date
		end

		def is_past?
			if @stardate < Time.now
				puts "the event has passed"
				return true
			else
				return false
			end		
		end

		def is_future?
			if @stardate > Time.now
				puts "the event is coming soon"
				return true
			else
				return false
			end		
		end

		def is_soon?
		 	if @stardate < Time.now + 60*30
		 		puts "coming soon"
		 		return true
		 	else
		 		return false
		 	end		
		end

		def to_s
			puts ">Title: #{@title}"
			puts ">Start date: #{@stardate}"
			puts ">Duration: #{@duration}"
			puts ">Guests: #{@attendees.join(" , ")}"
		end
	end
	
			puts "Salut, tu veux créer un événement ? Cool !"
			puts "Commençons. Quel est le nom de l'événement ?"
			print ">"
			@@event1 = gets.chomp.to_s(agenda)
			puts "Super. Quand aura-t-il lieu ?"
			print ">"
			@@start_date1 = gets.chomp(beginning)
			puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
			print '>'
			@@duration1 = gets.chomp.to_i(time)
			puts "Génial. Qui va participer ? Balance leurs e-mails"
			print '>'
			@@email1 = [gets.chomp(email)]
			puts "Super,c'est noté, ton évènement a été créé !"
			
			
			
			
end