RSpec.describe Articles::Entities::Article do
  subject { described_class.new(article) }

  describe 'delegated attributes' do
    context 'when article was not published' do
      let!(:article) { create(:article, :not_published) }

      it 'returns values' do
        subject
        expect(Article.last).to have_attributes(
          id: article.id,
          title: 'Mateusz Podcast',
          short_desc: 'This is Mateusz Podcast',
          full_desc: 'Mateusz Podcast is a regular podcast we run',
          published: false,
          published_at: nil
        )
      end
    end

    context 'when article was published' do
      let!(:article) { create(:article, :published) }

      it 'returns values' do
        subject
        expect(Article.last).to have_attributes(
          id: article.id,
          title: 'Mateusz Podcast',
          short_desc: 'This is Mateusz Podcast',
          full_desc: 'Mateusz Podcast is a regular podcast we run',
          published: true,
          published_at: article.published_at
        )
      end
    end
  end
end
