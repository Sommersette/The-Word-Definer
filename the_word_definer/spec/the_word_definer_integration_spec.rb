require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("the index page path", {:type => :feature}) do
  it("lets the user visit the form to enter a new word") do
    visit("/")
    click_on("Add A New Word")
    expect(page).to have_content("Please Enter A New Word")
  end
end

describe("the enter new word path", {:type => :feature}) do
  it("allow the user to enter a new word") do
    visit("/word/new")
    fill_in("Please Enter A New Word", :with => "monkey")
    click_button("Submit")
    expect(page).to have_content("monkey")
  end
end

# describe("the index page path", {:type => :feature}) do
#   it("processes the user input and returns correct message if its a palindrome") do
#     visit("/")
#     fill_in("phrase1", :with => "madam")
#     fill_in("phrase2", :with => "anagram")
#     click_button("what am i?")
#     expect(page).to have_content("'madam' is a palindrome")
#   end
# end
