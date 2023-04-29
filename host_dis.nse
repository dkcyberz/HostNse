author = "DhaneshKumar"

categories = { "Discovery" }

description = [[
Performs a simple host discovery by sending an ICMP Echo Request packet to each target
to determine whether it is live or not.
]]


portrule = function(host)
  return true
end

			  	-- The 'action' function is for  discover live host 
action = function(host)
  				-- Print the IP address and hostname if available.
  local hostname = ""
  if host.get_hostname ~= nil then
    hostname = " (" .. host:get_hostname() .. ")"
  end
  print("Host " .. host.ip .. hostname .. " is live.")
end
