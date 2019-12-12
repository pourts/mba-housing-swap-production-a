# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  fname           :string
#  gender          :string
#  lname           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  validates :fname, :presence => true
  validates :lname, :presence => true
  has_secure_password

  has_many :bookmarks, :foreign_key => "creator_id", :dependent => :destroy
  has_one :listing, :foreign_key => "owner_id", :dependent => :destroy
  has_one :request, :foreign_key => "requester_id", :dependent => :destroy
  has_many :conversations, :foreign_key => "requester_id", :dependent => :nullify
  has_many :messages, :foreign_key => "author_id", :dependent => :nullify
  has_many :leads, :class_name => "Conversation", :foreign_key => "owner_id", :dependent => :nullify

  # def fname
  #   the_user = User.where({ :id => :id_from_path })
  # end 

  # def has_listing
  #   if @current_user.listing.present
  #     return true
  #   else
  #     return false 
  #   end 
  # end
  
  # def user_bookmark_ids
  #   self.bookmarks.
  # end 

end
