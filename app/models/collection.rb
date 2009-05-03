class Collection < ActiveRecord::Base
  has_many :photos

  validates_presence_of :caption

  def photo
    photos.first
  end
end
