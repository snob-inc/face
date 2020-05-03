class Breadcrumb < ApplicationRecord
  belongs_to :breadcrumb_master
  belongs_to :user
  # enum content_status: [:close, :open, :draft, :garbage]
end
