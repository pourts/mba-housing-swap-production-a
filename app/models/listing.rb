# == Schema Information
#
# Table name: listings
#
#  id                :integer          not null, primary key
#  address           :string
#  available         :boolean
#  baths             :integer
#  beds              :integer
#  details           :string
#  elevator          :boolean
#  end_date          :date
#  floor             :integer
#  gender_preference :string
#  laundry           :string
#  metro_area        :string
#  pets              :boolean
#  private_bath      :boolean
#  rent              :integer
#  roomate           :boolean
#  start_date        :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  owner_id          :integer
#

class Listing < ApplicationRecord

  validates(:address, { :presence => true})
  validates(:baths, { :presence => true})
  validates(:beds, { :presence => true})
  validates(:end_date, { :presence => true})
    # validate end date is after start date
  validates(:laundry, { :presence => true})
  validates(:metro_area, { :presence => true})
  validates(:rent, { :presence => true})
  validates(:start_date, { :presence => true})
  
  belongs_to :owner, :class_name => "User"
  has_many :bookmarks, :dependent => :nullify
  has_many :conversations, :dependent => :nullify
  
  def listers_email
    the_owner = User.where({ :id => @listing.owner_id }).at(0)
  
  end 

end
