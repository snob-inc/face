# frozen_string_literal: true

class CreateBreadcrumbMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :breadcrumb_masters do |t|
      t.string :content, null: false, unique: true

      t.timestamps
    end
  end
end
