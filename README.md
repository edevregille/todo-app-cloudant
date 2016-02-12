# Deploy a Node.js app on Bluemix with Cloudant Database

You need an account on the Bluemix platform (http://www.ibm.com/bluemix) and you need the command line Cloud Foundry installed (https://www.ng.bluemix.net/docs/starters/install_cli.html).

Clone locally the application on your machine
```
  git clone https://github.com/edevregille/todo-app-cloudant.git
```

Login on the Cloud Foundry platform (UK data center API hereunder)
```
  cf login -a https://api.eu-gb.bluemix.net
```

Create a Cloudant database service from the catalogue that you name todo-couch-db
```
  cf create-service cloudantNoSQLDB Shared todo-couch-db
```

Modify the manifest file to give a name to your application and use the same name for the host.
Find here all the details on the manifest file options you can use: https://docs.cloudfoundry.org/devguide/deploy-apps/manifest.html

Go back to your command line and go into the root of your source code application folder to run the push command to the cloud.

```
  cf push
```

Your application is deployed!





