# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  author_id       :integer
#  conversation_id :integer
#

class Message < ApplicationRecord

  belongs_to :author, :class_name => "User"
  belongs_to :conversation

end
