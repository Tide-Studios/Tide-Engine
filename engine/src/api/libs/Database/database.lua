Database = {}

local db = {load,set,list,delete}


function db.set(setnew,setvalue)
os.execute("curl $REPLIT_DB_URL -d".."'"..setnew..setvalue.."'")
end










return Database