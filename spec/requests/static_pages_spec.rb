require 'spec_helper'

describe "Static Pages" do
  
 describe "Home Page" do

  	it "should have the content 'Social App'" do
  	   visit '/home'
   	end 

    it "should have the base title" do
       visit '/home'
       page.should have_selector('title', :text => "Social App")
    end  

    it "should not have a custom page title" do
       visit '/home'
       page.should_not have_selector('title', :text => '| Home')
    end
 end

 describe "Help Page" do
 
  	it "should have the content 'Help'" do
  	   visit '/help'
       page.should have_selector('h1', :text => 'Help')
  	end 

    it "should have the right title" do
       visit '/help'
       page.should have_selector('title', :text => "Social App | Help")
    end    
  end

 describe "About Page" do

  	it "should have the content 'About'" do
  	   visit '/about'
       page.should have_selector('h1', :text => 'About Us')
  	end 	

    it "should have the right title" do
       visit '/about'
       page.should have_selector('title', :text => "Social App | About Us")
    end    
  end

 describe "Contact" do

    it "should have the first h1 'Contact'" do
       visit '/contact'
       page.should have_selector('h1', :text => 'Contact')
    end   

    it "should have the right title" do
       visit '/contact'
       page.should have_selector('title', :text => "Social App | Contact")
    end    
  end
end

