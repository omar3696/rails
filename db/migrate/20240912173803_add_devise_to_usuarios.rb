# frozen_string_literal: true

class AddDeviseToUsuarios < ActiveRecord::Migration[7.2]
  def change
    change_table :usuarios do |t|
      ## Database authenticatable
      unless column_exists?(:usuarios, :email)
        t.string :email,              null: false, default: ""
      end
      unless column_exists?(:usuarios, :encrypted_password)
        t.string :encrypted_password, null: false, default: ""
      end

      ## Recoverable
      unless column_exists?(:usuarios, :reset_password_token)
        t.string   :reset_password_token
      end
      unless column_exists?(:usuarios, :reset_password_sent_at)
        t.datetime :reset_password_sent_at
      end

      ## Rememberable
      unless column_exists?(:usuarios, :remember_created_at)
        t.datetime :remember_created_at
      end

      ## Trackable
      # Uncomment if needed
      # unless column_exists?(:usuarios, :sign_in_count)
      #   t.integer  :sign_in_count, default: 0, null: false
      # end
      # unless column_exists?(:usuarios, :current_sign_in_at)
      #   t.datetime :current_sign_in_at
      # end
      # unless column_exists?(:usuarios, :last_sign_in_at)
      #   t.datetime :last_sign_in_at
      # end
      # unless column_exists?(:usuarios, :current_sign_in_ip)
      #   t.string   :current_sign_in_ip
      # end
      # unless column_exists?(:usuarios, :last_sign_in_ip)
      #   t.string   :last_sign_in_ip
      # end

      ## Confirmable
      # Uncomment if needed
      # unless column_exists?(:usuarios, :confirmation_token)
      #   t.string   :confirmation_token
      # end
      # unless column_exists?(:usuarios, :confirmed_at)
      #   t.datetime :confirmed_at
      # end
      # unless column_exists?(:usuarios, :confirmation_sent_at)
      #   t.datetime :confirmation_sent_at
      # end
      # unless column_exists?(:usuarios, :unconfirmed_email)
      #   t.string   :unconfirmed_email
      # end

      ## Lockable
      # Uncomment if needed
      # unless column_exists?(:usuarios, :failed_attempts)
      #   t.integer  :failed_attempts, default: 0, null: false
      # end
      # unless column_exists?(:usuarios, :unlock_token)
      #   t.string   :unlock_token
      # end
      # unless column_exists?(:usuarios, :locked_at)
      #   t.datetime :locked_at
      # end

      # Uncomment if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :usuarios, :email,                unique: true unless index_exists?(:usuarios, :email)
    add_index :usuarios, :reset_password_token, unique: true unless index_exists?(:usuarios, :reset_password_token)
    # Uncomment if needed
    # add_index :usuarios, :confirmation_token,   unique: true unless index_exists?(:usuarios, :confirmation_token)
    # add_index :usuarios, :unlock_token,         unique: true unless index_exists?(:usuarios, :unlock_token)
  end
end
