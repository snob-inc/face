class BreadcrumbCategory < ApplicationRecord
  has_many :breadcrumb_masters_categories, dependent: :nullify
  has_many :breadcrumb_masters, through: :breadcrumb_masters_categories
end
