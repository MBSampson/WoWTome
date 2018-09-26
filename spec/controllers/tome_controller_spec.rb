require 'rails_helper'

describe TomeController, type: :controller do
  describe 'GET #index' do
    context 'unauthenticated user' do
      it 'tries to visit Tome#index' do
        visit tome_index_path
        expect(page).to have_content('You need to sign in or sign up before continuing.')
      end
    end
  end
end
