# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    title = 'harry potter'
    author = 'J.K. Rowling'
    published = Date.new(2022, 9, 15)
    price = 19.99

    # 1: title should show up on books page
    scenario 'valid inputs - title on directory page' do
        visit new_book_path
        fill_in 'Title', with: title
        fill_in 'Author', with: subject
        fill_in 'Published', with: published
        fill_in 'Price', with: price
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content(title)
    end

    # 2: title should show up on book 2 page (since it's the second book inserted in test)
    scenario 'valid inputs - title' do
        visit new_book_path
        fill_in 'Title', with: title
        fill_in 'Author', with: subject
        fill_in 'Published', with: published
        fill_in 'Price', with: price
        click_on 'Create Book'
        visit books_url('2')
        expect(page).to have_content(title)
    end

    # 3: author should show up on book 3 page (since it's the third book inserted in test)
    scenario 'valid inputs - author' do
        visit new_book_path
        fill_in 'Title', with: title
        fill_in 'Author', with: subject
        fill_in 'Published', with: published
        fill_in 'Price', with: price
        click_on 'Create Book'
        visit books_url('3')
        expect(page).to have_content(author)
    end

    # 4: published should show up on book 4 page (since it's the fourth book inserted in test)
    scenario 'valid inputs - published' do
        visit new_book_path
        fill_in 'Title', with: title
        fill_in 'Author', with: subject
        fill_in 'Published', with: published
        fill_in 'Price', with: price
        click_on 'Create Book'
        visit books_url('4')
        expect(page).to have_content(date.year)
        expect(page).to have_content(date.month)
        expect(page).to have_content(date.day)
    end

    # 5: author should show up on book 5 page (since it's the fifth book inserted in test)
    scenario 'valid inputs - price' do
        visit new_book_path
        fill_in 'Title', with: title
        fill_in 'Author', with: subject
        fill_in 'Published', with: published
        fill_in 'Price', with: price
        click_on 'Create Book'
        visit books_url('5')
        expect(page).to have_content(price)
    end
end
