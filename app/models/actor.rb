class Actor < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :dob }

  has_many :movies, :through => :characters
  has_many :characters, dependent: :destroy
end
