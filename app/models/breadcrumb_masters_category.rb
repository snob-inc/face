class BreadcrumbMastersCategory < ApplicationRecord
  belongs_to :breadcrumb_master
  belongs_to :breadcrumb_category
end
