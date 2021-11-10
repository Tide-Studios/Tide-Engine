print("⎯⎯⎯ Login Required ⎯⎯⎯")

while true do
    io.write("APIKey:")
    password = io.read()
    if password == "FYjm?M?PT9~>2kT" then
        print("Login Successful!")
        break
        
  elseif password == "DevBeta" then
    print("Welcome Brohammer5! You have been successful login!")
    break

    else
    love.event.quit()
        print("Access Denied")
    end
end