class BreadcrumbCategory < ApplicationRecord
  has_many :breadcrumb_masters_categories
  has_many :breadcrumb_masters, through: :breadcrumb_masters_categories
end
