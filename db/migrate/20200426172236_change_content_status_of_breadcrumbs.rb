class ChangeContentStatusOfBreadcrumbs < ActiveRecord::Migration[6.0]
  def change
    change_column_default :breadcrumbs, :content_status, from: nil, to: 1
  end
end
