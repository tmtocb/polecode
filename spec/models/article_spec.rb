RSpec.describe Article do
  describe 'database columns' do
    it { should have_db_column(:title).of_type(:string).with_options(null: false) }
    it { should have_db_column(:short_desc).of_type(:string).with_options(null: false) }
    it { should have_db_column(:full_desc).of_type(:string).with_options(null: false) }
    it { should have_db_column(:published).of_type(:datetime).with_options(null: false) }
  end
end
