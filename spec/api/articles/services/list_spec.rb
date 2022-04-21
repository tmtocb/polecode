RSpec.describe Articles::Services::List do
  subject { described_class.new.call }

  describe '#call' do
    context 'when articles are not present' do
      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when articles are present' do
      let!(:article_1) { create(:article) }
      let!(:article_2) { create(:article, title: 'Second Podcast', short_desc: 'Second Podcast short description', full_desc: 'Second Podcast was released yesterday') }

      it 'returns array of articles' do
        expect(subject).to match_array(
          [
            { id: article_1.id, title: 'Mateusz Podcast', short_desc: 'This is Mateusz Podcast', full_desc: 'Mateusz Podcast is a regular podcast we run' },
            { id: article_2.id, title: 'Second Podcast', short_desc: 'Second Podcast short description', full_desc: 'Second Podcast was released yesterday' }
          ]
        )
      end
    end
  end
end
