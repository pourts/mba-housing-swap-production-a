# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#  listing_id :integer
#

class Bookmark < ApplicationRecord

  belongs_to :creator, :class_name => "User"
  belongs_to :listing

  def bookmark_prop
    the_prop = self.listing
    return the_prop
  end 

end
