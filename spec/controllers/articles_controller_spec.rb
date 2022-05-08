RSpec.describe ArticlesController do
  describe 'GET #list' do
    it 'returns 200 status' do
      get :list
      expect(response.status).to eq(200)
    end
  end
end
