Feature: Validate Address Attributes for Lightspeed in CSI-QUAL response
  In order to contact the system administrator to address a possible address error
  As a Service Availability Consumer
  I want to receive an error when the service address related fields for lightspeed are not in the CSI-QUAL response

  @Iteration_7 @StoryId_5371 @Positive @TestNum_1
  Scenario Outline: Validate address attributes are not missing for out of region addresses
    Given a successful CSI-QUAL response
    When the light speed indicator is returned in the CSI QUAL response
    And the "STREET" address in the CSI-QUAL response is considered "<addressLocation>"
    And the "<AddressAttributes>" does not exist in the CSI QUAL response address attributes
    Then the Service-Availability API should return an error similar to OMS for the missing address attribute

    Examples:
      | addressLocation | AddressAttributes               |
      | out of region   | legalEntity                     |
      | out of region   | sbcServingOfficeWirecenter      |
      | out of region   | videoHubOffice                  |
      | out of region   | exchangeCode                    |

  @Iteration_7 @StoryId_5371 @Positive @TestNum_2
  Scenario Outline: Validate address attributes are not for rural addresses
    Given a successful CSI-QUAL response
    When the light speed indicator is returned in the CSI QUAL response
    And the Service-Availability request indicates that the Address Type is "<addressType>"
    And the "<AddressAttributes>" does not exist in the CSI QUAL response address attributes
    Then the Service-Availability API should return an error similar to OMS for the missing address attribute

    Examples:
      | addressType | AddressAttributes               |
      | rural (R)   | legalEntity                     |
      | rural (R)   | sbcServingOfficeWirecenter      |
      | rural (R)   | videoHubOffice                  |
      | rural (R)   | exchangeCode                    |

  @Iteration_7 @StoryId_5371 @Negative @TestNum_1
  Scenario Outline: Validate address attributes are missing and no error is returned
    Given a successful CSI-QUAL response
    When the light speed indicator is returned in the CSI QUAL response
    And the "STREET" address in the CSI-QUAL response is considered "<addressLocation>"
    And the Service-Availability request indicates that the Address Type is "<addressType>"
    And the "<AddressAttributes>" does not exist in the CSI QUAL response address attributes
    Then the Service-Availability API should continue processing the CSI-QUAL Response

    Examples:
      | addressLocation | AddressAttributes               | addressType | errorMessage  |
      | in region       | legalEntity                     | not rural   | not return    |
      | in region       | sbcServingOfficeWirecenter      | not rural   | not return    |
      | in region       | videoHubOffice                  | not rural   | not return    |
      | in region       | exchangeCode                    | not rural   | not return    |
