Feature: Welcome to Karate world

@Smoke
Scenario: Print welcome message
	* print 'Welcome'
	* print 'Welcome to karate world'

Scenario: Print Available days
  
  * def Noticeperiod = 90
  * def Remainingdays = 70
  * print 'Available days ->' + Noticeperiod - Remainingdays
  * print 'Count of Available days'
  
Scenario: Calculate salary

	* def salaryperday = 200
	* def numberofworkingday = 25
	*  print 'Total Salary ->' + (salaryperday * numberofworkingday) 

Scenario: Read Json object
	* def jsonObject =

"""
[
{
"name" : "Hillol",
"Organization" : "TCS",
"Location": "Kolkata"
},
{
"name" : "Punya",
"Organization" : "Infosys",
"Location": "Bhubaneswar"
}
]
"""

* print jsonObject
* print "Punya's location => " + jsonObject[1].Location


Scenario: Read complex Json file

* def jsonObject = 

"""
{"menu": {
    "header": "SVG Viewer",
    "items": [
        {"id": "Open"},
        {"id": "OpenNew", "label": "Open New"},
        null,
        {"id": "ZoomIn", "label": "Zoom In"},
        {"id": "ZoomOut", "label": "Zoom Out"},
        {"id": "OriginalView", "label": "Original View"},
        null,
        {"id": "Quality"},
        {"id": "Pause"},
        {"id": "Mute"},
        null,
        {"id": "Find", "label": "Find..."},
        {"id": "FindAgain", "label": "Find Again"},
        {"id": "Copy"},
        {"id": "CopyAgain", "label": "Copy Again"},
        {"id": "CopySVG", "label": "Copy SVG"},
        {"id": "ViewSVG", "label": "View SVG"},
        {"id": "ViewSource", "label": "View Source"},
        {"id": "SaveAs", "label": "Save As"},
        null,
        {"id": "Help"},
        {"id": "About", "label": "About Adobe CVG Viewer..."}
    ]
}}
"""

* print 'Print header -> ' + jsonObject.menu.header
* print 'items -> ' + jsonObject.menu.items 
* print 'first item -> ' + jsonObject.menu.items[0]
* print '5th item -> ' + jsonObject.menu.items[5]
* print '5th item id -> ' + jsonObject.menu.items[5].id
	