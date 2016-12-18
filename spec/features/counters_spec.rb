require 'rails_helper'

RSpec.feature "Counters", type: :feature do
  scenario "click butons" do
    visit root_path
    expect(page).to have_content 'Welcome#index'
    expect(page).to have_content "Clicked: 10 times"

    click_button '+'
    expect(page).to have_content "Clicked: 11 times"

    click_button '-'
    expect(page).to have_content "Clicked: 10 times"

    click_button 'Increment if odd'
    expect(page).to have_content "Clicked: 10 times"

    click_button 'Increment async'
    expect(page).to have_content "Clicked: 11 times"

    click_button 'Increment if odd'
    expect(page).to have_content "Clicked: 12 times"
  end
end
