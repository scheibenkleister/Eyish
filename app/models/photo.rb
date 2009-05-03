class Photo < ActiveRecord::Base
  belongs_to :collection
  acts_as_fleximage
end
