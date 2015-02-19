class Post < ActiveRecord::Base

  # has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }

# paperclip:
  # has_attached_file :portfolio, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :portfolio, :content_type => /\Aimage\/.*\Z/


end
