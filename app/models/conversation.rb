# == Schema Information
#
# Table name: conversations
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  listing_id   :integer
#  owner_id     :integer
#  requester_id :integer
#

class Conversation < ApplicationRecord

  belongs_to :requester, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  belongs_to :listing
  has_many :messages, :dependent => :destroy

end
