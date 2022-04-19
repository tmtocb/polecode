RSpec.describe Articles::Commands::Validations::AddContract do
  subject { described_class.new.call(params) }

  describe '#call' do
    context 'proper params' do
      let!(:params) { { title: 'Mateusz Podcast', short_desc: 'This is Mateusz Podcast', full_desc: 'Mateusz Podcast is a regular podcast we run' } }

      it 'returns success result' do
        expect(subject.success?).to eq(true)
      end
    end

    context 'missing params' do
      let(:params) { { title: nil, short_desc: nil, full_desc: nil } }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ title: ["must be filled"], short_desc: ["must be filled"], full_desc: ["must be filled"] })
      end
    end

    context 'missing keys' do
      let(:params) { { } }

      it 'returns failure result with errors' do
        expect(subject.success?).to eq(false)
        expect(subject.errors.to_h).to eq({ title: ["is missing"], short_desc: ["is missing"], full_desc: ["is missing"] })
      end
    end
  end
end
