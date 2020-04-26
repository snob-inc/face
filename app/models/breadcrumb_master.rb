class BreadcrumbMaster < ApplicationRecord
  has_many :breadcrumb_masters_categories
  has_many :breadcrumb_categories, through: :breadcrumb_masters_categories
end
