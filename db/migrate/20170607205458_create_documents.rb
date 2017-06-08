class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :tenant_id
      t.string :user_id
      t.string :customer_id
      t.string :portal_id
      t.string :status
      t.string :sys_state
      t.string :who_created
      t.string :who_updated
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_mobile
      t.string :referral
      t.string :email
      t.string :keywords
      t.boolean :is_processed
      t.belongs_to :person

      t.timestamps
    end
  end
end