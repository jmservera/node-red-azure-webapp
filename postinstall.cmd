(if not exist \home mkdir \home)
(if not exist \home\nodered mkdir \home\nodered)
(if not exist \home\nodered\.node-red mkdir \home\nodered\.node-red)
copy npm_.cmd \home\nodered\.node-red\npm_.cmd
pushd \home\nodered\.node-red
npm install node-red-dashboard node-red-contrib-azureiothubnode node-red-contrib-cognitive-services node-red-contrib-azure-blob-storage node-red-contrib-azure-table-storage node-red-contrib-azure-sql node-red-contrib-azure-documentdb node-red-contrib-azureiotc2d node-red-node-swagger & (
     copy npm_.cmd npm.cmd /y
     popd 
     copy npm_.cmd npm.cmd /y
)