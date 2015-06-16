# Auth & Secure JSON Routes 

Project includes

* User & Sessions routes for Authorizing a user in rails
* helper methods for `current_user`
* Examples of how we can build `has_secure_password` from scratch (see previous commits).
* Rendering JSON with
  * a `before_action` that checks that a user is logged in
  * eager loading
  * include & except options to format the data we send back to the frontend
