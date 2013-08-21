require 'spec_helper'
	
describe "Static pages" do

let (:title_text ) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do

  	before { visit root_path }

    it { should have_content ('sample app') }
    it { should have_title ('' ) }
  	it { should_not have_title('| Home') }
  end

  describe "Help page" do

  	before { visit help_path }

    it { should have_content ('sample app') }
    it { should have_title ("#{title_text} | Help" ) }
  end

  
  describe "About page" do

  	before { visit about_path }

    it { should have_content ('sample app') }
    it { should have_title ("#{title_text} | About" ) }

  end

  describe "Contact page" do

  	before { visit contact_path }

    it { should have_content ('sample app') }
    it { should have_title ("#{title_text} | Contact Us" ) }
  end
end
