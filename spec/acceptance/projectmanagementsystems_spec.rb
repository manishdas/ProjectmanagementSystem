require 'acceptance/acceptance_helper'

feature "ProjectManagementSystems", %q{
  In order to have project name
  As an author
  I want to create and manage projects
} do

  background do
    @project = Project.create!(:name => "PMS")
  end

  scenario "ProjectManagementSystems index" do
    visit 'projectmanagementsystems_path'
    page.should have_content("PMS")
  end

end

