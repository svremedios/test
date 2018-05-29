Menu_item.delete_all
Menu_item.create link:"/courses", name:'Courses'
Menu_item.create link:"/faculty", name:'Faculty'
#Menu_item.create link:"/stocks", name:'Stocks', requires_login: false
#Menu_item.create link:"/stocks/addnew", name:'Add stock', requires_login: false
#Menu_item.create link:"/books/addnew", name:'Add book', requires_login: false
Menu_item.create link:"/reseed", name:'Reseed', requires_admin: true, requires_login: true
Menu_item.create link: "/users/", name:"My Account", requires_login: true




