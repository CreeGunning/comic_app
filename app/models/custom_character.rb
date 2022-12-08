class CustomCharacter < ApplicationRecord
    validates :name, presence: true, length: {minium: 3, maximum: 50}
    validates :name, presence: true, length: {minium: 3, maximum: 50}
    belongs_to :user
end
