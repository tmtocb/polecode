RSpec.describe Articles::Entities::Article do
  let!(:article) { create(:article) }

  subject { described_class.new(article) }

  context 'delegated attributes' do
    it 'returns values' do
      subject
      expect(Article.last).to have_attributes(id: article.id, title: 'Mateusz Podcast', short_desc: 'This is Mateusz Podcast', full_desc: 'Mateusz Podcast is a regular podcast we run')
    end
  end
end
