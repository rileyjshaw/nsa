NSA Ipsum
=========

## Installation

```
npm install --save nsa-ipsum
```

## Usage

As per the Analyst's Desktop Binder, the list is split into the following
sections:

- 'Cyber Security'
- 'DHS & Other Agencies'
- 'Domestic Security'
- 'HAZMAT & Nuclear'
- 'Health Concern + H1N1'
- 'Infrastructure Security'
- 'Southwest Border Violence'
- 'Terrorism'
- 'Weather/Disaster/Emergency'

Each key contains an array of "spooky" words:

```js
const nsaIpsum = require('nsa-ipsum');

console.log(nsaIpsum['Weather/Disaster/Emergency'].slice(0, 5));
// Output: ['aid', 'avalanche', 'blizzard', 'brown out', 'brush fire']
```

---

Licensed under [MIT](./LICENSE).

Created by [rileyjshaw](http://rileyjshaw.com/).
