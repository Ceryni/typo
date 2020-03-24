Feature: Manage Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to manage categories on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully view categories
    Given I am on the new category page
    Then I should see the Categories Header
    And the "category_name" field should be empty
    And the "category_keywords" field should be empty
    And the "category_permalink" field should be empty
    And the "category_description" field should be empty
    And I should see "Bananarama"
    
  Scenario: Successfully save new category
    Given I am on the new category page
    When I fill in "category_name" with "CoronaTime"
    And I fill in "category_keywords" with "pandemic"
    And I fill in "category_permalink" with ""
    And I fill in "category_description" with "Anything related to Covid-19"
    And I press "Save"
    Then I should see "CoronaTime"
  
  Scenario: Successfully edit category
    Given I am on the new category page
    When I follow "Bananarama"
    Then the "category_name" field should be "Bananarama"
    And the "category_keywords" field should be "fruit"
    And the "category_permalink" field should be "bananarama"
    And the "category_description" field should be "Banana Time"
    And I fill in "category_keywords" with "fruit, bread, peanutbutter"
    And I press "Save"
    And I follow "Bananarama"
    Then the "category_keywords" field should be "fruit, bread, peanutbutter"
  
  Scenario: Successfully delete a category
    Given I am on the new category page
    When I follow "Delete"
    And I press "delete"
    Then I should not see "Bananarama"