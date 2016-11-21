require "./src/modest"

# description of selectors: http://www.w3schools.com/cssref/css_selectors.asp

html = "<div><p id=p1><p id=p2><p id=p3><a>link</a><span id=bla><p id=p4 class=jo><p id=p5 class=bu><p id=p6 class=jo></span></div>"
parser = Myhtml::Parser.new.parse(html)

# select all nodes with class "jo"
nodes = parser.root!.css(".jo").map(&.attribute_by("id")).to_a # => ["p4", "p6"]
p nodes
