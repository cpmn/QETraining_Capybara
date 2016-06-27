@ui
Feature: UI main page
In order to verify the UI
As I need to veriry each control
I want to be sure the all control are loaded

	Scenario: Verify UI Main Page Labels
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following labels are displayed:
		| Home             |
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |
		| About Us         |

	Scenario: Verify UI Main Page Images
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following images are displayed:
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |

	Scenario: Verify UI Main Page top menu
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then top menu is displayed with following buttons:
		| Home     |
		| About us |
		| Services |
		| Demo     |
		| Blog     |
		| Contact  |

	Scenario: Verify UI Main Page rigth menu
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then right menu is displayed with following Sections:
		| Registration       |
		| interaction        |
		| Widget             |
		| Frames and Windows |

	Scenario: Verify UI Main Page tab sample 
		Given I navigate to "http://demoqa.com"
		When I click in each tab
		Then Content title changes:
		| Tab 1   | Content 1 Title |
		| Tab 2   | Content 2 Title |
		| Tab 3   | Content 3 Title |
		| Tab 4   | Content 4 Title |
		| Tab 5   | Content 5 Title |
