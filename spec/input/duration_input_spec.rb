require 'spec_helper'

feature 'Duration criteria: ' do
  background do
    visit '/'
  end

  scenario 'Dropdown list: default duration value' do
    within('div.calculatorGroup') do
      expect(page).to have_select('#duration', selected: ' 84 Monate')
    end
  end


  scenario 'Switched to: 12 Monate' do
    select('Option 1', :from => 'dropdown')
    expect(page).to have_select('dropdown', selected: 'Option 1')
  end

  scenario 'Switched to: 18 Monate' do
      select('Option 2', :from => 'dropdown')
      expect(page).to have_select('dropdown', selected: 'Option 2')
    end
#... 13 available options, list thema lls
end
