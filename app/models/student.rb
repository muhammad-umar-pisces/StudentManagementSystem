class Student < ApplicationRecord
	belongs_to :user
	has_one :middle
	has_one :metric
	def self.search(search)
 	if search
 		where(["student_name LIKE ?" , "%#{search}%"])
 		else
 			all
 	end
 	
 end
end
