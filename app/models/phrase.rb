class Phrase < ApplicationRecord
  has_many :comments
  belongs_to  :state
  belongs_to :user
  attr_accessor :region_id
  validate :not_empty

  def region
    region = Region.find(region_id)
    region
  end

  def not_empty
    if self.content.delete(' ').empty?
      self[:content].errors << "Phrase cannot be empty or be comprised of solely spaces"
    end
  end

end
