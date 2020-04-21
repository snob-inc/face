class Breadcrumb < ApplicationRecord
  belongs_to :breadcrumb_master
  belongs_to :user
end
