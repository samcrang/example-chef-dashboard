Example Chef Dashboard
======================

You can spin up a local instance with some dummy data like so:

```
bundle exec rackup
```

and then in a separate terminal:

```
cd fixtures
knife upload .
```

You'll then get a simple dashboard at `http://127.0.0.1:9292/deployments` that looks like this:

![](https://cloud.githubusercontent.com/assets/374579/5603157/e1ed8abe-936d-11e4-8316-0fa46163db39.png)
