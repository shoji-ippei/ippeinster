require 'rails_helper'

RSpec.describe StaticPagesController, :type => :request do
  context "Help page" do
    it "should have the content 'Ippeinster'" do
      visit '/help'
      expect(page).to have_content('Ippeinster')
    end
  end
end
