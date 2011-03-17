class Question < ActiveRecord::Base
	validates :number, :presence => true
	validates :question, :presence => true
	validates :a, :presence => true
	validates :b, :presence => true
	validates :c, :presence => true
	validates :d, :presence => true
	validates :answer, :presence => true
end
