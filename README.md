# README

A toy elastic search project.

# Dependencies
- Docker (or your favorite way to run elastic search)

First run elastic search
```
bin/elatic_search
```

Now import some data
```
bundle exec rake fake_data:create NUM=150
```

And now you can search
```
bin/rails s

# another window
open http://localhost:3000
```


Later you can reimport the data (if you're using an ephemeral ES clustic)
```
ProductsIndex.import
```
