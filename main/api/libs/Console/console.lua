ConsoleLib = {}
console = {log,shell}
 function console.log(consoletext)
 print(consoletext)
 end
 function console.shell(consoleshelltext)
 os.execute(consoleshelltext)
 end
return ConsoleLib