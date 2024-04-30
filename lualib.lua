ver = "6.0.2"
print ("LuaLib "..ver.." Copyright (C) 2022-2024 Ncompany")
print ("loading commands...")
print ("loading keymap...")
print ("loading time...")
print ("loading table library")
print ("Done\n")

info = {}
info.dev = function ()
	print("Nico@Ncompany")
end
info.ver = function ()
	print(ver)
end

maths = {}
maths.random = function (mx, mn)
	rand = math.random(mx, mn)
	print (rand.."\n")
end
maths.calc = function (a, sr)
    if sr == nil then
		res = tonumber(a)
		if res == nil then
            print ("ERROR CODE 1")
		else
            print (res.."\n")
		end
	else
		res = math.sqrt (a)
		print (res.."\n")
	end
end
maths.pi = math.pi


tab = {}
tab.insert = function(t, key, value)
	_G[t][key] = value
	print ("\n")
end
tab.make = function(t)
	_G[t] = {}
	print ("\n")
end
tab.content = function(t)
	print (string.upper(t))
	for a, b in pairs(_G[t]) do
		print (a, b)
	end
	print ("\n")
end
tab.delete = function(t)
	_G[t] = nil
end

------

function input (var)
	_G[var] = io.read()
	print ("\n")
end
function keymap(a)
	print (string.char(a))
end
function time()
	time = os.date("%X")
	print (time.."\n")
end
function date()
	date = os.date("%A %B %d %Y")
	print (date.."\n")
end
function echo(a)
	print(a.."\n")
end
function set(a, b)
	_G[a] = b
	print ("\n")
end
function delete (a)
	_G[a] = nil
	print ("\n")
end
function command (a)
	os.execute (a)
end
