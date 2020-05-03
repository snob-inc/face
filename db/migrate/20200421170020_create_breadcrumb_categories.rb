class CreateBreadcrumbCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :breadcrumb_categories do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
  end
end
