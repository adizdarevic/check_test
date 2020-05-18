require 'spec_helper'

feature 'Visit home page ' do
  background do
    visit '/'
  end

  scenario 'Verify url change when submit offer' do
    binding.pry
    url = current_url
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(20000)
    expect(url).not_to eq(current_url)
    expect(page).to have_css('.products')
  end

end
