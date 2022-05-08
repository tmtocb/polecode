RSpec.describe User do
  describe 'database columns' do
    it { should have_db_column(:email).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:reset_password_token).of_type(:string).with_options(null: true) }
    it { should have_db_column(:reset_password_sent_at).of_type(:datetime).with_options(null: true) }
    it { should have_db_column(:remember_created_at).of_type(:datetime).with_options(null: true) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:first_name).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:last_name).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:nickname).of_type(:string).with_options(null: false, default: "") }
  end

  describe 'database indexes' do
    it { should have_db_index(:email).unique(true) }
    it { should have_db_index(:reset_password_token).unique(true) }
  end
end
