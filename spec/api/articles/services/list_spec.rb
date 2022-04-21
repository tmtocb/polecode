RSpec.describe Articles::Services::List do
  subject { described_class.new.call }

  describe '#call' do
    context 'when articles are not present' do
      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when articles are present' do
      let!(:article_1) { create(:article, :published) }
      let!(:article_2) { create(:article, :not_published, title: 'Second Podcast', short_desc: 'Second Podcast short description', full_desc: 'Second Podcast was released yesterday') }

      it 'returns array of articles' do
        expect(subject).to match_array(
          [
            {
              id: article_1.id,
              title: 'Mateusz Podcast',
              short_desc: 'This is Mateusz Podcast',
              full_desc: 'Mateusz Podcast is a regular podcast we run',
              published: true,
              published_at: article_1.published_at
            },
            {
              id: article_2.id,
              title: 'Second Podcast',
              short_desc: 'Second Podcast short description',
              full_desc: 'Second Podcast was released yesterday',
              published: false,
              published_at: nil
            }
          ]
        )
      end
    end
  end
end
