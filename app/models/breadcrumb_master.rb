class BreadcrumbMaster < ApplicationRecord
  has_many :breadcrumbs, dependent: :nullify
  has_many :breadcrumb_masters_categories, dependent: :nullify
  has_many :breadcrumb_categories, through: :breadcrumb_masters_categories
end
