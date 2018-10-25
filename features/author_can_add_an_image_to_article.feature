@javascript

Feature: Author can add an image to article
    As an author,
        In order to make my articles more appealing,
        I would like to attach an image to the article.

     Scenario: Author enters page and creates an article with an image
      Given I am on the article creation page
      And I fill in "Title" with "My first article"
      And I fill in "Content" with "Content for my first article"
      And I fill in "Author" with "Byggare Bob"
      And I select "History" from "Category"
      And I attach "dummy_image.png" 
      And I click on the "Submit" button
      Then I should see "Article was successfully created."
      And I should see "My first article"
      And I should see "Content for my first article"
      And I should see "History"
      