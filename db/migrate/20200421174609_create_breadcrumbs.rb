# frozen_string_literal: true

class CreateBreadcrumbs < ActiveRecord::Migration[6.0]
  def change
    create_table :breadcrumbs do |t|
      t.references :breadcrumb_master, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :content, null: false
      t.integer :content_status, null: false, limit: 1

      t.timestamps
    end
  end
end
