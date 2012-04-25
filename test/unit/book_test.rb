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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
