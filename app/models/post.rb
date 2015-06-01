class Post < ActiveRecord::Base
	validates :title, :body, presence: true, duplicate: false
end
