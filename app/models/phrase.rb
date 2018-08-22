class Phrase < ApplicationRecord
  has_many :comments
  belongs_to  :state
  belongs_to :user
  validate :not_empty
  validates :content, uniqueness: true

  attr_writer :region_id

  def region_id
    state.region.id
  end
  
  def region_name
    state.region.name
  end

  def not_empty
    if self.content.delete(' ').empty?
      self[:content].errors << "Phrase cannot be empty or be comprised of solely spaces"
    end
  end

end
