A demonstration of a problem with content_for or capture.


## Rails 3

* Rails 3.2.17
* Ruby 1.9.2-p320
* http://localhost:3000/content_test/example
* mysteriously clears the content_for block

### Results

Layout yield :javascript: ""
Layout yield :javascript2: ""
ContentTest#example

Find me in app/views/content_test/example.html.erb

Content for :javascript: "  alert('hello');\n"
Content for :javascript2: "  alert('from a render_to_string');\n"


## Rails 4

* Rails 4.1.7
* Ruby 2.1.5
* http://localhost:3000/content_test/example
* works as expected

### Results

 # two popup alerts
 # 1) hello
 # 2) from a render_to_string

Layout yield :javascript: "  alert('hello');\n"
Layout yield :javascript2: "  alert('from a render_to_string');\n"
ContentTest#example

Find me in app/views/content_test/example.html.erb

Content for :javascript: "  alert('hello');\n"
Content for :javascript2: "  alert('from a render_to_string');\n"

