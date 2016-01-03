Feature: Reading resources
As a user
I want to get the data of a resource
So that I have the data for a resource.

  Background: 
    Given I am a user of the app
  
  Scenario: Get a resource
    Given I wish to get a resource
     When I supply the resource id
      And the resource exists
     Then the resource data is returned

  Scenario: The resource cannot be found
    Given I wish to get a resource
     When I supply the resource id
      But The resource does not exist
     Then I recieve an error message "Resource with id <id> not found."
