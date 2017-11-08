class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    # (MM) fixed lines 3-4; be careful to type the code EXACTLY as indicated--
    # syntax errors are easily avoided this way
end
