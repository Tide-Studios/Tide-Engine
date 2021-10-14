ConsoleLib = {}
console = {log,execute}
 function console.log(consoletext)
 print(consoletext)
 end
 function console.execute(consoleshelltext)
 os.execute(consoleshelltext)
 end

return ConsoleLib