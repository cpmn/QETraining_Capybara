@qademo @qa

Feature: Main Page.

  Scenario: Ui verification

    When I open the testing page
    Then I should see that "Home" title is displayed
    Then I should see three subtitles in the first section
    | Unique & Clean   |
    | Customer Support |
    | Very Flexible    |

    Then I should see the following options in the right menu Registration
    | Registration |

    Then I should see the following options in the right menu Interaction
    | Draggable   |    
    | Droppable   |
    | Resizable   |
    | Selectable  |
    | Sortable    |

    Then I should see the following options in the right menu Widget
    | Accordion    |
    | Autocomplete |    
    | Datepicker   |
    | Menu         |
    | Slider       |
    | Tabs         |
    | Tooltip      | 

    Then I should see the following options in the right menu Frames and Windows
    | Frames and Windows |

    Then I should see "5" tabs in the second section

    When I select "Tab 1" in the secod section
    Then I should see "Content 1 Title" in the screen
    
    When I select "Tab 2" in the secod section
    Then I should see "Content 2 Title" in the screen

    When I select "Tab 3" in the secod section
    Then I should see "Content 3 Title" in the screen

    When I select "Tab 4" in the secod section
    Then I should see "Content 4 Title" in the screen

    When I select "Tab 5" in the secod section
    Then I should see "Content 5 Title" in the screen
