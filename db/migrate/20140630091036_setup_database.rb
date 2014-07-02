class SetupDatabase < ActiveRecord::Migration

  def change
    create_table :programs do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end

    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.references :program

      t.timestamps
    end

    create_table :groups do |t|
      t.string :name

      t.timestamps
    end

    create_table :contacts_groups do |t|
      t.integer :group_id
      t.integer :contact_id

      t.timestamps
    end

  end
end
