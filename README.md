# node-red-azure-webapp
A webapp wrapper for running node-red in an Azure Web App.
To use it just:

1. Deploy to Azure with this button:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fjmservera%2Fnode-red-azure-webapp%2Fmaster%2Fwebapp.json" target="_blank"><img src="http://azuredeploy.net/deploybutton.png"/></a>

Or...

1. Create an Azure Web App
1. Open the settings and activate **Web sockets**

    ![Web sockets](./_images/websockets.png)

    **Figure 1** Activate Web sockets
1. Configure the deployment options as an *External repository* pointing to [https://github.com/jmservera/node-red-azure-webapp.git](https://github.com/jmservera/node-red-azure-webapp.git)

    ![External repo](./_images/externalrepo.png)

    **Figure 2** External Repository

> This project currently uses a workaround to avoid a small problem caused with `child_process.execFile`: it uses a fake npm.cmd that points to the real one.

## Usage

Wait until everything is deployed before opening the website, during the deployment a script is executed to download this repo and install all the needed modules. If you see this screen just wait about 30 seconds to let the Node-RED app start:

![Not Started Site](./_images/notstarted.png)

**Figure 3** Not Started Site

You can see the live log in the Azure Portal, in the *Log stream* tab:

![Application logs stream](./_images/logstream.png)

**Figure 4** Application logs stream

It comes with some cool nodes preinstalled:

* Dashboard (create an awesome ui and see it in https://yoursite/ui )
* Azure IoT Hub
* Cognitive Services
* Azure Storage (Blobs & Tables)
* DocumentDB
* Azure SQL
* Swagger node

## Securing your deployment

To secure this deployment and add an admin password edit the `settings.js` file.

## Version History

* v0.0.1
  * First test with basic nodes
* v0.0.2
  * Deploy to Azure Button
  * Add cognitive services
* v0.0.3
  * Update Node-Red version to 0.18.4
* v1.0.0
  * Update Nodejs to 8.9.4
  * Make Nodejs version configurable
  * Add Swagger Node
* v2.0.0-beta
  * Update Nodejs to 12
  * Update Node-red to 1.0.6
  * Update azureiothubnode to 0.5.2
  * Update cognitive-services 0.5.5
  * Update dashboard 2.21.0
  * Update node-swagger 0.1.9
  