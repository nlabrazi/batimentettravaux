class Roadwork < ApplicationRecord

  has_many :projects, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
  validates_format_of :banner_url, :with => /(https?:\/\/.*\.(?:png|jpg|jpeg|img|gif))/i, message: " Bien essayé mais ce n'est pas un IMAGE !"

end
