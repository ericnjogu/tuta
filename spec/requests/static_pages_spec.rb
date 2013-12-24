require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end
    it " title should contain 'Tuta - Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Tuta - Home')
    end
  end
   describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
     it " title should contain 'Tuta - Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Tuta - Help')
    end
  end
   describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it " title should contain 'Tuta - About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Tuta - About Us')
    end
  end
end
