1. Add [pry-remote](https://github.com/Mon-Ouie/pry-remote) to your app

2. Add `binding.remote_pry` like you would `binding.pry`

3. Once the breakpoint is hit you'll see something like this in `heroku logs --tail`:
```
[pry-remote] Waiting for client on druby://127.0.0.1:9876
```

4. Connect to the dyno (dyno restart required the first time):
```
$ heroku ps:exec --dyno worker.1
Establishing credentials... done
Connecting to worker.1 on ⬢ my-app... 
~ $
```

5. Run `pry-remote` on the dyno to connect to pry:
```
~ $ pry-remote

From: /app/worker.rb @ line 7 :

    2:

    3: puts 'worker starting...'
    4: test_var = {foo:'bar'}
    5: other_test_var = 7
    6: 
 => 7: binding.remote_pry

[1] pry(main)> test_var
=> {:foo=>"bar"}
[2] pry(main)> other_test_var
=> 7
[3] pry(main)> 
```
