TideScript = {}
script = {load=nil,object=nil,event=nil,download=nil,thread=nil,scriptname,type,export}

function script:load(scriptname,scriptloc)
  function love.load()
    thread,errorMsg = pcall(love.thread.newThread("engine/assets/Scripts/"..scriptloc..".lua"))
    
    if thread==true then
    thread:start( 99, 1000 )
    elseif thread==false then
     local file = io.open("engine/logs/threadlog1.txt","w+")
      file:write(errorMsg)
      file:close()
    end

end
  
  end

function script.download(scriptname)
os.execute("curl -s -X GET https://Tide-Script-website.brohammer5.repl.co/"..scriptname..".lua"..">engine/assets/Scripts/"..scriptname..".lua"..">&1")
  print("Downloaded Script:"..scriptname)
      end

return TideScript