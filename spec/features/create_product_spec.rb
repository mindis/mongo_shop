require 'rails_helper'

describe 'Create product feature' do
  it 'creates a product' do
    visit new_product_path

    fill_in 'Name', with: 'Jack Product'
    fill_in 'Price', with: '300'

    click_on 'Create Product'

    expect(page).to have_content 'Product is created successfully.'
  end
end

