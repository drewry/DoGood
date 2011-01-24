class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :good
  has_many :goods
  has_many :favorites
  
  named_scope :posted_before, lambda { |time_ago| { :conditions => ['created_at   < ?', time_ago] } }
  named_scope :posted_within, lambda { |time_ago| { :conditions => ['created_at   > ?', time_ago] } }
    
  validates :user_id, :presence => true, :length => { :minimum => 1 }
  validates :desc, :presence => true, :length => { :maximum => 120 }
end