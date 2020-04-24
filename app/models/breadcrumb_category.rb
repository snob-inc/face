# frozen_string_literal: true

class BreadcrumbCategory < ApplicationRecord
  belongs_to :breadcrumb_master
end
