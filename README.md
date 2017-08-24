# SoFi Path - easiest way to track your expenses. Online. Open-source. Free
* node.js
* npm
* Front-end: jQuery, Bootstrap, Backbone.js with JSmart template engine.
* Back-end: Sequelize, SQLite database by default, easy to switch to MySQL or Postgree for production.

Reference:
----
 [DimeShift](http://dimeshift.com/)


Installation:
----

- Make sure MySQL is running on port 3306.
- Create database `walletjs`

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/jeka-kiselyov/dimeshift)

or install from CLI:

```bash
mkdir dimeshift
cd dimeshift
git clone https://github.com/jeka-kiselyov/dimeshift.git .
npm install
```
* [Install npm](https://docs.npmjs.com/getting-started/installing-node) if you don't have it.
* [Install bower](http://bower.io/#install-bower) if you don't have it.

Run:
----

```bash
npm start
```
Open [localhost:8080](http://localhost:8080) in your browser.


Screenshots:
----
![Dimeshift transactions](https://raw.githubusercontent.com/jeka-kiselyov/dimeshift/master/public/images/homepage/screenshots/transactions.jpg?1mar16)

![Dimeshift wallets](https://raw.githubusercontent.com/jeka-kiselyov/dimeshift/master/public/images/homepage/screenshots/wallets.jpg?1mar16)

![Dimeshift goals](https://raw.githubusercontent.com/jeka-kiselyov/dimeshift/master/public/images/homepage/screenshots/goal.jpg?1mar16)

![Dimeshift i18n](https://raw.githubusercontent.com/jeka-kiselyov/dimeshift/master/public/images/homepage/screenshots/i18n.jpg?1mar16)
