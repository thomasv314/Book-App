# == Schema Information
#
# Table name: publishers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  city       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
