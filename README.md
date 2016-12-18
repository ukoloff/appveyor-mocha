# appveyor-mocha
Logging mocha test results to AppVeyor.

When [mocha][] is run under [AppVeyor][]
reports test results
(including stack trace in case of error)
via [AppVeyor Worker API][].

In addition, arbitrary text can be logged.

When mocha is not run inside AppVeyor,
this package does nothing.

## Installation

```
npm install --save-dev appveyor-mocha
```

Then add two lines to `test/mocha.opts`:
```
--require appveyor-mocha
--no-exit
```

To post message to AppVeyor from your tests, say:
```js
appveyor = require('appveyor-mocha');

//...

appveyor.message(someMessage);
appveyor.log(anotherMessage); // console.log + appveyor.message

```
[mocha]: https://mochajs.org/
[AppVeyor]: https://www.appveyor.com/
[AppVeyor Worker API]: https://www.appveyor.com/docs/build-worker-api/
