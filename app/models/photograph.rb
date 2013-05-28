class Photograph < ActiveRecord::Base
  
  belongs_to :project
  
  attr_accessible :project_id, :aperture, :caption, :coolness, :discontinued, :f_stop, :featured, :filename, :flash, :focal_length, :gps, :iso, :lens, :make, :model, :path, :photographed, :shutter
  validates_presence_of :path, :filename

end
