Feature: Updating resources
As a user
I want to Update a resource
So that a resources representational state in Resourceful is current.

  Background: 
    Given I am a user of the app
  
  Scenario: Update a resource
    Given I wish to update a resource
     When I supply the data
      And I supply a resource id
      And the data is different to the existing data
      And the data is validated against the resource type schema
     Then the resource is updated

  Scenario: No resource id provided
    Given I wish to update a resource
     When I supply the data
      But no resource id is supplied
     Then I recieve an error message "No resource id provided."

  Scenario: The resource cannot be found
    Given I wish to update a resource
     When I supply the data
      And I supply a resource id
      But The resource does not exist
     Then I recieve an error message "Resource with id <id> not found."

  Scenario: No difference in data
    Given I wish to update a resource
     When I supply the data
      And I supply a resource id
      But the data is the same as the existing data
      Then I recieve an error message "There is no difference between the existing data and that provided."

  Scenario: The data is invalid
    Given I wish to update a resource
     When I supply the data
      And I supply a resource id
      And the data is different to the existing data
      But the data is not validated against the resource type schema
     Then I recieve an error message "Suppliod data failed validation against the Resource Type schema."
