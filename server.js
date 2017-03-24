//jshint esversion:6
var express = require("express");
var RED=require('node-red');
var app= express();
 var http=require('http');

const PORT=process.env.PORT||8000;

// //We need a function which handles requests and send response
// function handleRequest(request, response){
//     console.log("call");
//     RED.app(request,response);
//     console.log("end");
// }


// //Lets start our server
// server.listen(PORT, function(){
//     //Callback triggered when server is successfully listening. Hurray!
//     console.log("Server listening on: http://localhost:%s", PORT);
// });

var settings = {
    httpAdminRoot:"/",
    httpNodeRoot: "/api",
    userDir:"./.nodered/",
    functionGlobalContext: { }    // enables global context
};

var server=http.createServer(app);

RED.init(server,settings);
 app.use(settings.httpAdminRoot,RED.httpAdmin);
 app.use(settings.httpNodeRoot,RED.httpNode);

 server.listen(PORT);
RED.start();