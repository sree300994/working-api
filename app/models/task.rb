class Task < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :due_date
end