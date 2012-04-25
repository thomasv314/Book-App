# == Schema Information
#
# Table name: orders
#
#  id           :integer         not null, primary key
#  payment_type :string(255)
#  card         :string(255)
#  date         :date
#  status       :string(255)
#  customer_id  :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :books, :through => :contains
end
