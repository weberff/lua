a = "04d392a7ffbee587903904900b2b40bf0e767f11980b8a56e8985e28ef445279"
b = "f37585eab45222eac9ae1005c397c709ada3c2c4832c1803c0cc374d597f47cf"
c = "ddd69824b4144c2cad75a12808aa8c6cc8e9c83587dff27406290332c36e0923"
d = "40f49fa65674d7ba3bb485f0232e11285a723edd50ff86d4d4c9ad7e3a142d72"
e = "e19059c67696d253ab826ca4dddf5f90016d97927b143a656f8ef6eb9d369ad4"
f = "c0b13827368aa0d62ed3936eac384e5f83caf42876976bdd55e63f17c32974cd"
g = "86e907f88c44d8babcee5ef29c505900dc96df913d86a32f451ae70ffca106e9"
h = "9603977e95c6f149e4de726bcd7e3af07c0733d2f61336dd5674954467849bfa"

i = "0000000000000000000000000000000000000000000000000000000000000000"
j = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
k = "42258bfc34d01f0078c5c25148b235ea9f7a67fbd6ab5ac4efdacaf310825022"




inicial = ""
hash_anterior = ""
hashtmp = ""
sha = require("sha2")
round = 0
rodada = 0
seed = 1
os.execute("clear")
print("Começando...\n")
repeat
	if inicial == "" then
		repeat
			local date_table = os.date("*t")
            local ms = string.match(tostring(os.clock()), "%d%.(%d+)")
            local hour, minute, second = date_table.hour, date_table.min, date_table.sec

            local year, month, day = date_table.year, date_table.month, date_table.day -- date_table.wday to date_table.day

            local result = string.format("%d%d%d%d%d%d%s", year, month, day, hour, minute, second, ms)

            math.randomseed(tonumber(result) * seed)
            local str = tostring(string.format("%x", (math.random(0, 15))))
            inicial = inicial .. str
            seed = (math.random(1, 99999))
            local tamanhoatual = string.len(inicial)
		until tamanhoatual == 64
		hashtmp = inicial
	end
    round = round + 1
    hash_anterior = hashtmp
    hashtmp = sha.sha256(hashtmp)
		if rodada == 1000 then
			os.execute("clear")
			print("Hash atual:\n"..inicial)
			rodada = 0
		end
		if hashtmp == a then 
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (A) :\n"..hash_anterior.."::"..a)
			file:close()
			print("Encontrou a hash (A) :\n"..hash_anterior.."::"..a)
			
		elseif hashtmp == b then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (B) :\n"..hash_anterior.."::"..b)
			file:close()
			print("Encontrou a hash (B) :\n"..hash_anterior.."::"..b)
			
		elseif hashtmp == c then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (C) :\n"..hash_anterior.."::"..c)
			file:close()
			print("Encontrou a hash (C) :\n"..hash_anterior.."::"..c)
			
		elseif hashtmp == d then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (D) :\n"..hash_anterior.."::"..d)
			file:close()
			print("Encontrou a hash (D) :\n"..hash_anterior.."::"..d)
			
		elseif hashtmp == e then 
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (E) :\n"..hash_anterior.."::"..e)
			file:close()
			print("Encontrou a hash (E) :\n"..hash_anterior.."::"..e)
			
		elseif hashtmp == f then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (F) :\n"..hash_anterior.."::"..f)
			file:close()
			print("Encontrou a hash (F) :\n"..hash_anterior.."::"..f)
			
		elseif hashtmp == g then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (G) :\n"..hash_anterior.."::"..g)
			file:close()
			print("Encontrou a hash (G) :\n"..hash_anterior.."::"..g)
			
		elseif hashtmp == h then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (H) :\n"..hash_anterior.."::"..h)
			file:close()
			print("Encontrou a hash (H) :\n"..hash_anterior.."::"..h)
			
		elseif hashtmp == i then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (I) :\n"..hash_anterior.."::"..i)
			file:close()
			print("Encontrou a hash (I) :\n"..hash_anterior.."::"..i)
			
		elseif hashtmp == j then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (J) :\n"..hash_anterior.."::"..j)
			file:close()
			print("Encontrou a hash (J) :\n"..hash_anterior.."::"..j)
			
		elseif hashtmp == k then
			os.execute("clear")
			file = io.open("hash_encontrada.txt", "w+")
			file:write("Encontrou a hash (K) :\n"..hash_anterior.."::"..k)
			file:close()
			print("Encontrou a hash (K) :\n"..hash_anterior.."::"..k)
			
		elseif round == 1000 then
			inicial = ""
			round = 0
			rodada = rodada + 1
		end
until (hashtmp == a or hashtmp == b or hashtmp == c or hashtmp == d or hashtmp == e or hashtmp == f or hashtmp == g or hashtmp == h or hashtmp == i or hashtmp == j or hashtmp == k)