Source code for the
[Asynchronous File Uploading with Rails](http://www.sitepoint.com/asynchronous-file-uploads-rails/) article on
 SitePoint,
created by Ilya Bodrov ([radiant-wind.com](http://radiant-wind.com)).

[Working demo](https://sitepoint-async-upload.herokuapp.com).

# Instructions for deploying to Heroku

Rename config/secrets.yml.example to config/secrets.yml

Populate production section with your own aws_access_key_id and aws_secret_key.

Also generate secret key for production:

```
rake secrets
```

and add it to config/secrets.yml


Finally run:

```
RAILS_ENV=production rake heroku:secrets
```

Change bucket name in config/initializers/dragonfly.rb with your own bucket name.
Note: Add bucket without dots to aviod [this error](https://github.com/fog/fog/issues/2381#issuecomment-28088524).