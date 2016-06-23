Feature: UI Registration
In order to verify the UI
As I need to veriry each control
I want to be sure the all control are loaded

	Scenario: Verify UI Main Page
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following images are displayed:
		| Name             |
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |

