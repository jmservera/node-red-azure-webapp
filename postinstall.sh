#!/bin/bash
su
mkdir /home/nodered
chmod 777 /home/nodered
mkdir /home/nodered/.node-red
chmod 777 /home/nodered/.node-red
cd /home/nodered/.node-red
npm install node-red-dashboard node-red-contrib-azureiothubnode node-red-contrib-cognitive-services node-red-contrib-azure-blob-storage node-red-contrib-azure-table-storage node-red-contrib-azure-sql node-red-contrib-azure-documentdb node-red-contrib-azureiotc2d node-red-node-swagger