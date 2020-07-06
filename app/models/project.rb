class Project < ApplicationRecord
  belongs_to :roadwork

  validates :name, presence: true, uniqueness: { scope: :roadwork_id }
  validates :image_url, presence: true
  validates_format_of :image_url, :with => /(https?:\/\/.*\.(?:png|jpg|jpeg|img|gif))/i, message: " Bien essayé mais ce n'est pas un IMAGE !"
end
