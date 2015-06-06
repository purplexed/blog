class Post < ActiveRecord::Base
	validates :title, :body, :presence => true
	validates :title, :body, :uniqueness => true
end