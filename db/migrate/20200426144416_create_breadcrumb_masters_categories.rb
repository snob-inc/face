class CreateBreadcrumbMastersCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :breadcrumb_masters_categories do |t|
      t.references  :breadcrumb_master, index: true, foreign_key: true
      t.references  :breadcrumb_category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
