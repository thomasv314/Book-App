# == Schema Information
#
# Table name: books
#
#  id           :integer         not null, primary key
#  isbn         :string(255)
#  title        :string(255)
#  subject      :string(255)
#  authors      :string(255)
#  price        :decimal(, )
#  stock        :integer
#  publisher_id :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Book < ActiveRecord::Base
  belongs_to :publisher

end
