Feature: Campus admin add building

    Scenario: User with campus admission can add buildings

    Given User signs in successfully

    And User is with campus admission

    When User visits campus dashboard

    Then User should see dashborad-information

    When User clicks add building

    Then User should see a blank form

    When User fills in information of building
    
    And User clicks Add

    And User goes back to dashboard

    Then the content should include the new-created building name
    
