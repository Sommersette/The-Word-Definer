require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("the index page path", {:type => :feature}) do
  before do
    Word.clear()
  end
  it("lets the user visit the form to enter a new word") do
    visit("/")
    click_on("Add A New Word")
    expect(page).to have_content("Please Enter A New Word")
  end
end

describe("the enter new word path", {:type => :feature}) do
  before do
    Word.clear()
  end
  it("allows the user to enter a new word") do
    visit("/word/new")
    fill_in("Please Enter A New Word", :with => "monkey")
    click_button("Submit")
    expect(page).to have_content("monkey")
  end
end

describe("the click on the new word path", {:type => :feature}) do
  before do
    Word.clear()
  end
  it("allows the user to click on the newly created word") do
    visit("/word/new")
    fill_in("Please Enter A New Word", :with => "monkey")
    click_button("Submit")
    click_on("monkey")
    expect(page).to have_content("Add A New Definition")
  end
end

describe("the click on the new word path", {:type => :feature}) do
  before do
    Word.clear()
  end
  it("allows the user to click on the newly created word") do
    visit("/word/new")
    fill_in("Please Enter A New Word", :with => "monkey")
    click_button("Submit")
    click_on("monkey")
    click_on("Add A New Definition")
    expect(page).to have_content("Please Enter A New Definition")
  end
end

describe("the click on the new word path", {:type => :feature}) do
  before do
    Word.clear()
  end
  it("allows the user to click on the newly created word") do
    visit("/word/new")
    fill_in("Please Enter A New Word", :with => "monkey")
    click_button("Submit")
    click_on("monkey")
    click_on("Add A New Definition")
    visit("1/definition/new")
    fill_in('definition', with: "a giant rabbit")
    click_button("Submit")
    expect(page).to have_content("Your Definition Has Been Added!")
  end
end
