Feature: UI main page
In order to verify the UI
As I need to veriry each control
I want to be sure the all control are loaded

	Scenario: Verify UI Main Page Labels
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following images are displayed:
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |

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
		Then following images are displayed:
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |

	Scenario: Verify UI Main Page rigth menu
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following images are displayed:
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |

	Scenario: Verify UI Main Page tab sample 
		Given I navigate to "http://demoqa.com"
		When page is loaded
		Then following images are displayed:
		| Unique & Clean   |
		| Customer Support |
		| Very Flexible    |