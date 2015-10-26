# insolent-kumquat
A logging server

## How to view logs

1. Clone the server

2. Make sure you have the Heroku CLI installed. Navigate to the repo and type heroku logs.


## Other ways to see logs

View only logs from the app

```heroku logs --source=app```

View last 1000 lines.(1500 is max on heroku)

```heroku logs --source=app -n 1000 ```

Pipe output through awk to remove some redundant log information

```heroku logs --source=app -n 1000  | awk '{ printf $1 } { print substr($0, index($0,$5)) }'```

Filter on a username

```heroku logs --source=app -n 1000  | awk '{ printf $1 } { print substr($0, index($0,$5)) }' | grep ying@intrepid.io```

