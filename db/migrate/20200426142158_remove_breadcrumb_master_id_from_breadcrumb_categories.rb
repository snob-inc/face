class RemoveBreadcrumbMasterIdFromBreadcrumbCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :breadcrumb_categories, :breadcrumb_master_id, :bigint
  end
end
