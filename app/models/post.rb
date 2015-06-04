class Post < ActiveRecord::Base
	validates :title, :body, presence: true
	validates :title, :body, duplicate: false
end