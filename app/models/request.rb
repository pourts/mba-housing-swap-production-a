# == Schema Information
#
# Table name: requests
#
#  id           :integer          not null, primary key
#  end_date     :date
#  metro_area   :string
#  start_date   :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  requester_id :integer
#

class Request < ApplicationRecord

  belongs_to :requester, :class_name => "User"


end
