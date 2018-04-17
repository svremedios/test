Author.create name: 'William Shakespeare'
Author.create name: 'John Keats'
Author.create name: 'F. Scott Fitzgerald'

Book.create title: 'Hamlet', price: 1500, hardcover: false
Book.create title: 'The Nightengale', price: 2995, hardcover: true
Book.create title: 'The Great Gatsby', price: 1495, hardcover: false

print "There are now #{Author.count} authors in the database.\n"
print "There are now #{Book.count} books in the database.\n"
