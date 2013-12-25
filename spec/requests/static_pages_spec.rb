require 'spec_helper'
describe "Static pages" do
let(:app_title_prefix) {'Tuta - '}

  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end
    it " title should be be Tuta'" do
      visit '/static_pages/home'
      expect(page).to have_title("Tuta")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(" - Home")
    end
  end
   describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
     it " title should contain 'Tuta - Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{app_title_prefix}Help")
    end
  end
   describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it " title should contain 'Tuta - About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{app_title_prefix}About Us")
    end
  end
  describe "Contact Page" do
    it "should have the content 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_content('Contacts')
    end
    it " title should contain 'Tuta - Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_title("#{app_title_prefix}Contacts")
    end
  end
end
