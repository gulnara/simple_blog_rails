class Item < ActiveRecord::Base
  attr_accessible :title, :body, :image

  	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }

end
