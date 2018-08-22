class Phrase < ApplicationRecord
  belongs_to  :state
  belongs_to :user
  has_many :comments
  has_many :ratings
  validate :not_empty
  validates :content, uniqueness: true

  attr_writer :region_id

  def avg_rating
    sum = 0.0
    ratings.each do |rating|
      sum += rating.rating
    end
    (sum / ratings.count.to_f).round(2)
  end

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
