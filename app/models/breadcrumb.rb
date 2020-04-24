# frozen_string_literal: true

class Breadcrumb < ApplicationRecord
  belongs_to :breadcrumb_master
  belongs_to :user
  enum content_status: {
    open: 0,
    close: 1,
    draft: 2,
    garbage: 3
  }
end
