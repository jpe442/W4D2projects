class AddIndexCatId < ActiveRecord::Migration[5.1]
  def change
    add_column :cat_rental_requests, :cat_id, :integer
    add_column :cat_rental_requests, :start_date, :date
    add_column :cat_rental_requests, :end_date, :date
    add_column :cat_rental_requests, :status, :string, default: 'PENDING', null: false
    add_index :cat_rental_requests, :cat_id
  end
end
