require 'spec_helper'

feature 'Input criteria: ' do
  background do
    visit '/'
  end

  scenario 'Validate positive input' do
    value = 19999
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(value)
    expect(page).to have_text(value)
  end

  scenario 'Validate negative input gets overwritten' do
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(-value)
    expect(page).to have_text(value)
  end

  scenario 'Validate minimum value is 100 €' do
    min_value = 100
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(99)
    expect(page).to have_text(min_value)
  end

  scenario 'Validate maximum value is 999999 €' do
    max_value = 999999
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(1000000)
    expect(page).to have_text(max_value)
  end

  scenario 'Validate maximum value is 999999 €' do
    rand_text = fdhoMhOvd
    find(:xpath, '//*[@id="c24-content"]/div/app-comparison/app-calculator/div/div/div/div[1]/input').set(rand_text)
    expect(page).not_to have_text(rand_text)
  end
end
