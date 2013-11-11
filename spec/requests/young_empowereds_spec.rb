require 'spec_helper'

describe "YoungEmpowered" do

  describe "Home page" do
  	before { visit root_path}

    it {should have_content ('Empowerment Program For Young Africans')}
    it {should have_title (full_title(''))}
    it { should_not have_title('| Home') }
  end

  describe "Activities and Volonteers page" do 
    before { visit activitiesandvolunteer_path}
    it{should have_content ('Our Current Projects')}
    it {should have_title (full_title('Activities and Volonteers'))}
  end

  describe "Contact page" do 
    before { visit contact_path}
    it{should have_content ('List of People in charge of our Program')}
    it {should have_title (full_title('Contact'))}
  end


 describe "about us page" do 
    before { visit about_path}
    it{should have_content ('Empowerment Program For Young Africans')}
    it {should have_title (full_title('About'))}
  end


end

