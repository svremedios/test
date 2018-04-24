Author.delete_all
Author.create name: 'William Shakespeare'
Author.create name: 'John Keats'
Author.create name: 'F. Scott Fitzgerald'

Book.delete_all
Book.create title: 'Hamlet', price: 1500, hardcover: false, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/81pLG56qwfL._AC_SX580_SY580_.jpg'
Book.create title: 'Keats Poetry and Prose', price: 2121, hardcover: true, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/41OIp%2BDXrBL._SX302_BO1,204,203,200_.jpg'
Book.create title: 'The Great Gatsby', price: 1495, hardcover: false, photo_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/TheGreatGatsby_1925jacket.jpeg/220px-TheGreatGatsby_1925jacket.jpeg'

print "There are now #{Author.count} authors in the database.\n"
print "There are now #{Book.count} books in the database.\n"
