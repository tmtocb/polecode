RSpec.describe Articles::Commands::Add do
  subject { described_class.new(params).call }

  describe '#call' do
    context 'valid params' do
      let!(:params) { { title: 'Mateusz Podcast', short_desc: 'This is Mateusz Podcast', full_desc: 'Mateusz Podcast is a regular podcast we run' } }

      it 'persists article' do
        expect{ subject }.to change{ Article.count }.by(1)
      end

      it 'adds proper attributes' do
        subject
        expect(Article.last).to have_attributes(title: 'Mateusz Podcast', short_desc: 'This is Mateusz Podcast', full_desc: 'Mateusz Podcast is a regular podcast we run')
      end
    end

    context 'invalid params' do
      let(:params) { {} }

      it 'raises validation exception' do
        expect{ subject }.to raise_exception(Exceptions::ValidationError)
      end
    end
  end
end
