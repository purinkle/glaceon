# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  content    :text
#

class Page < ActiveRecord::Base
  attr_accessible :content, :title
end
