Feature: Creating resources
As a user
I want to create a resource
So that I have a representation of the resource in Resourceful.

  Background: 
    Given I am a user of the app
  
  Scenario: Create a resource
    Given I wish to create a resource
     When I supply the data
      And I supply a resource type id
      And the resource type exists
      And the data is validated against the resource type schema
     Then a resource is created

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


