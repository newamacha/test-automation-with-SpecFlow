Feature: MultipleSearchResult

@regression @search
Scenario: Multiple Search Books in Bookstore
	Given I navigate to Bookstore application
	And I click on Book Store Application
	When I fill up the search box
		| Keyword    |
		| JavaScript |
	Then following books should be displayed in results
		| Title                               | Author           | Publisher       |
		| Learning JavaScript Design Patterns | Addy Osmani      | O'Reilly Media  |
		| Speaking JavaScript                 | Axel Rauschmayer | O'Reilly Media  |
		| Programming JavaScript Applications | Eric Elliott     | O'Reilly Media  |
		| Eloquent JavaScript, Second Edition | Marijn Haverbeke | No Starch Press |

#Examples:
#	| Keyword | Title                                     | Author               | Publisher      |
#	| GIT     | Git Pocket Guide                          | Richard E. Silverman | O'Reilly Media |
#	| Web Api | Designing Evolvable Web APIs with ASP.NET | Glenn Block et al.   | O'Reilly Media |
#	| Learn   | Learning JavaScript Design Patterns       | Addy Osmani          | O'Reilly Media |