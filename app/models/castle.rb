class Castle < ApplicationRecord
  has_many :dragons, dependent: :destroy
end
