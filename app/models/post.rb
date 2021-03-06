class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

	validates :content, presence: true
	validates :title, presence: true, uniqueness: true
end
