require 'spec_helper'

feature 'Purpose criteria: ' do
  background do
    visit '/'
  end

  scenario 'Dropdown list: default purpose value' do
    within('div.calculatorGroup') do
      expect(page).to have_select('#purpose', selected: 'Freie Verwendung')
    end
  end

# find('#duration' :text => ' 12 Monate ').click

  scenario 'Switched to: Gebrauchtfahrzeug' do
    select('Option 1', :from => 'Gebrauchtfahrzeug')
    expect(page).to have_select('dropdown', selected: 'Option 1')
  end

  scenario 'Switched to: Neufahrzeug' do
      select('Option 2', :from => 'dropdown')
      expect(page).to have_select('dropdown', selected: 'Option 2')
    end
#... 13 available options, list thema lls
end
