require 'spec_helper'

feature 'Visit Check24-Kredit Home Page ' do
  background do
    visit '/'
  end

  scenario 'Verify title presence' do
    expect(page).to have_title('CHECK24')
    expect(page).to have_css('h1', text: 'Kreditvergleich mit Sofort-Auszahlung')
  end

  scenario 'Verify search criteria presence' do
    within('div.calculatorGroup') do
      expect(page).to have_text('Wie viel?')
      expect(page).to have_text('Wie lange?')
      expect(page).to have_text('Wofür?')
    end
  end

  scenario 'Verify filtering is possible' do
    within('div.headerProducts') do
      expect(page).to have_text('Filter')
      expect(page).to have_text('Sortieren')
    end
  end
  scenario 'Verify offers are available' do
    expect(page).to have_css('.products')
  end

end
