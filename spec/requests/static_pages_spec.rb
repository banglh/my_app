require 'spec_helper'

describe "Static Pages" do
  
  let(:base_title) {"My App"}
  
  describe "Home page" do
    
    it "should have the heading 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: "Home")
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "#{base_title}")
    end
    
    it "should not have the specific title 'Home'" do
      visit "/static_pages/home"
      page.should_not have_selector('title', text: "| Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the heading 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "#{base_title} | Help")
    end

  end
  
  describe "About page" do
    
    it "should have the heading 'About'" do
      visit "/static_pages/about"
      page.should have_selector('h1', text: 'About')
    end
    
    it "should have the title 'About'" do
      visit "/static_pages/about"
      page.should have_selector('title', text: "#{base_title} | About")
    end
  end
end
