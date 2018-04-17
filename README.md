# bookstore

For in-class demonstrations.

### Get This Code

Get the code from GitHub, and then run the console to setup your database.

```
~\code$ git clone https://github.com/kiei925/bookstore.git
~\code$ cd bookstore
~\code$ rails console
```

### Seed the Database

Today we will learn how to use this command:

```
~/code/bookstore$ rails db:seed
```

### If You Need To Catch Up...

These commands will discard your current work and get the latest code
from GitHub.

```
~/code/bookstore$ git checkout -q .
~/code/bookstore$ git clean -qdf
~/code/bookstore$ git pull -q
~/code/bookstore$ rails db:seed


### Update Your Cloud9 Tools

An update is available.  You can install it like this:

```
~/code$ curl -sL https://www.kiei925.com/c9setup | bash -E -
```
This update fixes a few typos in the generated HTML files when you create new applications with the `rails new` command.
