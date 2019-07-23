class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save,age_to_save)
		@email = email_to_save
		@age = age_to_save
		puts "Here is his email and his age"
		@@all_users << self
	end

	def show_self
		puts self
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(email)
		@@all_users.each do|user|
			if user.email == email
				return user
			end
		end
		puts("no user has this email")
		return false
	end
end