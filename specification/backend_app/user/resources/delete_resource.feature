Feature: Deleting resources
As a user
I want to delete a resource
So that there is no record of the resource in Resourceful.

  Background: 
    Given I am a user of the app
  
  Scenario: Delete a resource
    Given I wish to delete a resource
     When I supply the resource id
      And the resource exists
     Then the resource is deleted

  Scenario: The resource cannot be found
    Given I wish to delete a resource
     When I supply the resource id
      But The resource does not exist
     Then I recieve an error message "Resource with id <id> not found."
