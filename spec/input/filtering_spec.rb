require 'spec_helper'

feature 'Filtering criteria: ' do
  background do
    visit '/'
  end

  scenario 'test default value' do
    expect(page).to have_css('.openFilter.ng-tns-c29-3')
    expect(page).to have_css('.openSort.ng-tns-c29-3')
  end

  scenario 'test filter menu' do
    find('.openFilter.ng-tns-c29-3').click
    expect(page).to have_css('.optionsFilter.ng-tns-c29-3.ng-trigger.ng-trigger-enterTrigger')
  end

  scenario 'test sorting menu' do
    find('.openSort.ng-tns-c29-3').click
    expect(page).to have_css('.sortingBox.ng-tns-c29-3.ng-trigger.ng-trigger-enterTrigger.ng-star-inserted')
  end

end
