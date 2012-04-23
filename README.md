# librato-metrics-memcached

Pull statistics from one or more memcached servers and submit them to
[Librato Metrics](https://metrics.librato.com). Intended to be run
periodically, for example, from cron.

### Install

```
$ gem install librato-metrics-memcached
```

### Run

```
$ librato-metrics-memcached --hosts mem1.server.com:11211 \
                            --email foobar@example.com \
                            --token 1234567890
```

### Options

* `hosts`: One or more memcached servers in the form
           `server:port`. Separate multiple servers with a comma ",".
* `email`: Email associated with your Librato Metrics account.
* `token`: API token for your Librato Metrics accounts.
* `prefix`: Prefix to use for metric names. Defaults to
            **memcached.**.
* `floor-in-secs`: By default all measurements are posted with
                   the current time as the measure_time. This option,
                   specified as a value in seconds, will floor the
                   time by this value. For example, 300 would floor
                   all measure times to the 5 minute mark.


## Contributing to librato-metrics-memcached

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Mike Heffner. See LICENSE.txt for
further details.

