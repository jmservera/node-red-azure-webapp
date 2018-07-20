#!/bin/bash
sudo mkdir /home/nodered
sudo chmod 777 /home/nodered
sudo mkdir /home/nodered/.node-red
sudo chmod 777 /home/nodered/.node-red
cd /home/nodered/.node-red
sudo npm install node-red-dashboard node-red-contrib-azureiothubnode node-red-contrib-cognitive-services node-red-contrib-azure-blob-storage node-red-contrib-azure-table-storage node-red-contrib-azure-sql node-red-contrib-azure-documentdb node-red-contrib-azureiotc2d node-red-node-swagger