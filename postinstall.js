//postinstall.cmd

const {exec} = require('child_process');
var command='sh postinstall.sh';
if (process.platform == 'win32') {
  command="postinstall.cmd";
}
else{
}

const executedCommands = exec(command, (error, stdout) => {
    console.log(stdout);
    if (error) {
        throw error;
    }
});
