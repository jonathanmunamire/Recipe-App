require 'rails_helper'

RSpec.describe 'Shopping List', type: :system do
  describe 'list shopping lists' do
    it 'shows the right content' do
      visit shopping_list_index_path
      expect(page).to have_content('Shopping List')
    end
  end
end
