require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Micro Feel'" do
  		visit '/static_pages/home'
      expect(page).to have_content('Micro Feel')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Micro Feel | Home")
    end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("Micro Feel | Help")
    end
  end

  describe "About Page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "should have the title 'About'" do
    	visit '/static_pages/about'
    	expect(page).to have_title("Micro Feel | About")
    end
  end

  describe "Contact Page" do
  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content("Contact")
  	end

  	it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("Micro Feel | Contact")
  	end
  end
end
