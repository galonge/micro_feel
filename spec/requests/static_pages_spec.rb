require 'spec_helper'

describe "Static pages" do

	subject { page }

  describe "Home page" do
  	before { visit root_path }

    it { should have_selector('h1', text: 'Micro Feel') }
    it { should have_title(full_title(''))}
    it { should_not have_title('|Home')}
  end

  describe "Help Page" do
  	before { visit help_path }

  	it { should have_selector('h1', text: 'Help')}
  	it { should have_title(full_title('Help'))}
  end

  describe "About Page" do
  	before { visit about_path}

  	it { should have_selector('h1', text: 'About')}
  	it { should have_title(full_title('About'))}
  end

  describe "Contact Page" do
  	before { visit contact_path }
  	it{ should have_selector('h1', text: 'Contact')}
  	it { should have_title(full_title('Contact'))}
  end


  #links test for the layout

  it "should have the right links on the layout" do
  	visit root_path
  	click_link "About"
  	expect(page).to have_title(full_title('About'))
  	click_link "Help"
  	expect(page).to have_title(full_title('Help'))
  	click_link "Contact"
  	expect(page).to have_title(full_title('Contact'))
  	click_link "Home"
  	expect(page).to have_content('Sign up')
  	click_link "Sign up now!"
  	expect(page).to have_title(full_title('Sign up'))
  	click_link "Micro Feel"
  	expect(page).not_to have_title(full_title('Home'))
  end
end
