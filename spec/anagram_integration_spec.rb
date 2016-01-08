require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram change path', {:type => :feature}) do
  it('processes the user input and returns matching anagrams') do
    visit('/')
    fill_in('word', :with => "fox")
    fill_in('matching', :with => "ofx kgk xfo asd")
    click_button('send')
    #expect(page).to have_content("ofx xfo")
  end
end
