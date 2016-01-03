Feature: Creating a resource type
As a user
I want to create a resource type
So that I can create resources.

  Background: 
    Given I am a user of the app
  
  Scenario: Create a resource type
    Given I wish to create a resource type
     When I supply the data
     Then a resource type is created

  Scenario: No resource type id provided
    Given I wish to create a resource
     When I supply the data
      But I don't supply a resource type id
     Then I recieve an error message "Resource Type identified, please provide the id of an existing resource type."

  Scenario: The resource type cannot be found
    Given I wish to create a resource
     When I supply the data
      And I supply a resource type id
      But The resource type does not exist
     Then I recieve an error message "Resource Type with id <id> not found, check your spelling or create it before adding resources."

  Scenario: The data is invalid
    Given I wish to create a resource
     When I supply the data
      And I supply a resource type id
      And the resource type exists
      But the data is not validated against the resource type schema
     Then I recieve an error message "Suppliod data failed validation against the Resource Type schema."
