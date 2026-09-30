
-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local v = table.pack(...)

if not ce_like_loadstring_fn then
	if not l_fastload_enabled or not is_from_loader then
		game:GetService("Players").LocalPlayer:Kick("[Luarmor]: Use the loadstring, do not run this directly")
		wait(5)

		while true do
		end
	end
end

local str = "?"
loadstring = ce_like_loadstring_fn or loadstring
local flag = false

pcall(function()
	flag = true
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if not UserGameSettings:GetTutorialState("nil  nil  ") then
		str = ""
		local n = ({ wait() })[1] * 1000000

		local function fn(arg)
			local n2 = 1103515245
			local n3 = 12345
			local n4 = 99999999
			local n5 = arg % 2147483648
			local n6 = 1

			return function(arg2, arg3)
				local v2 = n4
				local n7 = n2 * n5 + n3
				local n8 = n7 % v2 + n6
				n6 += 1
				n5 = n8
				n3 = n7 % 4858 * v2 % 5782
				return arg2 + n8 % arg3 - arg2 + 1
			end
		end

		local v2 = fn(n - n % 1)
		UserGameSettings:SetTutorialState("nil  nil  ", true)
		local n2 = 0

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end
	else
		str = ""
		local n = 0

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end
	end
end)

while not flag do
end

local now = os.clock()

if devsignature_sig then
	print([[        Luarmor - Lua whitelist service
        This is a signature - If you are seeing this, you know what not to do :3
        Have a good day!
        https://luarmor.net/
    ]])
end

local flag2 = nil
local flag3 = nil
local v2 = ({ table.unpack(v, 1, v.n) })[3]
local v3

if v2 and v2[1] then
	v3 = v2[1]
else
	v3 = nil
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n = 0
local n2 = 2
local tbl = {}
local tbl2 = {}

for i = 1, 256 do
	tbl2[i] = i
end

repeat
	local v4 = random(1, #tbl2)
	local v5 = remove(tbl2, v4)
	tbl[v5] = char(v5 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn()
	if #tbl3 == 0 then
		n = (n * 149 + 4033097371307) % 35184372088832

		repeat
			n2 = n2 * 37 % 257
		until n2 ~= 1

		local n3 = n2 % 32
		local n4 = floor(n / 2 ^ (13 - (n2 - n3) / 32)) % 4294967296 / 2 ^ n3
		local n5 = floor(n4 % 1 * 4294967296) + floor(n4)
		local n6 = n5 % 65536
		local n7 = (n5 - n6) / 65536
		local n8 = n6 % 256
		local n9 = n7 % 256
		tbl3 = { n8, (n6 - n8) / 256, n9, (n7 - n9) / 256 }
	end

	return table.remove(tbl3)
end

local tbl4 = {}
local v4 = tbl4

local function fn2(arg, arg2)
	local v5 = tbl4

	if not v5[arg2] then
		tbl3 = {}
		local v6 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v5[arg2] = ""
		local n3 = 77

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v5[arg2] = v5[arg2] .. v6[n3 + 1]
		end
	end

	return arg2
end

local v5 = LUARMOR_SkipAntidebugDevMode
local v6 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v4[fn2("\172", 31126577901884)] or false
local v7 = v4[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v8 = USE_NON_SSL_NODE
local v9 = l_fastload_enabled
local n3 = os[v4[fn2("(\204\6\168", 4882453074371)]](os[v4[fn2("UC\178}", 12971197083440)]](v4[fn2("\139L", 33012126087192)])) - os[v4[fn2("vܢ\204", 5436520764359)]](os[v4[fn2("f\150\187#", 4318721413046)]](v4[fn2("\209\6D", 24300592814183)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v10 = v4[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v11 = v4[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v10
	tbl5[2] = v11
	v7 = tbl5[math[v4[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
	local tbl5 = {}
	local v10 = v4[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v11 = v4[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v12 = v4[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v13 = v4[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v14 = v4[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v15 = v4[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v16 = v4[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v17 = v4[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v18 = v4[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v19 = v4[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v20 = v4[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	tbl5[4] = v13
	tbl5[5] = v14
	tbl5[6] = v15
	tbl5[7] = v16
	tbl5[8] = v17
	tbl5[9] = v18
	tbl5[10] = v19
	tbl5[11] = v20
	v7 = tbl5[math[v4[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n5 >= 15 and n5 < 21 then
	local tbl5 = {}
	local v10 = v4[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v11 = v4[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v12 = v4[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	v7 = tbl5[math[v4[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v4[fn2("\11\19\5\4\2527\137", 10601376556689)])[v4[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v4[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function()
	if game:GetService(v4[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v4[fn2("A\209q\131\160\177\219", 8137063865754)])[v4[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v4[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v10 = v4[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v11 = v4[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v12 = v4[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v13 = v4[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v14 = v4[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v10
		tbl5[2] = v11
		tbl5[3] = v12
		tbl5[4] = v13
		tbl5[5] = v14
		v7 = tbl5[math[v4[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v4[fn2("$GBp\229(\220", 25758778711477)]] = v4[fn2("\233\191\12", 22757578724042)] }
tbl5[v4[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v4[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v7
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "25c106c08c08891386df0b01ab40eb21"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0004"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "Zenthra Murder Mystery 2"

if v8 then
	tbl5[v4[fn2("P+\173\t", 11860914154278)]] = v4[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v7 = v4[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v4[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n6 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v10 = nil
local tbl8 = nil
local v11 = print
local v12 = next
local v13 = string[v4[fn2("2\2521\5", 29730670930984)]]
local v14 = identifyexecutor
local v15 = game
local v16 = pcall
local v17 = string[v4[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v18 = debug[v4[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v19 = tonumber
local v20 = setmetatable
local v21 = rawget
local v22 = wait
local v23 = debug[v4[fn2("P\221{\181\235n\227", 23381441762575)]]
local v24 = loadstring
local v25 = os[v4[fn2("X\184mZ", 16176414243545)]]
local v26 = string[v4[fn2("U\235\251\154", 32087606162619)]]
local v27 = string[v4[fn2("\175\1522", 25909107154497)]]
local v28 = spawn
local v29 = game:GetService(v4[fn2("`B\166#\255jI\172]^", 4772928065885)])[v4[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v30 = os[v4[fn2(">^S\159\159", 3206290934698)]]
local v31 = rconsoleprint
local v32 = math[v4[fn2("\165A7e", 11417445247369)]]
local v33 = tostring
local v34 = pairs
local v35 = string[v4[fn2("\3\155\250\194", 32580468700806)]]
local v36 = getgenv
local flag8 = false

local function fn4(arg, arg2)
	v24(v4[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v22() do
	end
end

local tbl9 = {}
local flag9 = false
local v37 = string[v4[fn2("\189[J\156\131h", 30415739121318)]]
local v38 = string[v4[fn2("\1510\206", 13348091965583)]]
local v39 = table[v4[fn2("k\188*TG\222", 11500125891030)]]
local v40 = type
local v41 = v34
local v42 = v22
local v43 = coroutine[v4[fn2("\177߽\215", 9666118886186)]]

local fn5 = syn and syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg)
	local v44 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
	v44:Connect()
	return v44
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v44 in v41(arg) do
		local n7 = #tbl10 + 1
		local v45 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v46 = v4
		local flag10 = v40(v44) == v46[fn2("\20/x-\133", 7497094208326)] and fn6(v44)

		if not flag10 then
			local v47 = v4
			flag10 = v4[fn2("=", 18649317131224)] .. v44 .. v47[fn2("Z", 173951484066)]
		end

		tbl10[n7] = v37(v45, k, flag10)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v44 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v44[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v44 = v4
		local v45 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v44[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v46 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v46[fn2(" ", 17028991270387)])
		end

		if v45 then
			local v46 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v45 + 0]
			local v47 = v4
			v46:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v47[fn2("", 19126073050516)]))
			return v46:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v44[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n7 = 0
		local v44

		while true do
			if flag8 then
				local v45 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v45[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v45 = v25()
			local flag10 = false
			local v46 = nil
			v44 = nil

			v28(function()
				local v47, v48 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v46 = v47
				v44 = v48
				flag10 = true
			end)

			while not flag10 and v25() < v45 + 8 do
				v42()
			end

			if flag8 then
				local v47 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v46) .. v47[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n7 = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v46 then
				n7 += 1

				if n7 > 5 then
					flag6 = false
				end

				v42(n7 < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v45 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v45[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v44
		flag6 = arg
		local v45 = v4

		v44:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v45[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function()
			v44[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v44[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function()
			v44[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v44[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function()
		local v44 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v44[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v45 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v45[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function()
		local v44 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v44[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v45 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v45[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v44[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v44 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v44[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v45 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v45[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v4[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v4[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2)
	local tbl10 = {}
	v20(tbl10, arg)
	arg[v4[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v44 = v25()
	local flag10 = false
	local v45 = nil
	local v46 = nil

	v28(function()
		local v47, v48 = v16(fn5, arg2)
		v45 = v47
		v46 = v48
		flag10 = true
	end)

	while not flag10 and v25() < v44 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v45, v46)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v46
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v47 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v47[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v48 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v48[fn2(">4z\139p", 25648179928398)]]
	arg[v4[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v4[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v43(fn7)(arg)

	repeat
		v29:Wait()
	until arg[v4[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2)
	if flag8 then
		local v44 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v44[fn2("\200", 12545982344612)])
	end

	local n7 = 0

	while not arg[v4[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n7 += 1
		v42(0.1)

		if n7 > 40 then
			if flag8 then
				warn(v4[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
			end

			flag6 = false
			return v4[fn2("", 22063920336964)]
		end
	end

	if flag8 then
		local v44 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v44[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v44 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v45 = v4
	local v46 = Instance[v4[fn2("J\3\167", 23438351816004)]](v45[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v47 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v47[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v44] = v46
	local v47 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v47[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v44,
	}))

	if flag8 then
		local v48 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v48[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function()
		v42(30)

		if not flag10 then
			if flag8 then
				local v48 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v48[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v48 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v44]
			v48:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v49 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v49[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v48:Destroy()
		end
	end)

	local v48 = v46[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v48:Wait())
end

tbl9.close = function(arg)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v44 = script_key or v4[fn2("O8\150\147", 28215574980261)]
local n7 = 0
local flag10 = false

v28(function()
	flag10 = true

	while not flag7 do
		n7 += 1
		v29:Wait()
	end
end)

while not flag10 do
	v29:Wait()
end

local function fn8()
	local v45 = n7

	while n7 == v45 do
		v29:Wait()
	end
end

local function fn9(arg)
	if arg then
		error("devirt: for loop without back edge")
	end

	while v22() do
	end
end

local function fn10(arg)
	for i = 1, 2 do
		local n8 = arg % 9915 + 4
		local n9 = nil
		local n10 = nil

		for i2 = 1, 3 do
			n9 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n9 += 522
			end

			n10 = arg % 9996 + 1

			if n10 % 2 ~= 1 then
				n10 *= 3
			end
		end

		local n11 = arg % 9999995 + 1 + 4167
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 4167
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n8 = 1
local v45 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v14 and ({ v14() })[1] == v4[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n8 = 9
elseif v14 and ({ v14() })[1] == v4[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v14() })[2] == v4[fn2("@I\129", 19850870900791)] then
		n8 = 5
	else
		n8 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n8 = 4
elseif KRNL_LOADED then
	n8 = 3
elseif Electron_Loaded then
	n8 = 6
elseif v14 and ({ v14() })[1] == v4[fn2("\171\192\220JXȜ", 12815499767455)] then
	n8 = 7
elseif v14 and ({ v14() })[1] == v4[fn2("\169\192C<\132\166", 18670792623084)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("v\191", 18668645073898)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\138\203G|", 30760420765671)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("y\142\4\231\253", 9953890477110)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("h\16\196\"\236", 28973659842919)] then
	n8 = 15
end

if v14() == v4[fn2("\236<\200I", 5129421230761)] then
	n8 = 11
end

local function fn11(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v46 = v13(i)
		tbl6[i] = v46
		tbl6[v46] = i
	end

	for i = 1, #arg2 do
		local v46 = arg2[i]
		tbl7[i - 1] = v46
		tbl7[v46] = i - 1
	end
end

local tbl10 = {}
local v46 = v4[fn2("?", 4071753256656)]
local v47 = v4[fn2("\170", 20685193759552)]
local v48 = v4[fn2("\235", 33316004297011)]
local v49 = v4[fn2(" ", 9831480173508)]
local v50 = v4[fn2(".", 12166939913283)]
local v51 = v4[fn2("\188", 20310446426595)]
local v52 = v4[fn2("\30", 7856808696981)]
local v53 = v4[fn2("J", 30505936187130)]
local v54 = v4[fn2("\22", 31005241372875)]
local v55 = v4[fn2("y", 15134852888335)]
local v56 = v4[fn2("p", 7987809197327)]
local v57 = v4[fn2("\227", 12325858553047)]
local v58 = v4[fn2("M", 14182414824344)]
local v59 = v4[fn2(")", 20544529287869)]
local v60 = v4[fn2("F", 24744061721092)]
local v61 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v46
tbl10[2] = v47
tbl10[3] = v48
tbl10[4] = v49
tbl10[5] = v50
tbl10[6] = v51
tbl10[7] = v52
tbl10[8] = v53
tbl10[9] = v54
tbl10[10] = v55
tbl10[11] = v56
tbl10[12] = v57
tbl10[13] = v58
tbl10[14] = v59
tbl10[15] = v60
tbl10[16] = v61
fn11(255, tbl10)

fn3 = function(arg)
	return arg - arg % 1
end

local function fn12(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v62 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 4167
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 4167
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local fn14

if v3 then
	fn14 = v3
else
	local v62 = math[v4[fn2("-]\28\209\209\208", 9977513518156)]](100000, 999999)

	local function fn15(arg)
		return v4[fn2("\241n\141\196\222w9Z\197\252", 26641421426923)]:format(arg / 60 % 60, arg % 60) .. v4[fn2("tHQh", 6099039688240)] .. v62
	end

	local v63 = v25()
	local tbl11 = {}
	local v64 = fn15(v63 % 86400 - 2)
	local v65 = fn15(v63 % 86400 - 3)
	local v66 = fn15(v63 % 86400)
	local v67 = fn15(v63 % 86400 - 1)
	local v68 = fn15(v63 % 86400 + 1)
	local v69 = fn15(v63 % 86400 + 2)
	local v70 = fn15(v63 % 86400 + 3)
	local v71 = fn15(v63 % 86400 + 4)
	local v72 = fn15(v63 % 86400 + 5)
	local v73 = fn15(v63 % 86400 + 6)
	tbl11[1] = v64
	tbl11[2] = v65
	tbl11[3] = v66
	tbl11[4] = v67
	tbl11[5] = v68
	tbl11[6] = v69
	tbl11[7] = v70
	tbl11[8] = v71
	tbl11[9] = v72
	tbl11[10] = v73
	local v74 = v4[fn2("\182", 22515979440617)]
	local v75 = v4[fn2("", 32252967449941)]
	local v76 = Color3[v4[fn2("\192\201\224", 3225618877372)]](0, 1, 0)
	local str2 = v4[fn2("\4z{\218[÷\210tq\242\179S\229\222ϬZ\11\253\158\184bl5\2\2182\177\21", 33312782973232)]
	local v77 = v4[fn2("=߸", 19458943174346)]
	local str3 = v4[fn2("P", 27573457773647)] .. tbl5[v4[fn2("\231\25\127\3", 26445994450997)]] .. v4[fn2("7\254\250", 33208626837711)]
	local v78 = nil
	local handlers = {}
	local v79 = v4[fn2("\132\163J\224\250\147B", 12385989930255)]
	local v80 = v4[fn2("\249\8R\193\156\216\229\249d\221\25\147\245\179\253\131", 30058172181849)]
	local v81 = v4[fn2("\u{605}\210\255SB҆O~\165\5\223pא", 21930772287432)]
	local v82 = v4[fn2("\149YLA\23S\141%|\208(w", 21790107815749)]
	local v83 = v4[fn2("\142\24ύO\247\176\128", 29239955941983)]
	local v84 = v4[fn2("3\11\28o\229\192\145\165\226", 27095628079762)]
	local v85 = v4[fn2("+\171)\232\18\161\223\200\16\229\245", 7395085621991)]
	local v86 = v4[fn2("\191`0", 23861419005646)]
	local v87 = v4[fn2("\27\6\0\247v", 25657843899735)]
	local v88 = v4[fn2("0\140u+\150\167v\195/\4\212l\177\211", 8845755097134)]
	local v89 = v4[fn2("\173gf\167", 1311078778053)]
	local v90 = v4[fn2("\12\204\224", 34733386759771)]
	local v91 = table[v4[fn2("\136p\162\208", 21840575221620)]]
	local v92 = v4[fn2("\21\22\241\15\223", 19457869399753)]
	local v93 = v4[fn2("\174\204X^\237", 31989892674656)]
	local v94 = v4[fn2("\23L3\154\211\21\245\214\250\143", 32582616249992)]
	local v95 = v4[fn2("\155\191\234", 17097712844339)]
	handlers[1] = v15
	handlers[2] = v79
	handlers[3] = v80
	handlers[4] = v81
	handlers[5] = v82
	handlers[6] = v83
	handlers[7] = v84
	handlers[8] = v85
	handlers[9] = v34
	handlers[10] = v86
	handlers[11] = v87
	handlers[12] = v88
	handlers[13] = v89
	handlers[14] = v90
	handlers[15] = 3
	handlers[16] = v91
	handlers[17] = v92
	handlers[18] = v93
	handlers[19] = v94
	handlers[20] = v95
	handlers[21] = v22
	handlers[22] = 0.1
	handlers[23] = 0.05
	handlers[24] = v16
	v11(v62)
	v28(function()while true do if not  handlers [24](function()local W= handlers [1][ handlers [2]][ handlers [3]][ handlers [4]][ handlers [5]][ handlers [6]][ handlers [7]];local l=W[ handlers [8]](W);for g,g in  handlers [9](l)do if g[ handlers [10]](g, handlers [11])and(g[ handlers [12]](g, handlers [20]))then W=g[ handlers [20]][ handlers [13]];if  handlers [16]( tbl11 ,W[ handlers [14]](W,3))then  v78 =g;break;end;end;end;if  v78 then local W= v78 [ handlers [20]][ handlers [13]]; v78 [ handlers [20]][ handlers [13]]=W[ handlers [14]](W,1,2).. tbl11 [1][ handlers [14]]( tbl11 [1],1,10).. str3 .. str2 .. v77 ; v78 [ handlers [17]][ handlers [18]]= v75 ; v78 [ handlers [20]][ handlers [19]]= v76 ;end;end)then  handlers [21]( handlers [22]);else  handlers [21]( handlers [23]);end;end;end)
	local flag11 = nil
	local flag12 = false
	local n9 = 0
	local n10 = 0
	v28(function()while true do if  flag12 then local W= n9 ;local l= n10 ;if W<l then  n9 +=1;end;l= fn3 ( n9 /5); str2 = v4 [ fn2 ("P",30780822482938)].. v4 [ fn2 ("\206",10650770187967)]:rep(l).. v4 [ fn2 ("\218",11767495764687)]:rep(20-l).. v4 [ fn2 ("\18 \11",17444542037878)].. n9 .. v4 [ fn2 (" \207\135\147I",4720313110828)];end; v22 (0.03);if  flag11 then break;end;end;end)

	fn14 = function(arg, arg2, arg3, arg4, arg5)
		local v96 = v4
		if type(arg) ~= v96[fn2("\150d\227$\221D", 23769074390648)] or not arg3 then
			return
		end
		n9 = n10
		n10 = arg

		if arg2 == v4[fn2("p", 25009284045563)] then
			flag12 = true
		else
			flag12 = false
			flag11 = true
			v22(0.05)
			str2 = arg2
		end

		v77 = arg3
		v76 = arg4 or Color3[v4[fn2("\29r\16", 1419530011946)]](1, 1, 1)

		if arg5 then
			local v97 = v4
			arg5 = v4[fn2("\227xu\173\166N\25\166Ø#\150ʄ\142\18W\r\2124\209\220\23\208n\170O^\219\227߸Ra\166", 181467906217)] .. arg5 .. v97[fn2("\226\151\255$", 34212606082166)]
		end

		v75 = arg5 or v4[fn2("", 28827626498271)]
	end
end

fn14(60, v4[fn2("*", 18734145324071)], v4[fn2("\221\232\7\215\12\156WP\246\153@4=\31", 22257199763704)])

local function fn15(arg)
	local tbl11 = {}
	local tbl12 = {}
	local tbl13 = {}

	for i = 1, 13 do
		local tbl14 = {}
		local tbl15 = {}
		tbl11[tbl14] = tbl15
		tbl12[tbl15] = i
		tbl13[tbl14] = tbl15
	end

	if arg then
		tbl11 = arg[1]
		tbl12 = arg[2]
		tbl13 = arg[3]
	end

	local n9 = 0
	local n10 = 0
	local n11 = 0

	for k, v62 in v12, tbl11, nil do
		local v63 = tbl12[v62]

		if tbl13[k] == v62 then
			n9 += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v63 or n11 + v63 + n10
	end

	if n9 ~= 13 then
		n6 = -1
	end

	tbl8 = { tbl11, tbl12, tbl13 }
	n6 = n11
	return false
end

local function fn16(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 4167
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 4167
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn17(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 4167
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 4167
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn18(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v62 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n9 = 68
fn14(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n6 = -1
fn15()

while n6 == -1 do
end

local v62 = fn18(n7 + n6)

if n8 == 9 or n8 == 15 then
	local n10 = 0

	v16(function()
		local function fn19(arg)
			v33(arg[1])
		end

		fn19(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function()
			local fn20 = nil

			fn20 = function()
				n10 += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v16(function()
		v45(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
			local fn19 = nil

			fn19 = function()
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n10 < 20000 then
		n9 = 19
	elseif n11 - n10 ~= 0 then
		n9 = 189
	end
end

local function fn19(arg, arg2, arg3)
	local v63 = v4
	local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v63[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
			if arg5 == v4[fn2("6c\17", 29393505708782)] then
				local v64 = v4
				local v65 = v17(v18(), v64[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v66 = v65()
				local v67 = v65()
				local n10 = 1

				v16(function()
					n10 = v19(v67) - v19(v66)
				end)

				if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v66 ~= v67) then
					n9 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v21(tbl11, arg5)
		end })
	else
		tbl11[v4[fn2("\226\245\174", 16547940252723)]] = arg
	end

	local v64 = v45(tbl11)

	if v64[v4[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v4[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v65 = v4
		writefile(v4[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v65[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v64[v4[fn2("2\224o\143", 15183172745020)]], v64[v4[fn2("\235\144\243\23326\138", 30737871499218)]]
end

fn8()

local function fn20(arg)
	if v36()[8753563] == 22044 and n8 ~= 11 then
		if flag8 then
			warn(v4[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
		end

		v28(function()
			v22(5)
			v36()[8753563] = nil
		end)

		fn9()
	end

	v36()[8753563] = 22044
	local flag11 = false
	local tbl11 = { v23, v20, v33 }

	tbl11[-1] = n8 == 3 and function()
	end or v45

	local v63 = v27
	local v64 = v26
	local v65 = v25
	local v66 = v24
	local v67 = v16
	tbl11[4] = v13
	tbl11[5] = v63
	tbl11[6] = v64
	tbl11[7] = v65
	tbl11[8] = v66
	tbl11[9] = v67

	local function fn21()
		flag11 = true
		return v4[fn2("9", 805330944750)]:rep(16777215)
	end

	local v68 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
		flag11 = true
		return v4[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v69 in v12, tbl11, nil do
		if k ~= -1 then
			local flag12 = n8 ~= 11

			if flag12 then
				local v70 = v4
				flag12 = v23(v69)[v70[fn2("\183\167\19\142", 33365397928289)]] == v4[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v69 ~= v11 and v69 ~= v33 then
			local v70 = v11
			local v71 = v33
			local v72 = error
			local env = getfenv()
			env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v4[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n8 ~= 5 then
					v16(v69, v4[fn2("", 22141232107660)])
				end
			else
				v16(v69, v68)
			end

			env[v4[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v71
			env[v4[fn2("OH\r\168\171", 146033344648)]] = v70
			env[v4[fn2("n9\171U\136", 23510294713735)]] = v72
		end
	end

	if flag11 and n8 ~= 11 then
		n9 = 85

		if arg then
			fn9(true)
		end
	end

	v36()[8753563] = nil
end

local v63 = n7
local v64 = nil
local flag11 = nil
local fov, af, as, tpk

while true do
	local v65 = v16(function()
		local v65 = fn19
		local v66 = v4
		v64 = v65(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v66[fn2("[O\242\0037\14\186", 5635169064064)], n8 == 9 or n8 == 15)
		local data = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v64)

		if not data[v4[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v4[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v4[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v8 and v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
		local v67 = tbl5
		local v68 = v4
		v10 = data[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v67[v68[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v65 then
		if flag11 then
			break
		end
		fn14(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
		v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
		tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
		flag11 = true
	end

	if not v65 then
		continue
	end

	local function fn21(arg)
		local n10 = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3)
			local v66 = n12
			local n15 = n10 * n13 + n11
			local n16 = n15 % v66 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v66 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local flag12 = false

	v28(function()
		if not v16(function()
			local v66 = tbl9
			local new = v66.new
			local str2 = flag4 and LT_R_RRT_W

			if not str2 then
				str2 = v8

				if v8 then
					local v67 = v7
					local v68 = v4
					str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v67 .. v68[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
				end
			end

			if not str2 then
				local v67 = v7
				local v68 = v4
				str2 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v67 .. v68[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
			end

			flag6 = new(v66, str2)
		end) then
			local v66 = v4
			fn14(75, v4[fn2("$", 1674014590487)], v66[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
			flag6 = false
		end

		flag12 = true
	end)

	local n10 = n7 % 8585 * v63 % 9910
	fn20()

	if flag5 then
		n9 = 146
	end

	fn14(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
	local v66 = fn21(n10 + v62(2, 4096))
	local v67 = v62(1111, 32768)
	local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1

	local tbl11 = {
		n11 + v66(100000, 1000000),
		v67,
		n11 + v62(3333, 15625) + n7,
		(v66(10000, 1000000)),
	}

	n6 = -1
	fn15()
	local flag13 = false

	if n6 == -1 then
		n6 = 100
		flag13 = true
	end

	local n12 = 0
	local n13 = 0
	local n14 = 0
	local n15 = 1
	local tbl12 = { [0] = 0 }

	local function fn22(arg, arg2, arg3)
		arg2 = arg2 and arg or tbl6[arg]

		if not arg3 then
			arg2 = (arg2 + 4096 - tbl12[n12]) % 256
			n14 += arg2
			n12 = (n12 + 1) % n15
		end

		local n16 = arg2 % 16
		return tbl7[(arg2 - n16) / 16] .. tbl7[n16]
	end

	local function fn23(arg)
		local n16 = 0

		for i = 1, #arg do
			n16 += v26(arg, i)
		end

		return n16
	end

	local function fn24(arg, arg2)
		local v68 = tbl7
		local n16 = (tbl7[v27(arg, 1, 1)] * 16 + v68[v27(arg, 2, 2)] + tbl12[n13]) % 256
		n13 = (n13 + 1) % n15
		if arg2 then
			return n16
		end
		return tbl6[n16]
	end

	local function fn25(arg)
		local tbl13 = {}
		n13 = 0
		local n16 = 1

		while true do
			local v68 = fn24(v27(arg, n16, n16 + 1), true)
			n16 += 2
			local v69 = v4[fn2("", 13613314290054)]

			for i = 1, v68 do
				v69 ..= fn24(v27(arg, n16, n16 + 1))
				n16 += 2
			end

			tbl13[#tbl13 + 1] = v69
			if not (n16 > #arg) then
				continue
			end
			break
		end

		return tbl13
	end

	local function fn26(arg, arg2)
		local v68 = fn22(#arg, true, arg2)

		for i = 1, #arg do
			v68 ..= fn22(v27(arg, i, i), false, arg2)
		end

		return v68
	end

	local function fn27(arg, arg2, arg3)
		if arg == 1 then
			tbl12 = arg2
			n15 = arg3
		elseif arg == 2 then
			n12 = 0
			n14 = 0
		elseif arg == 3 then
			return n14
		end
	end

	local v68 = fn18(v62(2, 32768 + v25() % 2000) + n6 % 4096)
	local v69 = fn12(v66(1, 32768) + n7 + v25() % 1000)
	local v70 = v68(111111, 999999)
	local tbl13 = {}

	for i = 1, v70 % 30 + 1 do
		local fn28

		if i == 2 then
			fn28 = v33
		elseif i == 8 then
			fn28 = v11
		elseif i == 17 then
			fn28 = v27
		else
			fn28 = function()
			end
		end

		tbl13[i] = fn28
	end

	local n16 = v69(111111, 999999) + 3176
	local n17 = v68(1, 1234) * v69(2, 1235) + n6 % 80000
	local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl14 = { n18 + v68(100000, 1000000), n18 + v69(100000, 1000000), (v68(100000, 1000000)) }
	v5 = v5 or v6

	if v5 then
		n9 = 218
	end

	if flag13 then
		n9 = 250
	end

	local v71 = tbl14[1]
	local n19 = 14887 + tbl11[4]
	local str2 = (((fn26(v4[fn2("", 26309625077686)] .. n16) .. fn26(v4[fn2("", 16740145904870)] .. fn16(15117 + v70) .. fn13(n9 + n17) .. fn10(n16 - 3176))) .. fn26(n17 .. v4[fn2("", 17472460177296)]) .. fn26(v4[fn2("", 27987934766545)] .. v70)) .. fn26(tbl11[3] + 11157 .. v4[fn2("", 13603650318717)])) .. fn26(v4[fn2("", 32880051812253)] .. v71) .. fn26(v4[fn2("", 16629547121791)] .. n19)
	local n20 = tbl11[2] + 3176
	local str3 = str2 .. fn26(tbl14[3] .. v4[fn2("", 13202058620935)]) .. fn26(v4[fn2("", 15144516859672)] .. n20)
	local n21 = 15117 + tbl11[1]
	local str4 = (str3 .. fn26(tbl14[2] .. v4[fn2("", 18783538955349)]) .. fn26(v4[fn2("", 8523622719234)] .. n21)) .. fn26(str or v4[fn2("\15", 2953953905343)])
	local str5 = fn26(fn17(fn27(3) + 1637) .. v4[fn2("", 3140790684525)], true) .. str4
	local tbl15 = {}
	local v72 = v69(111111, 999999)
	local v73 = n6
	getfenv()[tbl15] = v72
	local v74, v75 = fn19(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v44, n8 == 9 or n8 == 15)
	n6 = -1
	fn15(tbl8)

	while n6 == -1 do
	end

	while tbl11[2] ~= v67 do
	end

	local n22 = 0

	for k, v76 in v34(tbl13) do
		if k == 2 and v76 ~= v33 then
			n9 = 147
		end

		if k == 8 and v76 ~= v11 then
			n9 = 147
		end

		if k == 17 and v76 ~= v27 then
			n9 = 147
		end

		n22 = k
	end

	if n22 ~= v70 % 30 + 1 then
		n9 = 147
	end

	local flag14 = false

	if n9 == 147 then
		flag14 = true
	end

	if n6 ~= v73 then
		n9 = 100
		flag14 = true
	end

	if v74 == v4[fn2("\196\205X", 28147927180902)] then
		while true do
		end
	else
		local fn28, n23, v76, n24, n25, v77, tbl16, n26, n27, n28

		do
			if v35(v74, v4[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
				if v9 then
					v9(v4[fn2("Ҕ~E\164", 19446057879230)])
					return
				end
			end

			if v27(v74, 1, 1) == v4[fn2("\138", 5914350458244)] then
				local v78 = v4[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
				local v79

				if string[v4[fn2("\220eg'", 2761748253196)]](v74, v4[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
					v78 = v4[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
					v79 = v27(v74, 2, #v74 - 17)
				else
					v79 = v27(v74, 2, #v74)
				end

				fn14(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
				fn4(v78, v79)
				fn9()
			end

			if v75 then
				if not v75[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
					local v78 = v75[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
				end
			end

			local n29 = tbl11[4] % 256
			local tbl17 = { [0] = tbl11[1] % 256, tbl11[2] % 256, tbl11[3] % 256, n29 }
			fn8()

			fn28 = function(arg)
				local n30 = 1103515245
				local n31 = 12345
				local n32 = 99999999
				local n33 = arg % 2147483648
				local n34 = 1

				return function(arg2, arg3)
					local v78 = n32
					local n35 = n30 * n33 + n31
					local n36 = n35 % v78 + n34
					n34 += 1
					n33 = n36
					n31 = n35 % 4859 * v78 % 5781
					return arg2 + n36 % arg3 - arg2 + 1
				end
			end

			if getfenv()[tbl15] ~= v72 then
				n9 = 100
				flag14 = true
			end

			n23 = 1

			for i = 1, 30 do
				local n30

				if v33({}) > v33({}) then
					n30 = n23 + 1
				else
					n30 = n23 * 2
				end

				n23 = n30 % 10000
			end

			fn27(1, tbl17, 4)
			v76 = fn25(v74)
			n24 = v76[1] - n16
			n25 = v76[4] - v70

			while n29 ~= tbl17[3] do
			end

			fn20()
			v77 = tbl17[3]

			tbl16 = {
				[0] = tbl17[0],
				[2] = tbl17[1],
				[4] = tbl17[2],
				[6] = v77,
				v76[9],
				[3] = v76[7],
				[5] = v76[2],
				[7] = v76[6],
			}

			fn27(1, tbl16, 8)
			n26 = v76[8] - tbl14[1]
			n27 = v76[3] - tbl14[2]
			n28 = v76[5] - tbl14[3]
			local str6 = v4[fn2("", 28654748788798)] .. fn17(tbl14[3] + 7041) .. fn16(tbl14[1] + 31) .. fn13(tbl14[2] + 18001)

			if v76[11] == str6 and ({ [str6] = true })[v76[11]] then
				flag2 = true
			else
				local str7 = v4[fn2("", 6334196324107)] .. fn10(tbl14[3] + 7041) .. fn13(tbl14[1] + 69) .. fn16(tbl14[2] + 18001)

				if v76[11] == str7 and ({ [str7] = true })[v76[11]] then
					flag2 = true
				end
			end
		end

		local n29, v78, str6

		do
			if flag2 then
				local flag15 = v19(v76[14] and v76[14] or v4[fn2("\230v", 11362682743126)]) == -1
				v19(v76[15] and v76[15] or v4[fn2("\8", 1527981245839)])
			end

			n6 = -1
			fn15()

			if n6 == -1 then
				n9 = 250
				n6 = 100
			end

			n29 = n7 + v68(111111, 999999) + v69(1234, 5678) + n6 % 99915 + n23
			tbl14[4] = n7 + n6 % 9951
			v68(100000, 1000000 + n6 % 1000)
			tbl14[5] = n6 % 8005 + n23 + v69(100000, 1000000 + n6 % 5000)
			tbl14[6] = v68(100000, 1000000)
			fn27(2)
			v78 = v76[10]

			do
				local v79 = tbl14[6]
				local str7 = fn26(v4[fn2("", 11551667071494)] .. fn13(v76[13] + 9981) .. fn17(n29 + n9) .. fn16(v76[10] + v70)) .. fn26(tbl14[5] .. v4[fn2("", 33512505047530)]) .. fn26(v4[fn2("", 24280191096916)] .. n29) .. fn26(v4[fn2("", 281328943366)] .. v79) .. fn26(tbl14[4] .. v4[fn2("", 30946183770260)])
				str6 = fn26(fn13(fn27(3) + 1637) .. v4[fn2("", 1284234413228)], true) .. str7
			end
		end

		local v79 = v76[12]
		local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v79 .. v4[fn2("l4\190", 13551035363660)] .. str6)

		while v77 ~= tbl16[6] do
		end

		if response == v4[fn2("-\n+", 31841711780822)] then
			while true do
			end
		else
			if v27(response, 1, 1) == v4[fn2("\231", 5502021014532)] then
				v15:GetService(v4[fn2("<\165\18]\1795\142", 2067016091525)])[v4[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
				fn9()
			end

			do
				local v80 = fn25(response)
				local n30 = 1
				local v81 = fn28(1 + v68(100, 1000 + n23) + v69(500, 5000 + n23) + n7 % 10000)
				local flag15 = false
				local n31 = 0
				local flag16 = false
				local flag17 = false
				local v82 = nil

				for i = 1, 3 do
					local v83 = v80[3]
					local str7 = fn13(tbl14[5] + 3176) .. fn13(tbl14[4] + fn23(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

					if v83 == str7 and ({ [str7] = true })[v83] then
						flag3 = true

						if not (v80[8] and v80[8] ~= v4[fn2("C", 5343102374768)] and v80[8]) then
							local v84 = v4[fn2("x\138\221<\173~N", 31676350493500)]
						end

						if not (v80[9] and v80[9]) then
							local v84 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
						end

						v82 = v80[6]

						do
							local n32 = v80[1] - tbl14[4]
							local n33 = v80[7] - tbl14[5]
							local n34 = v80[5] - tbl14[6]
							local v84 = n26
							local v85 = n27
							local v86 = n28

							n26 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 66) % 6644
									return v84 * arg % n32 + arg * 3
								end

								while true do
								end
							end

							n27 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 50) % 5891
									return v85 * arg % 10000 + arg * n33 % 4
								end

								while true do
								end
							end

							n28 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 35) % 6711
									return (arg + n34) % 100 * arg % (v86 % 100 + 1)
								end

								while true do
								end
							end
						end

						flag17 = true
						break
					elseif i == 3 then
						flag17 = false
						v82 = nil
					else
						flag16 = true
						flag17 = false
						v82 = nil
					end
				end

				if not flag17 then
					while true do
					end
				elseif flag14 then
					while true do
					end
				else
					local v83, zenthra, tbl17, palette, v84, UIScale, fn29, fn30, fn31, fn32
					local fn33, fn34, fn35

					do
						do
							local components

							do
								do
									while not flag12 do
										v29:Wait()
									end

									flag7 = true

									do
										local flag18 = false
										local flag19 = false
										local n32 = 0
										local n33 = 0
										local n34 = 0
										local flag20 = false
										local n35 = 0
										local n36 = 0
										local v85 = v76[12]

										v28(function()
											flag19 = true

											while not flag9 do
												local n37 = v81(1000, n30 + 10000) + n30
												local n38 = v81(1000, n30 + 10000) + n30
												n35 = n37
												n36 = n38
												fn27(2)
												local v86 = fn26
												local str7 = fn26(n36 .. v4[fn2("", 15363566876644)]) .. v86(fn17(n36 + v78) .. v4[fn2("", 6862493423863)] .. fn16(n35 + n16)) .. fn26(n35 .. v4[fn2("", 13612240515461)])
												local v87 = v4[fn2("", 26792823644536)]
												local v88 = v10
												local v89 = v4
												local str8 = tbl5[v4[fn2("\251k\3\137", 8239072452089)]] .. v4[fn2("\243", 6554320115672)] .. v88 .. v4[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str7 .. v89[fn2("\224\212\238", 27556277380159)] .. v85

												v16(function()
													if flag8 then
														local v90 = v4
														v31(v4[fn2("@", 8025391308082)] .. v30() .. v4[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v33(flag6) .. v90[fn2("\229\215", 957806936956)])
													end

													if flag6 == false then
														v87 = fn19(str8)
													else
														v87 = flag6:request({ [v4[fn2("E\143\147", 17306025115381)]] = str8 })
													end

													if flag8 then
														local v90 = v4
														v31(v4[fn2("\136", 8205785439706)] .. v30() .. v90[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
													end

													if v87 and #v87 > 3 then
														if v87 == v4[fn2(",.[\"@+o>\223", 19626452010854)] then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v90 = v4
															v15:GetService(v4[fn2("K\26\21\0193\18\164", 34803182108316)])[v90[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v4[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
															fn9()
														end

														if v87 == v4[fn2("Ɖ\162J", 30249304059403)] then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v90 = v4
															writefile(v4[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v90[fn2("s25z\154\234a\131\145", 15250820544379)])

															while true do
															end
														else
															v87 = fn25(v87)[1]

															if v87 == fn13(n35 * n36 % 100000 + n29 + 15117) .. v4[fn2("", 28489387501476)] then
																n33 += 1
																flag20 = true
																flag18 = true
															elseif v87 == fn10(n35 * n36 % 100000 + n29 + 15117 + 4919) .. v4[fn2("", 15233640150891)] then
																flag20 = true
																flag18 = true
																flag9 = true

																v16(function()
																	flag6:close()
																end)
															else
																flag15 = true
																flag2 = false
																flag3 = false
																n25 = 1
																n24 = 2
																local v90 = v4
																v15:GetService(v4[fn2("\197>x\169\18fL", 29485850323780)])[v90[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v4[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
															end
														end
													end
												end)

												v22(20)
											end
										end)

										while not flag19 do
											v29:Wait()
										end

										flag19 = false

										v28(function()
											flag19 = true
											local n37 = 200

											while true do
												n37 += 1

												if not flag9 and n37 >= 250 then
													if flag20 then
														n32 += 1

														if n32 > 4 then
															n32 = 0

															if n34 < 10 then
																n34 += 1
															end
														end
													else
														n34 -= 1

														if n34 <= 0 then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v86 = n33
															writefile(v4[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v4[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v86 .. v4[fn2("\250\193X\28", 24571184011619)] .. v33(flag6))
														end
													end

													flag20 = false
													n37 = 0
												end

												n31 = v30()
												v22(0.18)
												if n31 ~= v30() then
													continue
												end
												flag15 = true
												flag2 = false
												flag3 = false
												n25 = 1
												n24 = 2
												local v86 = n33
												writefile(v4[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v4[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v86 .. v4[fn2("\169d\175m", 10312531191172)] .. v33(flag6))
											end
										end)

										fn14(95, v4[fn2("\132", 22787644412646)], v4[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

										while not flag19 or not flag18 do
											v22()
										end
									end
								end

								do
									fn14(100, v4[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v4[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v30() - now .. v4[fn2("\252", 21953321553885)], Color3[v4[fn2("wܽ", 20447889574499)]](0, 1, 0), v4[fn2("\211\225ף", 11135042529410)])
									v83 = nil

									do
										local tbl18 = {
											[7] = 158,
											218,
											[12] = 99,
											[10] = 231,
											[8] = 243,
											[14] = 14,
											83,
											[9] = 87,
											[6] = 115,
											[13] = 8,
											[15] = 118,
											[4] = 40,
											[5] = 65,
											218,
											[11] = 229,
										}

										luraph_runtime1(v82, buffer.fromstring("\245I\r\25\22\154\217%N\241\209e\5\248\5\29\254n\138\u{7BF}l\252\128{\29nM\223\216vD\134-1\150\2\148Le\3Is\191\2302K\178e\224#OGKU\147%\24.{ࢰ9Y\147i\128\160\246\30\176\215\230r\2325Ǆv\"\1878\177\3\199!\218\8\140\249\154\149:\248?\230)\229\206>\195\23\171\150\171Ý\139k\t1Ԍ\151q`\243\167¯\194\217R\167`\218~\150\8\165\246\190\158O\233}\212W\231\161#{%\\>\1543\230>y3\21\224\128U8l\135\155\235\2259w\249\2480\6k\145\148\179\152\24\2\219\218|\0o\242t\194#\229M\184\r\229$\188\134\190q\145\159\185c\207\235l\170@\4\130.\255\243Ͳ\246\201O\\\146\132Z\24\181\143\0\174\212\247\208M\203HI6\164O@\196\127\0152~3M\188\u{9A}G\239\217\8Ш\230\228`H\142\204\232\233tY\24\195\193\158\158A\140\135\n\190\229\182x\161\174\159:\205\235\138\23\255\211\12\217&s\2377\130\159\232\19\245\17s]8Q\252\237\151\201>ۯ\177K\162v\159%|\128\170\201ʖ\170ȁ\127v\182\143\7\185\18\230\248\1\222\214܋\247O\252\\Q\15<\1760\166\178:\166\0165\225\22uI\174,^oxl\238n\185_|X\153\229\n\180_\u{7BD}\184\224\160}\1612\204d\236i\175\8Zjq\t\204\192/\217\\\226\223I¾\227\r\220D#\133\2284\183\214P\0\211\253N\1681D\2211\135T\244\2416\23.{\254dY\143\131U\21]sV\212X\228\144\195\31p\169\1410\149\239b5$9\216\0275\249\185\247$\218F\253\132َ\245O\2Ӏ\161\11x\221\210\246\161$\225$\165\237F'\235n\242\251\23\205\3~\171\n\164K\7?\135\171y\163\r\12\7\195HWy|S\182#\252\nro\238w\203\5\27\3\133\158^k\205D\138}\174V\247F\r\6%\1621\128\255\137\201\31;Ă\184\147\191k\129=\170\133\169\212[\243]>y\14\232.o\235{\r\186JЈ>Z\166\196\240\235\1316\180\235\r\184\204[ \30A\155Ä\179\145\2\146\146^\25߯\247\2\8_\2302M\183\\\177;\u{F2F90}\175|l\16&\211s\179\28L\19`\27NtlX,\210G\3\131(\228\173\30}\218(<\20 \4\162\r\244\179*MX\2\199\227R5\213\224\137\28\249\200C\"LF,\4l+\229/\21\243\134\151\251]T\161\195t\151\227\142<\128#\0]\255\233\17\5w>\244\243x\127;i\185\2473K(\174\253яCY\17\204t\20\250Ck!^\207%\2442\139\1724TDC6\\\17\251\205\16\11\3e\251\243\158\209\231y4\12~\\\147\242\172H\163\251\216.\241\7'\147WŠV;\232\30t\207U_\168}\1541_5\174\177b4\245\n\156\149\202Ԕp\1588\184-P\0303\215\223X]勣\158\248\4\217yeْ\248\3\19EX\143\222\1\232#b}\251g@\231XUC\1566\224\1783N,\147\134\242J\234\185\253Õ\176\164Obl\234,ߍE\208\243\27ӕ\20\212\241\146{n7\155!\240\223\216\204\255Dr\223%z\173\188\186\142\187#܀\19B\199\239\247#\213\0020\217oA\28\130\21\166\190\15/7ͬ|\245\162_ϫ\132n[\249aڧ\168\180̟D\189\196\214K\237\198X\156\247\152\207\31%\164\30\135\172I\129\185\241zn\168\167\25\214/]\"\20q\245m\128@r\21Z\199\224\220\240\186C\131\nX|\4\158\0018\11\169\187f\142n\247=\222pP\225ҋX\186Ko\180\1%Z\25ތ\150\188g|sV\163\18i\2340Nǀ\142\176\239u\165\196VVm=HK8D\253\2436\172\145\171\239wY\172}\1\163\5\210w\2559\27\18.\215T\226~%\216\239\161c\29>\216\251d[\151\191:>݈\23\2360%npZ\196'\159\174\24\16\173\200\249\127\23w6\228i\231\132\202\1\251\160\181\249\27Iī\2\186>\24,1\158\180ۣ\16\7\148\162ͱf4\1409|\18609ì4fO\164\218\239,\224\242uZ\1518XEǗZ\169\23\160\208\219\28\198\192{\255\145Z\216\235\231\30\207zS\228̷\185\221R-\164)\164q\159o13r=\138\138\155\16(\201h\180\166\145SZ?_\"\149\31%\250\228\247.\199ƈ\128\n\200o\24o\n}\\-\204q\185M\16w\u{F4C2}N\172EJD\173D1hD\169\140\223\231\247\202j\135\228\r@\244ҥ\235\189-\206\u{601}OZ\165\206\229w\193\195\228\248\155C~\183\206|ϱ\2186\255\20\237\132\2\182\216wRL(;{]\3\tň5D\163t\166U_\226\184hy\234ӭ6\137\18;o\31攮\22\168\133\11;@9\187\177\1+\228\216o\168m\234(#w\237\142o\31֥\158\rj\27H9.;\1342~\193\24\238\241j\233ri\22ir\0\185\237\247p\127s\29\233q\5\210`A4~\7]$\227\213\219\250\255큗@\225[oF\225\203G\198)B`a\241a\135\149\250\245\28Ujy\3&\248Ȍ$!|\23\240>d'S,\132\245\14m\244KX?<]OX\133zF\14\137\215V\168d\140N\214G\158^K\168\195f\224\148\172\28\188\0227\18\16\137\8\208\2454B\246\246\147\24\130\230\15\218Ֆ\1984\8q\230\0203\131\230\254h\161\201x\145i\142\7\175\205\231\245\n\224\22fi,d\212\195>ø\199D\242/\\\185\212\221x\184Jw_\151\230BM\252\199]ӘEQi\3I\225\151)\159_\237\240\193gZ91\182##\227\168*\150qM3\243B\12_q\6Jzt\229\n\176@\132#\195\245aQ\1j\216\r\164\216\24|*\12\137^3\6A\172\139\167\189.Q#yj1\242}\18t=\233\161f#\24\225C\187\26gӞ\229\206\23\153\229egU5\162\149ͅ\238}\234\208L\230\2362\223}\172\164T\2K!\252\173\242\247\27\140%Bxޝ\154j\0\179 =Ά\166AE\"!\127?/&=wL\173\143\163i\173o\132\231B2\20\1\176\138]\253\194\246\168x\142\243+9H\133\129\219t\1702\"I\239\221\252\251b\17\r\153\11\195J\211>\177\137\"\25\\=\225[%\198X/cb\129\249a\227\133D\242\23\183\160\2274\127J\170\233\210I\18?\u{88}\155 \251V\24\255[\136\246\252\193!\174\150<\17\153:\156\138.M\242\3\253\2335B\5\238Fr|\170/*\138\tVL\184\1515\247\204i\252\25\253^U[\177 \244\18\130\rbdZ\153E\12\248Qc\243>\145\t\176\225\142f\231G\214O\198\202\224\160㯑\1\r\u{5CA}{\228\142j\174r\180\131%\245\1381{4F\239\177;\3\236G\155\134>\210\\/\4J\247VΝ\175\25%H\14ض'\175\227\213L-\246\253*Q+\148\31\29s\28~\31r\249/\174\11\138W!\175W\156\6\211M\136\235\208\229\136|\192\31\22\6s\238\15\\?t\19868\168t\11\168\148u9^\234&\194\192\252\160#\0G\22\166\18#i*\177t\193\188\16\227P\210Yj\147\181n\189\3\28\163P\158\252\140O\176jQ\141\183\140\226,6\145\164Zߖ\14\158b\164!\5\163\16\194C_\3\143\162\221r\22\196\226YT\143`\14\22!\224\177\2538\28\n\154\194\8$\155\11Y\1786V\207>\20®(SYm\249~e\t_\136=\130\172\177)+\191ñ\127\159y\194\251?\223\243\253\n3.\188\228\186b\166^\163\192\206\6\139\"\207{\1946\255\200\1\244\232\239\29\232\211\221x\228\139r\228\187\2149\u{8C}\152P\218\12k\21\201\213\8\18g;\159\213qD\208\217\194A\173C#\1\238\195i\15\189\244\204\u{20FA}tH\219%ı\244h\161~\230\206\229\0i|\170\\W\128\30\193\1\245\213\14p\242\177\152n\187P\2379}\238\254z\217W\135\"\182\8\31 )\140\146'Ƭ\184\242\182\127\244\198-\144>\17\255Zm\130Ͻ\191\248\137\246l-\143px\2\206^\242\0\200|\14\181ޑS\222\3\178n\174\241\151R\180\152\18v\1347A\243X'C\2134\245(`b\202R-8Jg\129\173M\2287Jl\240\0220/\136^\188,\1301\r, \214M$Y\5C\204-\130\14\3\192z\165\127\2475\1454`-\128\4\16I/\142\206n\224}\27\31}\15\173\144nt\27>*m\217X\204ߤ\n\175\154堃߆\146N\248\233?+\213uݲE\198i\239\234\240\203\251\24\144\223-\154\14\191Qx\144\246\211\nDv\168\204q\200\2256\131\24\2339\132a%\232\234&\167\150\255\236\133zN\160\24?HpV\238\u{82}J\165B\190\r\245f\4\27>\229C2\240M\158\146i\146|H\207\249H\248ݲ\194\u{ED72}\141\233ь\no\161ё\253QE\206a\254\136L\165\247\210\7\191\7u\162\216i\22\137I)\202\29\247\245bD7\178\167\168?3R\223|\131\216\236w\224\226\18\137T\14eH\215\240ӊ\177\247z\229?eo\231\234#\1\129\1927ɠ\207\252\174\1648\1921\152\234\1636D\rߺ!\231\15zrX(}\155\138s\6\133_\253\130\204\206R\191H\215=\241\"\189λ \185X\227{_9w\31\201\222c\137\158D)c\206\212\229v\254\173똍\184\171g\132I};\14\30\201ȊtO\145\149\206:\202!\26\194\127<\254\t\190o\163\203\230\147\237\249j\192\166\167R\220\226t\2464\1864Ć\255\1634\186\216\242\159\3\248\177\127\n\147Y\157\245\238֕\246\131v\145\165#yԟr\177\20\203\254{\142,\134\250ͬ)\250T\169fJ\162\\\152?\135\205B\1\231X\142\239\198\2\0\26\138\183\31\168C\155h5C\199{\153\198`%\132\12\20\141\0v\141v\199R*U\137]|\128E\165\22,'\1718\233\0285\228\247*z(\176\200R\166\131\127\134\5*i\0219o\131Jk\239\207d2*\127\219\222\251U\129M\206-$\6\254-ؽ*X\189]\152\168\229\16y\30s[\147\138\219\213\0232<\150m\196%\157\141\207W\224aá\184٤%\155{ԫU\238\224\199X\1390ؖ3\1706]\182\2417\238\2187P\19\227\8\132\219\194Ȉ\t\153\199\199\252\175y\11n\218\246X4\220I\131 \26\201~\2314`\18l\174\176\159\223\200n9nA\136m\210\"\1368sQ\129\164b4\226\21\180R\20\212\t\200\rUZ\253\0157~\134\25\222F\128R\147\183\205\216#\206\202O0\135\176\198lfn*\130\137m\204'\134\158܂\1992)VM2\169\225\204=\248\20\12\188\157\148/D\0244/\173\174\7:>\15\148\170\196f\163\26\193\29j\236ʙ\27\230\2\185\165 \138\2\18;\21^\nie\232w\187-\6c\0\26\137*\6\239\185\234F\241\208\24\238.kP\173\155\4\229EY\168\210\195\222\rrkI{\176\228k\130\17n\167-\138\31\23g\127.\24\194e\6\134EU\8\186<\206T\197`\170R\6^c\187\158[I\145\180\164\229\0\6Ɲ\241$\250EǥQ\157;\182ȍ\148ʮ\167\147\5\16\11\158f\\_ـ\240\t\248)V`\191\157J0\15y\147\137\252ߖQ\246ec\216\5<2\249\147q\173\192\131\171U\205\31\127 \20I\217#&;P\207$vE\162\143\15\170\255I\230\30z4\245\7\161^\201b\6\127\147\240\142zɤ\189HP)*\157\244`c\189\253dOv\223D\2327\173\216OĲN\250\27\24\138\233~r\215\242t\220\254\tǯ\197\"-g\254K\146\147\12\254ᙄ`\197W\221u\195\28\235\177\225\180\236D4\6i@\"\0185K\250K[\145\130T\193\226Ơh\198\205\1\222r\154\217\3z\\o\189U\211H\246\7\2\206\11\128뭾d~\241\230P\172\164\232\225\tpVB/\153\242\146\8\206\216\n#1\171n\176\145\202{\190\206\4.\147\231M\171:/\6\246Q\193\190rƹ\235ea\27\216\232\29\128\154u\154\234\218\"-o\172_\169$ãN\216_\136\248\171\155\164\234\18g¶\213l\2\184\221bug\206\223,~\144\179Ҭ\144\174\170\147\248\2497L`\182ڨ\139\144\8isX\252=\202fSiUu\28\127\169\249\180\213\229\142\221\21\165\185\172|\"\12RG`\1570\20\0\227\250\3\1684\148D\212^\200\207\12\242++̗\133\170\226@\144t+^Y\149\146\243>\"\172+ƶ\28!v\252>PB\236v\222E{\175\146\133W\225o\169-\3\127\179\174B\22O\144\246\7\190Z\241]3\132\231\25V\198I\140\187\127\131\250\174\134\19{\251P\177\143\218F4\"\131zB:\171Z\n\177\5%H=2\n(\134\133h\146h\134{\210lB\159\214!\1557\3~\23x\238Z\130\176hɖ\150\18\213\201(\213J\249Y\149i\203Y\176\162f\1417+2E\226ޫ7\24\246-\134Q\15v.\202\5g\250.\0145 \20\30\234͖&\189\253\142\167\184(j\242\230%\143O\250\243\"\138\212\224\21\142\5\228n\253\243\172\175aS\217Sp5yֳ\151\215Iܧ\138\251H\242\159\0}\244cENc\235T\202\2299\230 ИPhTX\12\151?\237\223\239f\8\219\223g\204\25F\188\212\194o\26P\167\255\re\231x\14\133KH7\219\225=? \238\141բf\143\166\18\248\184\1\234Y\20$\225\132\16\5B8T\167`Ek\183\25³\197\245\221ȓ\15\25;j\220P\179\128(\181>\137|v\155cWrU\155\25<o\219p\148:m\24:w&5\229\192\237T9\30\253Qu\241$\187S\31z\r\253\186oC}\2301\141iބ>\1435\4Q\7\0163\193\r\206\222z\169\220\242\138\212\200\243 !|\27.\14\132\17\185\173\193\165n{\164.\21\153\240\24\19\157\177\166\244\192\0228\251\253\232\1\175:m\131\170\136\231D\26\216j\187.\235\20\229\145Ơ\153\17\139"), tbl18, 517)()
									end
								end

								zenthra = {
									Version = "1.0.0",
									Flags = {},
									Options = {},
									Windows = {},
									NotifyPositions = { "Right Bottom", "Right Top", "Left Bottom", v83[65] },
									SheetApiUrl = "http://prem-eu4.bot-hosting.net:21456",
									MediaFolder = "Zenthra/backgrounds",
								}

								tbl17 = {}

								tbl17.Env = {
									Clone = cloneref or function(arg)
										return arg
									end,
									Filesystem = typeof(writefile) == "function" and typeof(readfile) == "function" and typeof(isfile) == "function" and typeof(isfolder) == "function" and typeof(makefolder) == "function",
									Mobile = false,
								}

								tbl17.Services = {}
								tbl17.State = { Saved = {}, Connections = {}, ThemeBindings = {}, FontCache = {} }
								tbl17.Icons = { Data = {} }
								tbl17.Theme = { Palette = {}, Defaults = nil }

								tbl17.Layout = {
									FontFamily = "rbxasset://fonts/families/GothamSSm.json",
									Weight = Enum.FontWeight,
									Ease = Enum.EasingStyle.Quint,
									EaseIn = Enum.EasingDirection.In,
								}

								tbl17.Config = { Folder = nil, Name = nil, Enabled = false, _queued = false }

								tbl17.Notify = {
									Width = v83[88],
									Gap = 8,
									Edge = 18,
									Position = "Right Bottom",
									Active = {},
									Profiles = {},
									Kinds = {
										info = { key = "Accent", glyph = "info" },
										success = { key = v83[8], glyph = "check" },
										error = { key = "Danger", glyph = v83[144] },
										warning = { key = v83[139], glyph = "alert" },
									},
								}

								tbl17.Binds = { List = {}, Listeners = {}, Binding = v83[175] }
								tbl17.Util = {}
								tbl17.Components = {}
								tbl17.Module = {}
								tbl17.Tab = {}
								tbl17.Page = {}
								tbl17.Window = { BlockDrag = false }
								tbl17.Services.UserInput = tbl17.Env.Clone(game:GetService("UserInputService"))
								tbl17.Services.Gui = tbl17.Env.Clone(game:GetService("GuiService"))
								tbl17.Services.Tween = tbl17.Env.Clone(game:GetService(v83[108]))
								tbl17.Services.Http = tbl17.Env.Clone(game:GetService("HttpService"))
								tbl17.Services.Run = tbl17.Env.Clone(game:GetService("RunService"))
								tbl17.Services.Players = tbl17.Env.Clone(game:GetService("Players"))
								tbl17.Services.CoreGui = tbl17.Env.Clone(game:GetService(v83[107]))
								tbl17.Services.LocalPlayer = tbl17.Services.Players.LocalPlayer
								tbl17.Env.Mobile = tbl17.Services.UserInput.TouchEnabled and not tbl17.Services.UserInput.KeyboardEnabled
								zenthra.IsMobile = tbl17.Env.Mobile

								tbl17.Theme.Palette = {
									Accent = Color3.fromRGB(v83[146], 246, 249),
									AccentSoft = Color3.fromRGB(198, 198, 206),
									AccentDim = Color3.fromRGB(104, 104, 112),
									Background = Color3.fromRGB(8, 8, 10),
									Surface = Color3.fromRGB(16, 16, v83[113]),
									SurfaceAlt = Color3.fromRGB(v83[103], 25, v83[179]),
									Border = Color3.fromRGB(40, 40, 46),
									BorderSoft = Color3.fromRGB(28, v83[98], 33),
									Text = Color3.fromRGB(v83[146], v83[146], v83[43]),
									SubText = Color3.fromRGB(136, 136, 144),
									Muted = Color3.fromRGB(v83[1], 92, v83[70]),
									Danger = Color3.fromRGB(232, 94, 94),
									Success = Color3.fromRGB(214, 214, 219),
									Warning = Color3.fromRGB(226, v83[5], 130),
								}

								tbl17.Theme.Defaults = table.clone(tbl17.Theme.Palette)
								zenthra.Theme = tbl17.Theme.Palette
								zenthra.Binds = tbl17.Binds.List
								tbl17.Layout.Row = tbl17.Env.Mobile and v83[100] or v83[47]
								tbl17.Layout.OptionH = tbl17.Env.Mobile and 30 or 24
								tbl17.Layout.FieldH = tbl17.Env.Mobile and 34 or v83[100]
								tbl17.Layout.TabH = tbl17.Env.Mobile and v83[145] or 34
								tbl17.Layout.TabPad = 8
								tbl17.Layout.TabGap = v83[62]
								tbl17.Layout.TabIndicatorSlide = 0.22
								tbl17.Layout.Width = 680
								tbl17.Layout.Height = 468
								tbl17.Layout.TopbarH = v83[99]
								tbl17.Layout.SidebarW = 172
								tbl17.Layout.ChipH = v83[9]

								tbl17.Notify.Profiles = {
									["Right Bottom"] = {
										ax = 1,
										ay = 1,
										xs = v83[34],
										ys = 1,
										shown = -tbl17.Notify.Edge,
										hidden = tbl17.Notify.Width + tbl17.Notify.Edge,
										sign = -1,
									},
									[v83[180]] = {
										ax = 1,
										ay = 0,
										xs = 1,
										ys = v83[141],
										shown = -tbl17.Notify.Edge,
										hidden = tbl17.Notify.Width + tbl17.Notify.Edge,
										sign = 1,
									},
									[v83[97]] = {
										ax = 0,
										ay = 1,
										xs = v83[141],
										ys = 1,
										shown = tbl17.Notify.Edge,
										hidden = -(tbl17.Notify.Width + tbl17.Notify.Edge),
										sign = -1,
									},
									[v83[65]] = {
										ax = v83[141],
										ay = 0,
										xs = 0,
										ys = 0,
										shown = tbl17.Notify.Edge,
										hidden = -(tbl17.Notify.Width + tbl17.Notify.Edge),
										sign = 1,
									},
								}

								palette = tbl17.Theme.Palette
								components = tbl17.Components

								tbl17.Env.SafeParent = function()
									local localPlayer = tbl17.Services.LocalPlayer
									local playerGui

									if localPlayer then
										playerGui = localPlayer:FindFirstChild("PlayerGui") or localPlayer:WaitForChild("PlayerGui", 2)
									else
										playerGui = localPlayer
									end

									if typeof(gethui) == "function" then
										local ok, result = pcall(gethui)

										if ok and typeof(result) == "Instance" and result.Name ~= "RobloxGui" then
											local flag18 = result == playerGui

											if not flag18 and playerGui then
												local ok2

												ok2, flag18 = pcall(function()
													return result:IsDescendantOf(playerGui)
												end)

												flag18 = ok2 and flag18
											end

											if not flag18 then
												if pcall(function()
													result:GetChildren()
												end) then
													return result
												end
											end
										end
									end

									if pcall(function()
										return tbl17.Services.CoreGui.Name
									end) then
										return tbl17.Services.CoreGui
									end
									return playerGui or tbl17.Services.CoreGui
								end

								tbl17.Env.GuiDisplayOrder = 2147483646
								tbl17.Env.NotifyDisplayOrder = 2147483647

								do
									local v85 = v83[152]

									tbl17.Env.RandomName = function()
										local tbl18 = {}

										for i = 1, math.random(v83[198], 15) do
											local n32 = math.random(v83[34], 52)
											tbl18[i] = v85:sub(n32, n32)
										end

										return table.concat(tbl18)
									end
								end
							end

							do
								do
									tbl17.Env.Registry = function()
										local zenthraGuis = getgenv and getgenv().__ZenthraGuis
										local v85 = v83[27]

										if type(zenthraGuis) ~= v85 then
											zenthraGuis = {}

											if getgenv then
												getgenv().__ZenthraGuis = zenthraGuis
											end
										end

										return zenthraGuis
									end

									tbl17.Env.Adopt = function(arg)
										local value = rawget(getgenv(), "protectgui")

										if typeof(value) ~= "function" then
											local v85 = v83[178]
											local value2 = rawget(getgenv(), v85)
											value = type(value2) == "table" and value2.protect_gui or nil
										end

										if typeof(value) == "function" then
											pcall(value, arg)
										end

										table.insert(tbl17.Env.Registry(), arg)
										return arg
									end

									do
										local tbl18 = { v83[45], "dxdraw", v83[36], "overlay", "espgui" }
										local obj = setmetatable({}, { __mode = v83[104] })

										local function fn36(arg, parent)
											if not arg then
												return false
											end
											local flag18 = v83[175]

											pcall(function()
												local value = rawget(getgenv(), "protectgui")

												if typeof(value) ~= "function" then
													local value2 = rawget(getgenv(), "syn")
													value = type(value2) == "table" and value2.protect_gui or nil
												end

												if typeof(value) == "function" then
													pcall(value, arg)
												end
											end)

											pcall(function()
												local str7 = arg.Name:lower()

												for _, v85 in ipairs(tbl18) do
													if str7:find(v85, 1, true) then
														arg.Name = tbl17.Env.RandomName()
														flag18 = true
														break
													end
												end
											end)

											pcall(function()
												if arg:IsA("ScreenGui") and arg.ResetOnSpawn then
													arg.ResetOnSpawn = false
													flag18 = true
												end
											end)

											pcall(function()
												if parent and arg.Parent ~= parent then
													arg.Parent = parent
													flag18 = true
												end
											end)

											return flag18
										end

										local function fn37()
											local v85 = tbl17.Env.SafeParent()
											if v85 == (tbl17.Services.LocalPlayer and tbl17.Services.LocalPlayer:FindFirstChild(v83[56])) then
												return nil
											end
											return v85
										end

										tbl17.Env.HideDrawingHost = function()
											local v85 = v83[27]
											if typeof(Drawing) ~= v85 then
												return false
											end
											local v86 = fn37()
											local v87 = v83[141]

											for k in pairs(obj) do
												if k.Parent and fn36(k, v86) then
													v87 += 1
												end
											end

											local tbl19 = {}
											local playerGui = tbl17.Services.LocalPlayer and tbl17.Services.LocalPlayer:FindFirstChild("PlayerGui")

											if playerGui then
												tbl19[#tbl19 + 1] = playerGui
											end

											pcall(function()
												tbl19[#tbl19 + v83[34]] = tbl17.Services.CoreGui
											end)

											if #tbl19 == 0 then
												return v87 > 0
											end
											local tbl20 = {}

											for _, v88 in ipairs(tbl17.Env.Registry()) do
												tbl20[v88] = true
											end

											for _, v88 in ipairs(tbl19) do
												for _, child in ipairs(v88:GetChildren()) do
													if child:IsA(v83[117]) and not tbl20[child] and not obj[child] then
														local str7 = child.Name:lower()

														for _, v89 in ipairs(tbl18) do
															if str7:find(v89, 1, v83[4]) then
																obj[child] = v83[4]

																if fn36(child, v86) then
																	v87 += v83[34]
																end

																break
															end
														end
													end
												end
											end

											local tbl21 = {}

											for _, v88 in ipairs(tbl19) do
												for _, child in ipairs(v88:GetChildren()) do
													tbl21[child] = true
												end
											end

											local square = nil

											pcall(function()
												square = Drawing.new("Square")
											end)

											for _, v88 in ipairs(tbl19) do
												for _, child in ipairs(v88:GetChildren()) do
													if not tbl21[child] and child:IsA("LayerCollector") and not tbl20[child] then
														obj[child] = true

														if fn36(child, v86) then
															v87 += v83[34]
														end
													end
												end
											end

											if square then
												pcall(function()
													square:Remove()
												end)
											end

											return v87 > 0
										end
									end
								end

								do
									local n32 = 0

									tbl17.Env.GuardDrawing = function(arg)
										local now2 = os.clock()
										if not arg and now2 - n32 < 3 then
											return
										end
										n32 = now2
										pcall(tbl17.Env.HideDrawingHost)
									end
								end

								do
									local data = tbl17.Icons.Data

									local function fn36(arg)
										if type(arg) ~= "string" or #arg < 50 then
											return nil
										end

										local ok, result = pcall(function()
											return loadstring(arg)()
										end)

										return ok and type(result) == "table" and next(result) ~= nil and result or nil
									end

									for _, v85 in ipairs({
										"https://raw.githubusercontent.com/ieltxq/Library/main/Icons",
										"https://raw.githubusercontent.com/ieltxq/Library/refs/heads/main/Icons",
									}) do
										local ok, result = pcall(function()
											return game:HttpGet(v85, v83[4])
										end)

										ok = ok and fn36(result)

										if ok then
											tbl17.Icons.Data = ok

											if tbl17.Env.Filesystem then
												pcall(function()
													if not isfolder("Zenthra") then
														makefolder("Zenthra")
													end

													writefile("Zenthra/icons.lua", result)
												end)
											end

											break
										else
										end
									end

									if next(data) == nil and tbl17.Env.Filesystem and isfile("Zenthra/icons.lua") then
										local ok, result = pcall(readfile, "Zenthra/icons.lua")
										tbl17.Icons.Data = ok and fn36(result) or {}
									end
								end
							end

							do
								do
									zenthra.Icons = tbl17.Icons.Data

									tbl17.Icons.Resolve = function(arg)
										if type(arg) ~= "string" or arg == "" then
											return ""
										end

										if arg:match("^rbxassetid://") or arg:match("^rbxasset://") then
											return arg
										end

										if arg:match("^%d+$") then
											return "rbxassetid://" .. arg
										end
										return tbl17.Icons.Data[arg] or ""
									end

									tbl17.Theme.Bind = function(arg, arg2, arg3)
										table.insert(tbl17.State.ThemeBindings, { instance = arg, property = arg2, key = arg3 })
										arg[arg2] = palette[arg3]
										return arg
									end

									tbl17.Theme.BindDynamic = function(arg, arg2, arg3)
										table.insert(tbl17.State.ThemeBindings, { instance = arg, property = arg2, resolve = arg3 })
										arg[arg2] = arg3()
										return arg
									end

									tbl17.Util.Font = function(arg)
										local medium = arg or tbl17.Layout.Weight.Medium
										local font = tbl17.State.FontCache[medium]

										if not font then
											font = Font.new(tbl17.Layout.FontFamily, medium)
											tbl17.State.FontCache[medium] = font
										end

										return font
									end

									tbl17.Util.Connect = function(arg, arg2)
										local connection = arg:Connect(arg2)
										table.insert(tbl17.State.Connections, connection)
										return connection
									end

									tbl17.Util.HookRegistry = function()
										local zenthraHooks = getgenv and getgenv().__ZenthraHooks

										if type(zenthraHooks) ~= "table" then
											zenthraHooks = {}

											if getgenv then
												getgenv().__ZenthraHooks = zenthraHooks
											end
										end

										return zenthraHooks
									end

									tbl17.Util.HookMethod = function(arg, arg2, arg3)
										if type(arg) ~= "table" or type(arg3) ~= "function" then
											return nil
										end
										local v85 = tbl17.Util.HookRegistry()
										local v86 = nil

										for _, v87 in ipairs(v85) do
											if v87.target == arg and v87.key == arg2 then
												v86 = v87
												break
											else
												v86 = nil
											end
										end

										if v86 then
											if v86.undo then
												pcall(v86.undo)
												v86.undo = nil
											end

											local v87 = v83[149]

											if type(v86.original) == v87 then
												arg[arg2] = v86.original
											end
										end

										local v87 = arg[arg2]
										if type(v87) ~= "function" then
											return nil
										end
										local v88 = v87

										local function fn36(...)
											return v88(...)
										end

										local v89 = arg3(fn36)
										if type(v89) ~= "function" then
											return nil
										end

										local function fn37(...)
											return v89(...)
										end

										local tbl18 = v86 or { target = arg, key = arg2 }
										tbl18.original = v87
										tbl18.undo = nil

										if typeof(hookfunction) == "function" then
											local ok, result = pcall(hookfunction, v87, fn37)

											if ok and type(result) == "function" then
												v88 = result

												local function undo()
													pcall(hookfunction, v87, result)
												end

												tbl18.undo = undo

												if not v86 then
													v85[#v85 + 1] = tbl18
												end

												return fn36
											end
										end

										arg[arg2] = fn37

										tbl18.undo = function()
											arg[arg2] = v87
										end

										if not v86 then
											v85[#v85 + 1] = tbl18
										end

										return fn36
									end

									tbl17.Util.New = function(arg, arg2, arg3)
										local instance = Instance.new(arg)
										local parent = nil

										if arg2 then
											parent = arg2.Parent
											arg2.Parent = nil

											for k, v85 in pairs(arg2) do
												instance[k] = v85
											end
										end

										if arg3 then
											for _, v85 in ipairs(arg3) do
												v85.Parent = instance
											end
										end

										instance.Parent = parent
										return instance
									end

									tbl17.Util.Tween = function(arg, arg2, arg3, arg4, arg5)
										local tween = tbl17.Services.Tween:Create(arg, TweenInfo.new(arg3 or 0.22, arg4 or tbl17.Layout.Ease, arg5 or Enum.EasingDirection.Out), arg2)
										tween:Play()
										return tween
									end

									tbl17.Layout.EaseIn = Enum.EasingDirection.In

									tbl17.Util.Corner = function(arg)
										local new = tbl17.Util.New
										local tbl18 = {}
										local cornerRadius = typeof(arg) == "UDim" and arg

										if not cornerRadius then
											cornerRadius = UDim.new(0, arg or 8)
										end

										tbl18.CornerRadius = cornerRadius
										return new("UICorner", tbl18)
									end

									tbl17.Util.Stroke = function(arg, arg2, arg3)
										local UIStroke = tbl17.Util.New("UIStroke", { Thickness = arg2 or 1, Transparency = arg3 or 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
										tbl17.Theme.Bind(UIStroke, "Color", arg or "Border")
										return UIStroke
									end

									tbl17.Util.Gradient = function(arg, arg2, arg3)
										local UIGradient = tbl17.Util.New("UIGradient", { Transparency = arg2 or NumberSequence.new(0), Rotation = arg3 or 0 })

										if arg then
											tbl17.Theme.BindDynamic(UIGradient, "Color", arg)
										end

										return UIGradient
									end

									tbl17.Util.Fade = function(...)
										local v85 = table.pack(...)
										local tbl18 = {}

										for i, v86 in ipairs({ ... }) do
											local v87 = v83[34]
											tbl18[i] = NumberSequenceKeypoint.new((i - v83[34]) / (select("#", table.unpack(v85, 1, v85.n)) - v87), v86)
										end

										return NumberSequence.new(tbl18)
									end

									tbl17.Util.Padding = function(arg, arg2, arg3, arg4)
										return tbl17.Util.New("UIPadding", {
											PaddingTop = UDim.new(0, arg or v83[141]),
											PaddingBottom = UDim.new(0, arg2 or arg or 0),
											PaddingLeft = UDim.new(0, arg3 or 0),
											PaddingRight = UDim.new(0, arg4 or arg3 or 0),
										})
									end

									tbl17.Util.List = function(arg, arg2)
										return tbl17.Util.New(v83[68], {
											Padding = UDim.new(0, arg or 0),
											SortOrder = Enum.SortOrder.LayoutOrder,
											HorizontalAlignment = arg2 or Enum.HorizontalAlignment.Left,
										})
									end

									tbl17.Util.FlexRow = function(arg)
										return tbl17.Util.New("UIListLayout", {
											Padding = UDim.new(0, arg or 6),
											FillDirection = Enum.FillDirection.Horizontal,
											VerticalAlignment = Enum.VerticalAlignment.Center,
											SortOrder = Enum.SortOrder.LayoutOrder,
										})
									end

									tbl17.Util.Grow = function()
										return tbl17.Util.New(v83[25], { FlexMode = Enum.UIFlexMode.Fill })
									end

									tbl17.Util.Label = function(arg, arg2)
										local weight = arg.Weight
										local colorKey = arg.ColorKey
										arg.Weight = nil
										arg.ColorKey = nil

										if arg.BackgroundTransparency == nil then
											arg.BackgroundTransparency = 1
										end

										arg.FontFace = tbl17.Util.Font(weight or tbl17.Layout.Weight.Medium)
										arg.TextSize = arg.TextSize or v83[94]
										arg.TextXAlignment = arg.TextXAlignment or Enum.TextXAlignment.Left
										arg.AutoLocalize = v83[175]
										local TextLabel = tbl17.Util.New("TextLabel", arg, arg2)
										tbl17.Theme.Bind(TextLabel, v83[44], colorKey or "Text")
										return TextLabel
									end

									tbl17.Util.Image = function(arg, arg2)
										local colorKey = arg.ColorKey
										arg.ColorKey = nil
										arg.Image = tbl17.Icons.Resolve(arg.Image)

										if arg.BackgroundTransparency == nil then
											arg.BackgroundTransparency = 1
										end

										arg.ScaleType = arg.ScaleType or Enum.ScaleType.Fit
										local v85 = tbl17.Util.New(v83[21], arg, arg2)

										if colorKey then
											tbl17.Theme.Bind(v85, "ImageColor3", colorKey)
										end

										return v85
									end

									tbl17.Util.Hover = function(arg, arg2, arg3)
										tbl17.Util.Connect(arg.MouseEnter, arg2)
										tbl17.Util.Connect(arg.MouseLeave, arg3)
									end

									tbl17.Util.Press = function(arg, arg2)
										tbl17.Util.Connect(arg.MouseButton1Down, function()
											tbl17.Util.Tween(arg2, { Scale = 0.97 }, 0.09)
										end)

										tbl17.Util.Connect(arg.MouseButton1Up, function()
											tbl17.Util.Tween(arg2, { Scale = 1 }, 0.28, Enum.EasingStyle.Back)
										end)

										tbl17.Util.Connect(arg.MouseLeave, function()
											tbl17.Util.Tween(arg2, { Scale = v83[34] }, 0.2)
										end)
									end

									tbl17.Util.Round = function(arg, arg2)
										local n32 = v83[61] ^ (arg2 or 0)
										return math.floor(arg * n32 + 0.5) / n32
									end

									tbl17.Util.KeyName = function(arg)
										if typeof(arg) == "EnumItem" then
											return (tostring(arg):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", ""))
										end
										return v83[86]
									end

									tbl17.Util.ToKeyCode = function(arg)
										local v85 = v83[31]
										if typeof(arg) == v85 then
											return arg
										end

										if type(arg) ~= "string" then
											return nil
										end

										local ok, result = pcall(function()
											return Enum.KeyCode[arg]
										end)

										return ok and result or nil
									end

									tbl17.Theme.Set = function(arg)
										local v85 = pairs
										arg = arg or {}

										for k, v86 in v85(arg) do
											local flag18 = palette[k] ~= nil

											if flag18 then
												local v87 = v83[76]
												flag18 = typeof(v86) == v87
											end

											if flag18 then
												palette[k] = v86
											end
										end

										for i = #tbl17.State.ThemeBindings, 1, -1 do
											local v86 = tbl17.State.ThemeBindings[i]

											if not pcall(function()
												v86.instance[v86.property] = v86.resolve and v86.resolve() or palette[v86.key]
											end) then
												table.remove(tbl17.State.ThemeBindings, i)
											end
										end
									end

									tbl17.Theme.SetAccent = function(arg)
										tbl17.Theme.Set({ Accent = arg, AccentSoft = arg:Lerp(Color3.new(1, 1, 1), 0.28) })
									end

									tbl17.Theme.Reset = function()
										tbl17.Theme.Set(tbl17.Theme.Defaults)
									end

									tbl17.Config.EncodeValue = function(arg)
										if n28(4639) >= 1051 then
											if typeof(arg) == "Color3" then
												return {
													__t = v83[76],
													r = math.floor(arg.R * 255 + v83[167]),
													g = math.floor(arg.G * 255 + 0.5),
													b = math.floor(arg.B * 255 + v83[167]),
												}
											end

											local v85 = v83[31]
											if typeof(arg) == v85 then
												return { __t = "Enum", v = tostring(arg) }
											end
											return arg
										end

										while v83[4] do
										end
									end

									tbl17.Config.DecodeValue = function(arg)
										if type(arg) == "table" and arg.__t == "Color3" then
											return Color3.fromRGB(arg.r, arg.g, arg.b)
										end

										if type(arg) == "table" and arg.__t == "Enum" then
											local match, v85 = arg.v:match("^Enum%.(%w+)%.(%w+)$")

											if match and Enum[match] then
												local ok, result = pcall(function()
													return Enum[match][v85]
												end)

												if ok then
													return result
												end
											end

											return nil
										end

										return arg
									end

									tbl17.Config.Path = function()
										return tbl17.Config.Folder .. "/" .. tbl17.Config.Name .. ".json"
									end

									tbl17.Config.Setup = function(folder, name)
										if not tbl17.Env.Filesystem then
											return
										end
										tbl17.Config.Folder = folder or v83[16]
										tbl17.Config.Name = name or "config"
										tbl17.Config.Enabled = true

										if not isfolder(tbl17.Config.Folder) then
											pcall(makefolder, tbl17.Config.Folder)
										end

										zenthra.MediaFolder = tbl17.Config.Folder .. "/backgrounds"

										pcall(function()
											if not isfolder(zenthra.MediaFolder) then
												makefolder(zenthra.MediaFolder)
											end
										end)
									end

									tbl17.Config.Save = function()
										if not tbl17.Config.Enabled then
											return
										end
										local tbl18 = {}

										for k, flag18 in pairs(zenthra.Flags) do
											tbl18[k] = tbl17.Config.EncodeValue(flag18)
										end

										pcall(function()
											local http = tbl17.Services.Http
											local jsonEncode = http.JSONEncode
											writefile(tbl17.Config.Path(), jsonEncode(http, tbl18))
										end)
									end

									tbl17.Config.Queue = function()
										if not tbl17.Config.Enabled or tbl17.Config._queued then
											return
										end
										tbl17.Config._queued = v83[4]

										task.delay(0.4, function()
											tbl17.Config._queued = false
											tbl17.Config.Save()
										end)
									end

									tbl17.Config.Load = function()
										if not tbl17.Config.Enabled or not isfile(tbl17.Config.Path()) then
											return {}
										end

										local ok, result = pcall(function()
											return tbl17.Services.Http:JSONDecode(readfile(tbl17.Config.Path()))
										end)

										if not ok or type(result) ~= "table" then
											return {}
										end
										local tbl18 = {}

										for k, v85 in pairs(result) do
											tbl18[k] = tbl17.Config.DecodeValue(v85)
										end

										return tbl18
									end

									tbl17.Config.SetFlag = function(arg, arg2)
										if not arg then
											return
										end
										zenthra.Flags[arg] = arg2
										tbl17.Config.Queue()
									end

									do
										local zenthraTeardown = getgenv and getgenv().__ZenthraTeardown
										local v85 = v83[149]

										if type(zenthraTeardown) == v85 then
											pcall(zenthraTeardown)
										end
									end
								end

								for _, v85 in ipairs(tbl17.Env.Registry()) do
									pcall(function()
										if typeof(v85) == "Instance" then
											v85:Destroy()
										end
									end)
								end

								table.clear(tbl17.Env.Registry())

								if getgenv then
									getgenv().__ZenthraTeardown = function()
										for _, connection in ipairs(tbl17.State.Connections) do
											pcall(function()
												connection:Disconnect()
											end)
										end

										table.clear(tbl17.State.Connections)

										for _, v85 in ipairs(tbl17.Env.Registry()) do
											pcall(function()
												if typeof(v85) == "Instance" then
													v85:Destroy()
												end
											end)
										end

										table.clear(tbl17.Env.Registry())
									end
								end

								v84 = tbl17.Env.Adopt(tbl17.Util.New("ScreenGui", {
									Name = tbl17.Env.RandomName(),
									ResetOnSpawn = false,
									IgnoreGuiInset = true,
									AutoLocalize = false,
									DisplayOrder = tbl17.Env.NotifyDisplayOrder,
									ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
									Parent = tbl17.Env.SafeParent(),
								}))

								do
									local Frame = tbl17.Util.New("Frame", {
										Name = "Layer",
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.fromScale(0.5, v83[167]),
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 1,
										Parent = v84,
									})

									UIScale = tbl17.Util.New("UIScale", { Scale = 1, Parent = Frame })

									tbl17.Notify.Profile = function()
										return tbl17.Notify.Profiles[tbl17.Notify.Position] or tbl17.Notify.Profiles["Right Bottom"]
									end

									tbl17.Notify.BaseOffset = function(arg)
										if arg.sign > 0 then
											return tbl17.Notify.Edge + tbl17.Services.Gui:GetGuiInset().Y
										end
										return tbl17.Notify.Edge
									end

									tbl17.Notify.Restack = function(arg)
										local v85 = tbl17.Notify.Profile()
										local v86 = tbl17.Notify.BaseOffset(v85)

										for _, v87 in ipairs(tbl17.Notify.Active) do
											local card = v87.Card

											if not v87.Dismissing and card.Parent then
												card.AnchorPoint = Vector2.new(v85.ax, v85.ay)
												local udim2 = UDim2.new(v85.xs, v85.shown, v85.ys, v85.sign * v86)

												if arg == false then
													card.Position = udim2
												else
													tbl17.Util.Tween(card, { Position = udim2 }, v83[101])
												end

												v86 += v87.Height + tbl17.Notify.Gap
											end
										end
									end

									tbl17.Notify.SetPosition = function(position)
										if not tbl17.Notify.Profiles[position] then
											return false
										end
										tbl17.Notify.Position = position
										tbl17.Notify.Restack(v83[4])
										return true
									end

									tbl17.Notify.GetPosition = function()
										return tbl17.Notify.Position
									end

									tbl17.Notify.Push = function(arg, arg2)
										local tbl18

										if type(arg) == "string" then
											tbl18 = { Title = arg, Text = arg2 }
										else
											tbl18 = arg
										end

										tbl18 = tbl18 or {}
										local info = tbl17.Notify.Kinds[tostring(tbl18.Type or v83[194]):lower()] or tbl17.Notify.Kinds.info
										local duration = tbl18.Duration or 4
										local v85 = tbl17.Notify.Profile()
										local title = tbl18.Title or tbl18.Header or "Notification"
										local text = tbl18.Text or tbl18.Content or tbl18.Description or tbl18.Message

										if text ~= nil then
											text = tostring(text)

											if text == "" then
												text = nil
											end
										end

										local new = tbl17.Util.New
										local v86 = v83[19]

										local tbl19 = {
											Name = "Notification",
											AnchorPoint = Vector2.new(v85.ax, v85.ay),
											Size = UDim2.fromOffset(tbl17.Notify.Width, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											GroupTransparency = 1,
											BackgroundTransparency = 0.02,
											BorderSizePixel = 0,
											Parent = Frame,
										}

										local tbl20 = {}
										local v87 = tbl17.Util.Corner(10)
										local Border = tbl17.Util.Stroke("Border", v83[34], 0.3)
										local padding = tbl17.Util.Padding
										tbl20[1] = v87
										tbl20[2] = Border

										do
											local values = table.pack(padding(12, 12, 12, 12))
											table.move(values, 1, values.n, 3, tbl20)
										end

										local v88 = new(v86, tbl19, tbl20)
										tbl17.Theme.Bind(v88, v83[136], "Surface")

										local Frame2 = tbl17.Util.New("Frame", {
											Size = UDim2.fromOffset(26, 26),
											BackgroundTransparency = 0.86,
											BorderSizePixel = 0,
											Parent = v88,
										}, { tbl17.Util.Corner(8) })

										tbl17.Theme.Bind(Frame2, "BackgroundColor3", info.key)

										tbl17.Util.Image({
											Image = tbl18.Icon or info.glyph,
											Size = UDim2.fromOffset(14, 14),
											Position = UDim2.fromScale(v83[167], 0.5),
											AnchorPoint = Vector2.new(0.5, 0.5),
											ColorKey = info.key,
											Parent = Frame2,
										})

										local Frame3 = tbl17.Util.New("Frame", {
											Position = UDim2.fromOffset(v83[188], v83[141]),
											Size = UDim2.new(1, -v83[188], v83[141], 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = 1,
											Parent = v88,
										}, { tbl17.Util.List(3) })

										tbl17.Util.Label({
											Text = tostring(title),
											TextSize = 13,
											Weight = tbl17.Layout.Weight.Bold,
											Size = UDim2.new(1, 0, 0, 15),
											Parent = Frame3,
										})

										if text then
											tbl17.Util.Label({
												Text = text,
												TextSize = 12,
												ColorKey = "SubText",
												TextWrapped = v83[4],
												RichText = tbl18.RichText == true,
												AutomaticSize = Enum.AutomaticSize.Y,
												Size = UDim2.new(1, 0, 0, 0),
												Parent = Frame3,
											})
										end

										local v89 = tbl17.Util.New(v83[181], { Size = UDim2.new(1, 0, 0, 11), BackgroundTransparency = 1, LayoutOrder = 9, Parent = Frame3 })

										local Frame4 = tbl17.Util.New("Frame", {
											AnchorPoint = Vector2.new(0, 1),
											Position = UDim2.new(v83[141], v83[141], v83[34], 0),
											Size = UDim2.new(1, 0, v83[141], v83[192]),
											BackgroundTransparency = v83[22],
											BorderSizePixel = v83[141],
											Parent = v89,
										}, { tbl17.Util.Corner(v83[62]) })

										tbl17.Theme.Bind(Frame4, "BackgroundColor3", v83[157])
										local Frame5 = tbl17.Util.New("Frame", { Size = UDim2.new(1, 0, 1, v83[141]), BorderSizePixel = 0, Parent = Frame4 }, { tbl17.Util.Corner(2) })
										tbl17.Theme.Bind(Frame5, "BackgroundColor3", info.key)
										local tbl21 = { Card = v88, Height = 64, Dismissing = false }
										table.insert(tbl17.Notify.Active, 1, tbl21)

										local function fn36()
											return v88.AbsoluteSize.Y / math.max(UIScale.Scale, 0.01)
										end

										tbl21.Resize = v88:GetPropertyChangedSignal(v83[71]):Connect(function()
											local v90 = fn36()

											if v90 > 1 and math.abs(v90 - tbl21.Height) > 0.5 then
												tbl21.Height = v90

												if not tbl21.Dismissing then
													tbl17.Notify.Restack(true)
												end
											end
										end)

										v88.Position = UDim2.new(v85.xs, v85.hidden, v85.ys, v85.sign * tbl17.Notify.BaseOffset(v85))

										task.defer(function()
											if not v88.Parent then
												return
											end
											tbl21.Height = math.max(fn36(), 1)
											tbl17.Notify.Restack(true)
											tbl17.Util.Tween(v88, { GroupTransparency = 0 }, 0.3)
											tbl17.Util.Tween(Frame5, { Size = UDim2.new(v83[141], v83[141], 1, 0) }, duration, Enum.EasingStyle.Linear)
										end)

										local function dismiss()
											if tbl21.Dismissing or not v88.Parent then
												return
											end
											tbl21.Dismissing = true

											if tbl21.Resize then
												tbl21.Resize:Disconnect()
												tbl21.Resize = nil
											end

											for i, v90 in ipairs(tbl17.Notify.Active) do
												if v90 == tbl21 then
													table.remove(tbl17.Notify.Active, i)
													break
												end
											end

											tbl17.Notify.Restack(true)
											local v90 = tbl17.Notify.Profile()
											tbl17.Util.Tween(v88, { Position = UDim2.new(v90.xs, v90.hidden, v88.Position.Y.Scale, v88.Position.Y.Offset) }, 0.28, tbl17.Layout.Ease, tbl17.Layout.EaseIn)
											tbl17.Util.Tween(v88, { GroupTransparency = v83[34] }, v83[177], Enum.EasingStyle.Quad, tbl17.Layout.EaseIn)

											task.delay(0.3, function()
												v88:Destroy()
											end)
										end

										tbl21.Dismiss = dismiss
										task.delay(duration, dismiss)
										return tbl21
									end
								end
							end

							do
								local tbl18 = {}

								tbl17.Binds.Changed = function()
									for _, v85 in ipairs(tbl18) do
										pcall(v85)
									end
								end

								tbl17.Binds.OnChanged = function(arg)
									table.insert(tbl18, arg)
								end
							end

							do
								tbl17.Binds.AttachKeybind = function(arg)
									if tbl17.Env.Mobile or not arg.Flag then
										return nil
									end
									local str7 = arg.Flag .. "__key"
									local keyCode = tbl17.Util.ToKeyCode(tbl17.State.Saved[str7])
									local new = tbl17.Util.New

									local tbl18 = {
										Name = "Keybind",
										Text = "",
										AutoButtonColor = false,
										AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(1, 0.5),
										Position = arg.Position or UDim2.new(),
										LayoutOrder = arg.LayoutOrder or 0,
										Size = UDim2.fromOffset(0, tbl17.Layout.ChipH),
										AutomaticSize = Enum.AutomaticSize.X,
										BackgroundTransparency = v83[185],
										BorderSizePixel = 0,
										Parent = arg.Parent,
									}

									local tbl19 = {}
									local v85 = tbl17.Util.Corner(5)
									local v86 = tbl17.Util.Padding(0, 0, 6, 6)
									local new2 = tbl17.Util.New
									local tbl20 = { MaxSize = Vector2.new(arg.MaxWidth or 58, tbl17.Layout.ChipH) }
									local v87 = table.pack(new2("UISizeConstraint", tbl20))
									tbl19[1] = v85
									tbl19[2] = v86

									do
										local values = table.pack(table.unpack(v87, 1, v87.n))
										table.move(values, 1, values.n, 3, tbl19)
									end

									local TextButton = new("TextButton", tbl18, tbl19)
									TextButton.ClipsDescendants = v83[4]
									tbl17.Theme.Bind(TextButton, "BackgroundColor3", v83[18])
									local Border = tbl17.Util.Stroke("Border", v83[34], v83[148])
									Border.Parent = TextButton

									local v88 = tbl17.Util.Label({
										Text = "-",
										TextSize = v83[61],
										Weight = tbl17.Layout.Weight.SemiBold,
										ColorKey = "Muted",
										TextXAlignment = Enum.TextXAlignment.Center,
										AutomaticSize = Enum.AutomaticSize.X,
										Size = UDim2.fromOffset(0, tbl17.Layout.ChipH),
										Parent = TextButton,
									})

									local tbl21 = { Flag = arg.Flag, Label = arg.Label or "Bind", Key = keyCode }
									table.insert(zenthra.Binds, tbl21)
									local flag18 = false

									local function fn36()
										v88.Text = flag18 and "?" or keyCode and tbl17.Util.KeyName(keyCode) or "-"
										v88.TextColor3 = (flag18 or keyCode) and palette.Text or palette.Muted
										tbl17.Util.Tween(Border, { Color = flag18 and palette.Accent or palette.Border, Transparency = flag18 and 0.3 or 0.25 }, 0.18)
										tbl21.Key = keyCode
										tbl17.Binds.Changed()
									end

									fn36()

									local function fn37()
										if tbl17.Binds.Binding then
											return
										end
										tbl17.Binds.Binding = true
										flag18 = true
										fn36()
										local connect = nil

										local function fn38(arg2)
											if arg2.UserInputType ~= Enum.UserInputType.Keyboard then
												return
											end

											if arg2.KeyCode == Enum.KeyCode.Unknown then
												return
											end
											connect:Disconnect()
											flag18 = false
											keyCode = not (arg2.KeyCode == Enum.KeyCode.Backspace or arg2.KeyCode == Enum.KeyCode.Escape) and arg2.KeyCode or nil
											tbl17.Config.SetFlag(str7, keyCode)
											fn36()

											task.defer(function()
												tbl17.Binds.Binding = false
											end)
										end

										connect = tbl17.Util.Connect
										connect = connect(tbl17.Services.UserInput.InputBegan, fn38)
									end

									tbl17.Util.Connect(TextButton.InputBegan, function(arg2)
										if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.MouseButton2 then
											fn37()
										end
									end)

									if arg.Host then
										tbl17.Util.Connect(arg.Host.InputBegan, function(arg2)
											if arg2.UserInputType == Enum.UserInputType.MouseButton2 then
												fn37()
											end
										end)
									end

									tbl17.Util.Connect(tbl17.Services.UserInput.InputBegan, function(arg2, arg3)
										if arg3 or tbl17.Binds.Binding or not keyCode then
											return
										end

										if arg2.KeyCode == keyCode and arg.OnPress then
											task.spawn(arg.OnPress)
										end
									end)

									tbl17.Util.Hover(TextButton, function()
										tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.1 }, v83[46])
									end, function()
										tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.4 }, 0.2)
									end)

									return {
										Chip = TextButton,
										Get = function()
											return keyCode
										end,
									}
								end

								tbl17.Binds.AttachBell = function(arg)
									local str7 = arg.Flag .. v83[63]
									local flag18 = tbl17.State.Saved[str7] == v83[4]
									local size = arg.Size or 13

									local v85 = tbl17.Util.New(v83[191], {
										Name = "Bell",
										Image = tbl17.Icons.Resolve("bell"),
										ScaleType = Enum.ScaleType.Fit,
										AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(v83[34], 0.5),
										Position = arg.Position or UDim2.new(),
										LayoutOrder = arg.LayoutOrder or 0,
										Size = UDim2.fromOffset(size, size),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Parent = arg.Parent,
									})

									tbl17.Theme.BindDynamic(v85, "ImageColor3", function()
										return flag18 and palette.Accent or palette.SubText
									end)

									v85.ImageTransparency = flag18 and v83[120] or 0.5

									tbl17.Util.Connect(v85.MouseButton1Click, function()
										flag18 = not flag18
										tbl17.Config.SetFlag(str7, flag18)
										tbl17.Util.Tween(v85, { ImageColor3 = flag18 and palette.Accent or palette.SubText, ImageTransparency = flag18 and 0.05 or 0.5 }, 0.26)
									end)

									return {
										Bell = v85,
										IsOn = function()
											return flag18
										end,
										Announce = function(arg2, arg3)
											if not flag18 then
												return
											end
											local flag19 = type(arg3) == "boolean"

											zenthra:Notify({
												Title = arg2,
												Text = flag19 and (arg3 and "Enabled" or "Disabled") or tostring(arg3),
												Type = flag19 and arg3 and v83[26] or v83[194],
												Duration = 2.5,
											})
										end,
									}
								end

								tbl17.Components.OptionRoot = function(arg, arg2, arg3)
									return tbl17.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(1, 0, v83[141], arg2),
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									})
								end

								tbl17.Components.Toggle = function(arg, arg2, arg3)
									local flag18 = arg2.Default == true

									if tbl17.State.Saved[arg2.Flag] ~= nil then
										flag18 = tbl17.State.Saved[arg2.Flag] == true
									end

									local v85 = tbl17.Components.OptionRoot(arg, tbl17.Layout.Row, arg3)

									local TextButton = tbl17.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = v83[175],
										BackgroundTransparency = 1,
										Size = UDim2.fromScale(1, v83[34]),
										Parent = v85,
									}, { tbl17.Util.FlexRow(7) })

									local v86 = tbl17.Util.Label({
										Text = arg2.Title or v83[6],
										TextSize = 12,
										ColorKey = "SubText",
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(0, v83[141], 1, 0),
										LayoutOrder = 1,
										Parent = TextButton,
									}, { tbl17.Util.Grow() })

									local tbl18 = { Type = v83[6], Value = flag18, Root = v85 }

									if arg2.Keybind ~= false and arg2.Flag then
										tbl17.Binds.AttachKeybind({
											Parent = TextButton,
											Host = TextButton,
											LayoutOrder = 2,
											Flag = arg2.Flag,
											Label = arg2.Title or "Toggle",
											MaxWidth = v83[158],
											OnPress = function()
												tbl18:Set(not tbl18.Value)
											end,
										})
									end

									local v87 = nil

									if arg2.Notify and arg2.Flag then
										v87 = tbl17.Binds.AttachBell({ Parent = TextButton, LayoutOrder = v83[192], Flag = arg2.Flag })
									end

									local stroke = tbl17.Util.Stroke

									local Frame = tbl17.Util.New("Frame", {
										Size = UDim2.fromOffset(30, 16),
										BackgroundTransparency = 0.5,
										BorderSizePixel = 0,
										LayoutOrder = 4,
										Parent = TextButton,
									}, { tbl17.Util.Corner(UDim.new(1, 0)), stroke("Border", 1, 0.2) })

									tbl17.Theme.Bind(Frame, "BackgroundColor3", "SurfaceAlt")

									local Frame2 = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, 3, v83[167], v83[141]),
										Size = UDim2.fromOffset(10, 10),
										BorderSizePixel = 0,
										Parent = Frame,
									}, { tbl17.Util.Corner(UDim.new(1, 0)) })

									tbl17.Theme.Bind(Frame2, "BackgroundColor3", "Muted")

									tbl18.Set = function(arg4, arg5, arg6)
										local value = arg5 == v83[4]
										arg4.Value = value
										tbl17.Config.SetFlag(arg2.Flag, value)

										tbl17.Util.Tween(Frame, {
											BackgroundColor3 = value and palette.Accent or palette.SurfaceAlt,
											BackgroundTransparency = value and 0.06 or v83[167],
										}, 0.24)

										tbl17.Util.Tween(Frame2, {
											Position = value and UDim2.new(1, -13, v83[167], v83[141]) or UDim2.new(0, 3, 0.5, 0),
											BackgroundColor3 = value and palette.Background or palette.Muted,
										}, 0.3)

										tbl17.Util.Tween(v86, { TextColor3 = value and palette.Text or palette.SubText }, 0.24)

										if not arg6 then
											if arg2.Callback then
												task.spawn(arg2.Callback, value)
											end

											if v87 then
												v87.Announce(arg2.Title or v83[6], value)
											end
										end
									end

									tbl18.Get = function(arg4)
										return arg4.Value
									end

									tbl17.Util.Connect(TextButton.MouseButton1Click, function()
										tbl18:Set(not tbl18.Value)
									end)

									tbl17.Util.Hover(TextButton, function()
										if not tbl18.Value then
											tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, 0.16)
										end
									end, function()
										if not tbl18.Value then
											tbl17.Util.Tween(v86, { TextColor3 = palette.SubText }, v83[174])
										end
									end)

									tbl18:Set(flag18, true)

									if flag18 and arg2.Callback then
										task.spawn(arg2.Callback, flag18)
									end

									return tbl18
								end

								tbl17.Components.Slider = function(arg, arg2, arg3)
									local min = arg2.Min or 0
									local max = arg2.Max or 100
									local decimals = arg2.Decimals or 0
									local suffix = arg2.Suffix or ""
									local default = arg2.Default or min

									if type(tbl17.State.Saved[arg2.Flag]) == "number" then
										default = tbl17.State.Saved[arg2.Flag]
									end

									local n32 = math.clamp(tbl17.Util.Round(default, decimals), min, max)
									local v85 = tbl17.Components.OptionRoot(arg, tbl17.Env.Mobile and v83[109] or 32, arg3)

									local v86 = tbl17.Util.Label({
										Text = arg2.Title or "Slider",
										TextSize = 12,
										ColorKey = "SubText",
										Size = UDim2.new(v83[34], -60, v83[141], 14),
										Parent = v85,
									})

									local v87 = tbl17.Util.Label({
										Text = tostring(n32) .. suffix,
										TextSize = v83[193],
										ColorKey = "Text",
										TextXAlignment = Enum.TextXAlignment.Right,
										AnchorPoint = Vector2.new(1, 0),
										Position = UDim2.new(v83[34], 0, 0, v83[141]),
										Size = UDim2.fromOffset(60, v83[126]),
										Parent = v85,
									})

									local stroke = tbl17.Util.Stroke

									local Frame = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[141], 1),
										Position = UDim2.new(0, v83[141], v83[34], -2),
										Size = UDim2.new(1, v83[141], 0, 5),
										BackgroundTransparency = v83[83],
										BorderSizePixel = 0,
										Parent = v85,
									}, { tbl17.Util.Corner(UDim.new(1, 0)), stroke("BorderSoft", 1, 0.3) })

									tbl17.Theme.Bind(Frame, "BackgroundColor3", "SurfaceAlt")
									local gradient = tbl17.Util.Gradient

									local Frame2 = tbl17.Util.New("Frame", { Size = UDim2.fromScale(0, 1), BorderSizePixel = 0, Parent = Frame }, {
										tbl17.Util.Corner(UDim.new(1, 0)),
										gradient(function()
											local colorSequence = ColorSequence.new
											local tbl18 = {}
											local v88 = ColorSequenceKeypoint.new(0, palette.AccentDim)
											local v89 = ColorSequenceKeypoint.new(v83[41], palette.AccentSoft)
											local new = ColorSequenceKeypoint.new
											local accent = palette.Accent
											tbl18[1] = v88
											tbl18[2] = v89

											do
												local values = table.pack(new(1, accent))
												table.move(values, 1, values.n, 3, tbl18)
											end

											return colorSequence(tbl18)
										end),
									})

									tbl17.Theme.Bind(Frame2, "BackgroundColor3", "Accent")

									local Frame3 = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.new(v83[34], 0, 0.5, 0),
										Size = UDim2.fromOffset(9, v83[198]),
										BorderSizePixel = v83[141],
										ZIndex = v83[62],
										Parent = Frame2,
									}, { tbl17.Util.Corner(UDim.new(1, 0)) })

									tbl17.Theme.Bind(Frame3, "BackgroundColor3", "AccentSoft")

									local TextButton = tbl17.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										BackgroundTransparency = 1,
										AnchorPoint = Vector2.new(0, v83[34]),
										Position = UDim2.new(0, v83[141], 1, 0),
										Size = UDim2.new(v83[34], 0, 0, tbl17.Env.Mobile and 26 or 16),
										Parent = v85,
									})

									local tbl18 = {
										Type = "Slider",
										Value = n32,
										Root = v85,
										Set = function(arg4, arg5, arg6, arg7)
											local value = math.clamp(tbl17.Util.Round(tonumber(arg5) or min, decimals), min, max)
											arg4.Value = value
											tbl17.Config.SetFlag(arg2.Flag, value)
											local n33 = max > min and (value - min) / (max - min) or 0
											v87.Text = tostring(value) .. suffix

											if arg7 then
												Frame2.Size = UDim2.fromScale(n33, 1)
											else
												tbl17.Util.Tween(Frame2, { Size = UDim2.fromScale(n33, 1) }, 0.16)
											end

											if not arg6 and arg2.Callback then
												if n28(4036) < 1031 then
													task.spawn(arg2.Callback, value)
												else
													while v83[4] do
													end
												end
											end
										end,
										Get = function(arg4)
											return arg4.Value
										end,
									}

									local flag18 = v83[175]

									local function fn36(arg4)
										local x = Frame.AbsoluteSize.X
										if x < 1 then
											return
										end
										tbl18:Set(min + (max - min) * math.clamp((arg4.X - Frame.AbsolutePosition.X) / x, v83[141], 1), false, true)
									end

									tbl17.Util.Connect(TextButton.InputBegan, function(arg4)
										if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = v83[4]
										tbl17.Window.BlockDrag = true
										tbl17.Util.Tween(Frame3, { Size = UDim2.fromOffset(12, 12) }, 0.18)
										fn36(arg4.Position)
									end)

									tbl17.Util.Connect(tbl17.Services.UserInput.InputChanged, function(arg4)
										if not flag18 then
											return
										end

										if arg4.UserInputType == Enum.UserInputType.MouseMovement or arg4.UserInputType == Enum.UserInputType.Touch then
											fn36(arg4.Position)
										end
									end)

									tbl17.Util.Connect(tbl17.Services.UserInput.InputEnded, function(arg4)
										if not flag18 then
											return
										end

										if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = false
										tbl17.Window.BlockDrag = false
										tbl17.Util.Tween(Frame3, { Size = UDim2.fromOffset(9, 9) }, 0.24)
										tbl17.Config.Queue()
									end)

									tbl17.Util.Hover(TextButton, function()
										tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, v83[46])
									end, function()
										if not flag18 then
											tbl17.Util.Tween(v86, { TextColor3 = palette.SubText }, 0.2)
										end
									end)

									tbl18:Set(n32, v83[4], true)

									if arg2.Callback then
										task.spawn(arg2.Callback, n32)
									end

									return tbl18
								end

								tbl17.Components.Dropdown = function(arg, arg2, arg3)
									local flag18 = arg2.Multi == true
									local options = arg2.Options or {}
									local maxVisible = arg2.MaxVisible or 6
									local tbl18 = flag18 and {} or nil

									if flag18 then
										local v85 = ipairs
										local default = arg2.Default or {}

										for _, v86 in v85(default) do
											tbl18[v86] = true
										end
									else
										tbl18 = arg2.Default
									end

									if tbl17.State.Saved[arg2.Flag] ~= nil then
										tbl18 = tbl17.State.Saved[arg2.Flag]
									end

									local v85 = tbl17.Util.New(v83[181], {
										Name = "Option",
										Size = UDim2.new(1, 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl17.Util.List(5) })

									local Frame = tbl17.Util.New("Frame", {
										Size = UDim2.new(1, v83[141], v83[141], v83[126]),
										BackgroundTransparency = 1,
										Parent = v85,
									}, { tbl17.Util.FlexRow(6) })

									tbl17.Util.Label({
										Text = arg2.Title or "Dropdown",
										TextSize = 12,
										ColorKey = "SubText",
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(v83[141], 0, 1, 0),
										LayoutOrder = 1,
										Parent = Frame,
									}, { tbl17.Util.Grow() })

									local v86 = nil

									if arg2.Notify and arg2.Flag then
										v86 = tbl17.Binds.AttachBell({ Parent = Frame, LayoutOrder = 2, Flag = arg2.Flag })
									end

									local new = tbl17.Util.New

									local tbl19 = {
										Text = "",
										AutoButtonColor = v83[175],
										Size = UDim2.new(1, 0, 0, tbl17.Layout.FieldH),
										BackgroundTransparency = 0.35,
										BorderSizePixel = v83[141],
										Parent = v85,
									}

									local tbl20 = {}
									local v87 = tbl17.Util.Corner(7)
									local Border = tbl17.Util.Stroke("Border", 1, 0.25)
									tbl20[1] = v87
									tbl20[2] = Border

									do
										local values = table.pack(tbl17.Util.Padding(0, 0, 10, v83[61]))
										table.move(values, 1, values.n, 3, tbl20)
									end

									local TextButton = new("TextButton", tbl19, tbl20)
									tbl17.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")
									local uiStroke = TextButton:FindFirstChildOfClass("UIStroke")

									local v88 = tbl17.Util.Label({
										Text = "None",
										TextSize = 12,
										ColorKey = "Text",
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(v83[34], -18, 1, v83[141]),
										Parent = TextButton,
									})

									local v89 = tbl17.Util.Image({
										Image = "chevronDown",
										Size = UDim2.fromOffset(12, v83[94]),
										AnchorPoint = Vector2.new(v83[34], 0.5),
										Position = UDim2.new(1, 0, v83[167], v83[141]),
										ColorKey = v83[157],
										Parent = TextButton,
									})

									local Frame2 = tbl17.Util.New("Frame", {
										Size = UDim2.new(1, 0, 0, 0),
										BackgroundTransparency = 1,
										ClipsDescendants = true,
										Parent = v85,
									})

									local new2 = tbl17.Util.New

									local tbl21 = {
										Size = UDim2.fromScale(1, v83[34]),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										ScrollBarThickness = v83[62],
										ScrollBarImageTransparency = 0.4,
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.new(),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										Parent = Frame2,
									}

									local tbl22 = {}
									local v90 = tbl17.Util.Corner(7)
									local Border2 = tbl17.Util.Stroke("Border", 1, v83[148])
									local v91 = tbl17.Util.Padding(4, 4, v83[173], 4)
									local list = tbl17.Util.List
									tbl22[1] = v90
									tbl22[2] = Border2
									tbl22[3] = v91

									do
										local values = table.pack(list(2))
										table.move(values, 1, values.n, 4, tbl22)
									end

									local ScrollingFrame = new2("ScrollingFrame", tbl21, tbl22)
									tbl17.Theme.Bind(ScrollingFrame, v83[136], "SurfaceAlt")
									tbl17.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", "Muted")
									local tbl23 = {}
									local flag19 = false
									local tbl24 = { Type = "Dropdown", Value = tbl18, Options = options, Root = v85 }

									local function fn36(arg4)
										if flag18 then
											return tbl24.Value[arg4] == v83[4]
										end
										return tbl24.Value == arg4
									end

									local function fn37()
										if flag18 then
											local tbl25 = {}

											for _, option in ipairs(tbl24.Options) do
												if tbl24.Value[option] then
													table.insert(tbl25, option)
												end
											end

											v88.Text = #tbl25 > 0 and table.concat(tbl25, ", ") or "None"
											v88.TextColor3 = #tbl25 > 0 and palette.Text or palette.Muted
										else
											v88.Text = tbl24.Value and tostring(tbl24.Value) or "None"
											v88.TextColor3 = tbl24.Value and palette.Text or palette.Muted
										end

										for k, v92 in pairs(tbl23) do
											local v93 = fn36(k)
											tbl17.Util.Tween(v92.text, { TextColor3 = v93 and palette.Text or palette.SubText }, 0.16)
											tbl17.Util.Tween(v92.frame, { BackgroundTransparency = v93 and v83[22] or 1 }, 0.16)
											tbl17.Util.Tween(v92.tick, { ImageTransparency = v93 and 0 or 1 }, v83[46])
										end
									end

									local function fn38()
										local n32 = math.min(#tbl24.Options, maxVisible)
										if n32 == 0 then
											return v83[100]
										end
										return n32 * tbl17.Layout.OptionH + (n32 - 1) * 2 + 8
									end

									local function fn39(arg4)
										flag19 = arg4
										tbl17.Util.Tween(Frame2, { Size = UDim2.new(v83[34], 0, 0, flag19 and fn38() or 0) }, 0.28)
										tbl17.Util.Tween(v89, { Rotation = flag19 and v83[114] or 0 }, v83[91])
										tbl17.Util.Tween(uiStroke, { Color = flag19 and palette.Accent or palette.Border, Transparency = flag19 and v83[185] or 0.25 }, 0.22)
									end

									local function fn40(arg4)
										if flag18 then
											if 4857 >= n24 then
												while true do
												end
											else
												local v92 = table.clone(tbl24.Value)
												v92[arg4] = not v92[arg4] or nil
												tbl24:Set(v92)
											end
										else
											tbl24:Set(arg4)
											fn39(false)
										end
									end

									tbl24.Set = function(arg4, value, arg5)
										if flag18 then
											local value2 = {}

											if type(value) == "table" then
												if #value > 0 then
													for _, v92 in ipairs(value) do
														value2[v92] = v83[4]
													end
												else
													for k, v92 in pairs(value) do
														if v92 then
															value2[k] = true
														end
													end
												end
											end

											arg4.Value = value2
										else
											arg4.Value = value
										end

										tbl17.Config.SetFlag(arg2.Flag, arg4.Value)
										fn37()

										if not arg5 then
											if arg2.Callback then
												task.spawn(arg2.Callback, arg4.Value)
											end

											if v86 then
												v86.Announce(arg2.Title or "Dropdown", v88.Text)
											end
										end
									end

									tbl24.Get = function(arg4)
										return arg4.Value
									end

									tbl24.SetOptions = function(arg4, options2)
										arg4.Options = options2 or {}

										for _, v92 in pairs(tbl23) do
											v92.frame:Destroy()
										end

										tbl23 = {}

										for i, option in ipairs(arg4.Options) do
											local new3 = tbl17.Util.New
											local v92 = v83[73]

											local tbl25 = {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.new(v83[34], v83[141], v83[141], tbl17.Layout.OptionH),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												LayoutOrder = i,
												Parent = ScrollingFrame,
											}

											local tbl26 = {}
											local v93 = tbl17.Util.Corner(5)
											local flexRow = tbl17.Util.FlexRow
											local v94 = tbl17.Util.Padding(v83[141], 0, v83[195], 8)
											tbl26[1] = v93
											tbl26[2] = v94

											do
												local values = table.pack(flexRow(6))
												table.move(values, 1, values.n, 3, tbl26)
											end

											local v95 = new3(v92, tbl25, tbl26)
											tbl17.Theme.Bind(v95, v83[136], "Accent")

											local v96 = tbl17.Util.Label({
												Text = tostring(option),
												TextSize = 11.5,
												ColorKey = v83[96],
												TextTruncate = Enum.TextTruncate.AtEnd,
												Size = UDim2.new(0, 0, 1, 0),
												LayoutOrder = v83[34],
												Parent = v95,
											}, { tbl17.Util.Grow() })

											if arg2.Keybind and arg2.Flag then
												tbl17.Binds.AttachKeybind({
													Parent = v95,
													Host = v95,
													LayoutOrder = 2,
													Flag = arg2.Flag .. "__" .. tostring(option),
													Label = (arg2.Title or "Dropdown") .. ": " .. tostring(option),
													MaxWidth = 50,
													OnPress = function()
														fn40(option)
													end,
												})
											end

											tbl23[option] = {
												frame = v95,
												text = v96,
												tick = tbl17.Util.Image({
													Image = "check",
													Size = UDim2.fromOffset(11, 11),
													ImageTransparency = 1,
													ColorKey = "Accent",
													LayoutOrder = v83[192],
													Parent = v95,
												}),
											}

											tbl17.Util.Connect(v95.MouseButton1Click, function()
												fn40(option)
											end)

											tbl17.Util.Hover(v95, function()
												if not fn36(option) then
													tbl17.Util.Tween(v95, { BackgroundTransparency = v83[199] }, 0.14)
												end
											end, function()
												if not fn36(option) then
													tbl17.Util.Tween(v95, { BackgroundTransparency = 1 }, 0.18)
												end
											end)
										end

										if flag18 then
											local value = {}
											local v92 = pairs
											local tbl25 = arg4.Value or {}

											for k, v93 in v92(tbl25) do
												v93 = v93 and tbl23[k]

												if v93 then
													value[k] = true
												end
											end

											arg4.Value = value
										elseif arg4.Value ~= nil and not tbl23[arg4.Value] then
											arg4.Value = nil
										end

										fn37()

										if flag19 then
											fn39(true)
										end
									end

									tbl17.Util.Connect(TextButton.MouseButton1Click, function()
										fn39(not flag19)
									end)

									tbl17.Util.Hover(TextButton, function()
										if not flag19 then
											tbl17.Util.Tween(uiStroke, { Transparency = v83[120] }, 0.16)
										end
									end, function()
										if not flag19 then
											tbl17.Util.Tween(uiStroke, { Transparency = 0.25 }, 0.2)
										end
									end)

									tbl24:SetOptions(options)
									tbl24:Set(tbl24.Value, v83[4])

									if arg2.Callback then
										task.spawn(arg2.Callback, tbl24.Value)
									end

									return tbl24
								end

								tbl17.Components.Keybind = function(arg, arg2, arg3)
									local default = arg2.Default

									if tbl17.State.Saved[arg2.Flag] ~= nil then
										default = tbl17.State.Saved[arg2.Flag]
									end

									local v85 = tbl17.Util.ToKeyCode(default)
									local v86 = tbl17.Components.OptionRoot(arg, tbl17.Layout.Row, arg3)

									tbl17.Util.Label({
										Text = arg2.Title or v83[39],
										TextSize = 12,
										ColorKey = "SubText",
										Size = UDim2.new(1, -70, 1, 0),
										Parent = v86,
									})

									local stroke = tbl17.Util.Stroke

									local TextButton = tbl17.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										AnchorPoint = Vector2.new(1, 0.5),
										Position = UDim2.new(v83[34], 0, v83[167], 0),
										Size = UDim2.fromOffset(v83[53], 20),
										BackgroundTransparency = 0.4,
										BorderSizePixel = v83[141],
										Parent = v86,
									}, { tbl17.Util.Corner(6), stroke("Border", 1, 0.25) })

									tbl17.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")

									local v87 = tbl17.Util.Label({
										Text = tbl17.Util.KeyName(v85),
										TextSize = v83[193],
										ColorKey = v85 and "Text" or v83[157],
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.fromScale(1, 1),
										Parent = TextButton,
									})

									local flag18 = v83[175]
									local tbl18 = { Type = "Keybind", Value = v85, Root = v86 }
									local tbl19 = { Flag = arg2.Flag, Label = arg2.Title or "Keybind", Key = v85 }
									table.insert(zenthra.Binds, tbl19)

									tbl18.Set = function(arg4, value, arg5)
										arg4.Value = value
										v87.Text = tbl17.Util.KeyName(value)
										v87.TextColor3 = value and palette.Text or palette.Muted
										tbl17.Config.SetFlag(arg2.Flag, value)
										tbl19.Key = value
										tbl17.Binds.Changed()

										if not arg5 and arg2.Changed then
											task.spawn(arg2.Changed, value)
										end
									end

									tbl18.Get = function(arg4)
										return arg4.Value
									end

									tbl17.Util.Connect(TextButton.MouseButton1Click, function()
										if flag18 then
											return
										end
										flag18 = true
										tbl17.Binds.Binding = v83[4]
										v87.Text = "..."
										v87.TextColor3 = palette.Accent
									end)

									tbl17.Util.Connect(tbl17.Services.UserInput.InputBegan, function(arg4, arg5)
										if flag18 then
											if arg4.UserInputType == Enum.UserInputType.Keyboard then
												flag18 = false
												tbl17.Binds.Binding = false

												if arg4.KeyCode == Enum.KeyCode.Escape or arg4.KeyCode == Enum.KeyCode.Backspace then
													tbl18:Set(nil)
												else
													tbl18:Set(arg4.KeyCode)
												end
											end

											return
										end

										if arg5 or not tbl18.Value then
											return
										end

										if arg4.KeyCode == tbl18.Value and arg2.Callback then
											task.spawn(arg2.Callback)
										end
									end)

									tbl17.Util.Hover(TextButton, function()
										if not flag18 then
											tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.15 }, v83[46])
										end
									end, function()
										tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.4 }, v83[174])
									end)

									tbl18:Set(v85, true)
									return tbl18
								end

								tbl17.Components.Input = function(arg, arg2, arg3)
									local default = arg2.Default or ""

									if type(tbl17.State.Saved[arg2.Flag]) == "string" then
										default = tbl17.State.Saved[arg2.Flag]
									end

									local Frame = tbl17.Util.New("Frame", {
										Name = v83[119],
										Size = UDim2.new(1, 0, 0, v83[141]),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl17.Util.List(5) })

									if arg2.Title then
										tbl17.Util.Label({
											Text = arg2.Title,
											TextSize = 12,
											ColorKey = "SubText",
											Size = UDim2.new(1, 0, 0, 14),
											Parent = Frame,
										})
									end

									local new = tbl17.Util.New

									local tbl18 = {
										Size = UDim2.new(1, 0, 0, tbl17.Layout.FieldH - v83[62]),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										ClipsDescendants = true,
										Parent = Frame,
									}

									local tbl19 = {}
									local v85 = tbl17.Util.Corner(7)
									local padding = tbl17.Util.Padding
									local v86 = v83[141]
									local Border = tbl17.Util.Stroke("Border", 1, 0.25)
									tbl19[1] = v85
									tbl19[2] = Border

									do
										local values = table.pack(padding(0, v86, 10, 10))
										table.move(values, 1, values.n, 3, tbl19)
									end

									local Frame2 = new("Frame", tbl18, tbl19)
									tbl17.Theme.Bind(Frame2, "BackgroundColor3", v83[18])
									local uiStroke = Frame2:FindFirstChildOfClass("UIStroke")

									local TextBox = tbl17.Util.New("TextBox", {
										Text = default,
										PlaceholderText = arg2.Placeholder or "",
										ClearTextOnFocus = false,
										BackgroundTransparency = 1,
										ClipsDescendants = true,
										TextWrapped = false,
										TextTruncate = Enum.TextTruncate.AtEnd,
										FontFace = tbl17.Util.Font(tbl17.Layout.Weight.Medium),
										TextSize = 12,
										TextXAlignment = Enum.TextXAlignment.Left,
										Size = UDim2.new(1, v83[141], 1, v83[141]),
										Parent = Frame2,
									})

									tbl17.Theme.Bind(TextBox, "TextColor3", "Text")
									tbl17.Theme.Bind(TextBox, "PlaceholderColor3", v83[157])

									local tbl20 = {
										Type = "Input",
										Value = default,
										Root = Frame,
										Set = function(arg4, arg5, arg6)
											arg4.Value = tostring(arg5 or "")
											TextBox.Text = arg4.Value
											tbl17.Config.SetFlag(arg2.Flag, arg4.Value)

											if not arg6 and arg2.Callback then
												task.spawn(arg2.Callback, arg4.Value)
											end
										end,
										Get = function(arg4)
											return arg4.Value
										end,
									}

									tbl17.Util.Connect(TextBox.Focused, function()
										tbl17.Util.Tween(uiStroke, { Color = palette.Accent, Transparency = v83[83] }, 0.18)
									end)

									tbl17.Util.Connect(TextBox.FocusLost, function(arg4)
										tbl17.Util.Tween(uiStroke, { Color = palette.Border, Transparency = 0.25 }, v83[174])

										if arg2.ClearOnEnter and arg4 then
											local text = TextBox.Text
											tbl20:Set("", true)

											if arg2.Callback then
												task.spawn(arg2.Callback, text)
											end
										else
											tbl20:Set(TextBox.Text)
										end
									end)

									tbl20:Set(default, v83[4])
									return tbl20
								end

								tbl17.Components.Button = function(arg, arg2, arg3)
									local v85 = tbl17.Components.OptionRoot(arg, tbl17.Layout.FieldH, arg3)
									local new = tbl17.Util.New

									local tbl18 = {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = v83[83],
										BorderSizePixel = 0,
										Parent = v85,
									}

									local tbl19 = {}
									local v86 = tbl17.Util.Corner(v83[190])
									local Border = tbl17.Util.Stroke("Border", 1, 0.25)
									local new2 = tbl17.Util.New
									tbl19[1] = v86
									tbl19[2] = Border

									do
										local values = table.pack(new2("UIScale", { Scale = 1 }))
										table.move(values, 1, values.n, 3, tbl19)
									end

									local TextButton = new("TextButton", tbl18, tbl19)
									tbl17.Theme.Bind(TextButton, v83[136], "SurfaceAlt")

									local v87 = tbl17.Util.Label({
										Text = arg2.Title or v83[112],
										TextSize = 12,
										Weight = tbl17.Layout.Weight.SemiBold,
										ColorKey = "SubText",
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.fromScale(1, v83[34]),
										Parent = TextButton,
									})

									tbl17.Util.Hover(TextButton, function()
										tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.1 }, 0.16)
										tbl17.Util.Tween(v87, { TextColor3 = palette.Text }, 0.16)
									end, function()
										tbl17.Util.Tween(TextButton, { BackgroundTransparency = 0.35 }, 0.2)
										tbl17.Util.Tween(v87, { TextColor3 = palette.SubText }, 0.2)
									end)

									tbl17.Util.Press(TextButton, TextButton:FindFirstChildOfClass(v83[128]))

									tbl17.Util.Connect(TextButton.MouseButton1Click, function()
										if arg2.Callback then
											task.spawn(arg2.Callback)
										end
									end)

									return {
										Type = v83[112],
										Root = v85,
										SetTitle = function(arg4, text)
											v87.Text = text
										end,
									}
								end

								tbl17.Components.Colorpicker = function(arg, arg2, arg3)
									local default = arg2.Default or Color3.fromRGB(255, 255, v83[20])

									if typeof(tbl17.State.Saved[arg2.Flag]) == "Color3" then
										default = tbl17.State.Saved[arg2.Flag]
									end

									local n32, n33, n34 = default:ToHSV()

									local Frame = tbl17.Util.New("Frame", {
										Name = v83[119],
										Size = UDim2.new(v83[34], 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl17.Util.List(6) })

									local v85 = tbl17.Util.New(v83[73], {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.new(1, 0, 0, tbl17.Layout.Row),
										BackgroundTransparency = 1,
										Parent = Frame,
									})

									local v86 = tbl17.Util.Label({
										Text = arg2.Title or v83[166],
										TextSize = 12,
										ColorKey = "SubText",
										Size = UDim2.new(1, -50, 1, 0),
										Parent = v85,
									})

									local stroke = tbl17.Util.Stroke
									local v87 = v83[74]

									local Frame2 = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[34], 0.5),
										Position = UDim2.new(v83[34], 0, v83[167], 0),
										Size = UDim2.fromOffset(v83[30], 18),
										BackgroundColor3 = default,
										BorderSizePixel = v83[141],
										Parent = v85,
									}, { tbl17.Util.Corner(v83[42]), stroke("Border", 1, v87) })

									local Frame3 = tbl17.Util.New("Frame", {
										Size = UDim2.new(v83[34], 0, 0, v83[141]),
										BackgroundTransparency = v83[34],
										ClipsDescendants = true,
										Parent = Frame,
									})

									local new = tbl17.Util.New
									local tbl18 = { Size = UDim2.new(1, 0, 0, 167), BackgroundTransparency = 0.35, BorderSizePixel = 0, Parent = Frame3 }
									local tbl19 = {}
									local v88 = tbl17.Util.Corner(8)
									local v89 = tbl17.Util.Stroke(v83[95], 1, 0.25)
									local v90 = tbl17.Util.Padding(8, 8, 8, 8)
									tbl19[1] = v88
									tbl19[2] = v89
									tbl19[3] = v90

									do
										local values = table.pack(tbl17.Util.List(v83[190]))
										table.move(values, 1, values.n, 4, tbl19)
									end

									local Frame4 = new("Frame", tbl18, tbl19)
									tbl17.Theme.Bind(Frame4, "BackgroundColor3", "SurfaceAlt")
									local new2 = tbl17.Util.New

									local tbl20 = {
										Size = UDim2.new(v83[34], 0, 0, 78),
										BackgroundColor3 = Color3.fromHSV(n32, 1, 1),
										BorderSizePixel = v83[141],
										Parent = Frame4,
									}

									local tbl21 = {}
									local v91 = tbl17.Util.Corner(6)
									local new3 = tbl17.Util.New
									local v92 = v83[181]

									local tbl22 = {
										Size = UDim2.fromScale(1, 1),
										BackgroundColor3 = Color3.new(1, 1, v83[34]),
										BorderSizePixel = 0,
									}

									local tbl23 = {}
									local v93 = tbl17.Util.Corner(6)
									local new4 = tbl17.Util.New

									local tbl24 = {
										Color = ColorSequence.new(Color3.new(v83[34], v83[34], 1)),
										Transparency = NumberSequence.new(0, v83[34]),
									}

									tbl23[1] = v93

									do
										local values = table.pack(new4("UIGradient", tbl24))
										table.move(values, 1, values.n, 2, tbl23)
									end

									local v94 = new3(v92, tbl22, tbl23)
									local new5 = tbl17.Util.New

									local tbl25 = {
										Size = UDim2.fromScale(1, v83[34]),
										BackgroundColor3 = Color3.new(0, 0, v83[141]),
										BorderSizePixel = 0,
										ZIndex = 2,
									}

									local tbl26 = {}
									local v95 = tbl17.Util.Corner(6)
									local new6 = tbl17.Util.New
									local tbl27 = { Rotation = 90, Transparency = NumberSequence.new(v83[34], 0) }
									tbl26[1] = v95

									do
										local values = table.pack(new6("UIGradient", tbl27))
										table.move(values, 1, values.n, 2, tbl26)
									end

									tbl21[1] = v91
									tbl21[2] = v94

									do
										local values = table.pack(new5("Frame", tbl25, tbl26))
										table.move(values, 1, values.n, 3, tbl21)
									end

									local Frame5 = new2("Frame", tbl20, tbl21)
									local new7 = tbl17.Util.New
									local v96 = v83[181]

									local tbl28 = {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Size = UDim2.fromOffset(v83[198], 9),
										BackgroundTransparency = v83[34],
										ZIndex = 4,
										Parent = Frame5,
									}

									local tbl29 = {}
									local v97 = tbl17.Util.Corner(UDim.new(1, 0))
									local new8 = tbl17.Util.New
									local tbl30 = { Color = Color3.new(1, v83[34], 1), Thickness = 2 }
									tbl29[1] = v97

									do
										local values = table.pack(new8("UIStroke", tbl30))
										table.move(values, 1, values.n, 2, tbl29)
									end

									local v98 = new7(v96, tbl28, tbl29)
									local new9 = tbl17.Util.New
									local tbl31 = { Size = UDim2.new(1, 0, v83[141], 10), BorderSizePixel = 0, Parent = Frame4 }
									local tbl32 = {}
									local v99 = tbl17.Util.Corner(UDim.new(v83[34], 0))
									local new10 = tbl17.Util.New
									local tbl33 = {}
									local colorSequence = ColorSequence.new
									local tbl34 = {}
									local v100 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, v83[141]))
									local v101 = ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, v83[141]))
									local v102 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0))
									local v103 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, v83[20]))
									local v104 = ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255))
									local v105 = ColorSequenceKeypoint.new(0.83, Color3.fromRGB(v83[20], 0, 255))
									local new11 = ColorSequenceKeypoint.new
									local color = Color3.fromRGB
									tbl34[1] = v100
									tbl34[2] = v101
									tbl34[3] = v102
									tbl34[4] = v103
									tbl34[5] = v104
									tbl34[6] = v105

									do
										local values = table.pack(new11(1, color(255, 0, 0)))
										table.move(values, 1, values.n, 7, tbl34)
									end

									tbl33.Color = colorSequence(tbl34)
									tbl32[1] = v99

									do
										local values = table.pack(new10("UIGradient", tbl33))
										table.move(values, 1, values.n, 2, tbl32)
									end

									local Frame6 = new9("Frame", tbl31, tbl32)

									local v106 = tbl17.Util.New(v83[181], {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.new(n32, 0, 0.5, 0),
										Size = UDim2.fromOffset(v83[42], v83[126]),
										BackgroundColor3 = Color3.new(1, v83[34], v83[34]),
										BorderSizePixel = 0,
										ZIndex = 2,
										Parent = Frame6,
									}, { tbl17.Util.Corner(3) })

									local stroke2 = tbl17.Util.Stroke
									local v107 = v83[34]

									local v108 = tbl17.Util.New(v83[7], {
										Text = "#FFFFFF",
										ClearTextOnFocus = false,
										BackgroundTransparency = 0.5,
										FontFace = tbl17.Util.Font(tbl17.Layout.Weight.Medium),
										TextSize = v83[193],
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.new(1, 0, 0, 22),
										BorderSizePixel = 0,
										Parent = Frame4,
									}, { tbl17.Util.Corner(6), stroke2("BorderSoft", v107, 0.3) })

									tbl17.Theme.Bind(v108, v83[136], "Surface")
									tbl17.Theme.Bind(v108, "TextColor3", "SubText")

									local TextButton = tbl17.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.new(v83[34], 0, 0, 20),
										BackgroundTransparency = 1,
										Parent = Frame4,
									})

									local v109 = tbl17.Util.Label({
										Text = "Rainbow",
										TextSize = 11,
										ColorKey = "SubText",
										Size = UDim2.new(1, -34, 1, 0),
										Parent = TextButton,
									})

									local stroke3 = tbl17.Util.Stroke
									local v110 = v83[174]

									local Frame7 = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[34], 0.5),
										Position = UDim2.new(1, v83[141], 0.5, v83[141]),
										Size = UDim2.fromOffset(28, 15),
										BackgroundTransparency = 0.5,
										BorderSizePixel = 0,
										Parent = TextButton,
									}, { tbl17.Util.Corner(UDim.new(1, 0)), stroke3("Border", 1, v110) })

									tbl17.Theme.Bind(Frame7, "BackgroundColor3", "Surface")

									local Frame8 = tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, 3, v83[167], 0),
										Size = UDim2.fromOffset(9, 9),
										BorderSizePixel = 0,
										Parent = Frame7,
									}, { tbl17.Util.Corner(UDim.new(1, 0)) })

									tbl17.Theme.Bind(Frame8, v83[136], "Muted")
									local flag18 = false
									local v111 = v83[175]
									local v112 = nil
									local tbl35 = { Type = "Colorpicker", Value = default, Root = Frame }

									local function fn36(arg4, arg5)
										local color2 = Color3.fromHSV(n32, n33, n34)
										tbl35.Value = color2
										Frame2.BackgroundColor3 = color2
										Frame5.BackgroundColor3 = Color3.fromHSV(n32, 1, 1)
										v98.Position = UDim2.fromScale(n33, 1 - n34)
										v106.Position = UDim2.new(n32, 0, 0.5, 0)
										local floor2 = math.floor
										local n35 = color2.B * 255 + 0.5
										v108.Text = string.format("#%02X%02X%02X", math.floor(color2.R * 255 + 0.5), math.floor(color2.G * 255 + 0.5), floor2(n35))

										if arg2.Flag then
											zenthra.Flags[arg2.Flag] = color2

											if not arg5 then
												tbl17.Config.Queue()
											end
										end

										if not arg4 and arg2.Callback then
											task.spawn(arg2.Callback, color2)
										end
									end

									tbl35.SetRainbow = function(arg4, arg5)
										local flag19 = arg5 == true
										if flag19 == v111 then
											return
										end
										v111 = flag19
										tbl17.Config.SetFlag((arg2.Flag or "") .. "__rainbow", flag19)

										tbl17.Util.Tween(Frame7, {
											BackgroundColor3 = flag19 and palette.Accent or palette.Surface,
											BackgroundTransparency = flag19 and 0.06 or 0.5,
										}, v83[177])

										tbl17.Util.Tween(Frame8, {
											Position = flag19 and UDim2.new(1, -v83[94], 0.5, 0) or UDim2.new(v83[141], 3, v83[167], 0),
											BackgroundColor3 = flag19 and palette.Background or palette.Muted,
										}, 0.3)

										tbl17.Util.Tween(v109, { TextColor3 = flag19 and palette.Text or palette.SubText }, v83[177])

										if v112 then
											v112:Disconnect()
											v112 = nil
										end

										if flag19 then
											local v113 = v83[34]
											n33 = 1
											n34 = v113

											v112 = tbl17.Util.Connect(tbl17.Services.Run.RenderStepped, function(arg6)
												n32 = (n32 + arg6 * (arg2.RainbowSpeed or v83[74])) % 1
												fn36(false, v83[4])
											end)
										else
											tbl17.Config.Queue()
										end
									end

									tbl35.Set = function(arg4, arg5, arg6)
										local v113 = v83[76]
										if typeof(arg5) ~= v113 then
											return
										end
										arg4:SetRainbow(false)
										local v114, v115, v116 = arg5:ToHSV()
										n32 = v114
										n33 = v115
										n34 = v116
										fn36(arg6)
									end

									tbl35.Get = function(arg4)
										return arg4.Value
									end

									tbl17.Util.Connect(TextButton.MouseButton1Click, function()
										tbl35:SetRainbow(not v111)
									end)

									local function fn37(arg4)
										flag18 = arg4
										tbl17.Util.Tween(Frame3, { Size = UDim2.new(1, v83[141], 0, flag18 and 167 or 0) }, 0.3)
									end

									tbl17.Util.Connect(v85.MouseButton1Click, function()
										fn37(not flag18)
									end)

									tbl17.Util.Hover(v85, function()
										tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, 0.16)
									end, function()
										tbl17.Util.Tween(v86, { TextColor3 = palette.SubText }, 0.2)
									end)

									local function fn38(arg4, arg5)
										local flag19 = v83[175]

										tbl17.Util.Connect(arg4.InputBegan, function(arg6)
											if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag19 = v83[4]
											tbl17.Window.BlockDrag = true
											arg5(arg6.Position)
										end)

										tbl17.Util.Connect(tbl17.Services.UserInput.InputChanged, function(arg6)
											if not flag19 then
												return
											end

											if arg6.UserInputType == Enum.UserInputType.MouseMovement or arg6.UserInputType == Enum.UserInputType.Touch then
												arg5(arg6.Position)
											end
										end)

										tbl17.Util.Connect(tbl17.Services.UserInput.InputEnded, function(arg6)
											if not flag19 then
												return
											end

											if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag19 = false
											tbl17.Window.BlockDrag = v83[175]
											tbl17.Config.Queue()
										end)
									end

									fn38(Frame5, function(arg4)
										tbl35:SetRainbow(false)
										local absoluteSize = Frame5.AbsoluteSize
										local absolutePosition = Frame5.AbsolutePosition
										n33 = math.clamp((arg4.X - absolutePosition.X) / math.max(absoluteSize.X, 1), 0, 1)
										n34 = 1 - math.clamp((arg4.Y - absolutePosition.Y) / math.max(absoluteSize.Y, v83[34]), 0, 1)
										fn36()
									end)

									fn38(Frame6, function(arg4)
										tbl35:SetRainbow(false)
										n32 = math.clamp((arg4.X - Frame6.AbsolutePosition.X) / math.max(Frame6.AbsoluteSize.X, 1), 0, 1)
										fn36()
									end)

									tbl17.Util.Connect(v108.FocusLost, function()
										local str7 = v108.Text:gsub("#", "")

										if #str7 == 6 and tonumber(str7, 16) then
											tbl35:Set(Color3.fromHex(str7))
										else
											fn36(v83[4])
										end
									end)

									fn36(v83[4])
									local rainbow = arg2.Rainbow

									if not rainbow then
										rainbow = tbl17.State.Saved[(arg2.Flag or "") .. "__rainbow"] == v83[4]
									end

									if rainbow then
										tbl35:SetRainbow(true)
									end

									if arg2.Callback then
										if n24 > 4864 then
											while true do
											end
										else
											task.spawn(arg2.Callback, tbl35.Value)
										end
									end

									return tbl35
								end

								tbl17.Components.Paragraph = function(arg, arg2, arg3)
									local Frame = tbl17.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(1, v83[141], 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl17.Util.List(v83[192]) })

									local v85 = nil

									if arg2.Title then
										v85 = tbl17.Util.Label({
											Text = arg2.Title,
											TextSize = 12,
											Weight = tbl17.Layout.Weight.SemiBold,
											Size = UDim2.new(1, 0, 0, 14),
											Parent = Frame,
										})
									end

									local v86 = tbl17.Util.Label({
										Text = arg2.Text or "",
										TextSize = 11.5,
										ColorKey = "SubText",
										TextWrapped = true,
										AutomaticSize = Enum.AutomaticSize.Y,
										Size = UDim2.new(v83[34], 0, v83[141], 0),
										Parent = Frame,
									})

									return {
										Type = v83[187],
										Root = Frame,
										Set = function(arg4, text)
											v86.Text = text
										end,
										SetTitle = function(arg4, text)
											if v85 then
												v85.Text = text
											end
										end,
									}
								end

								tbl17.Components.Divider = function(arg, arg2, arg3)
									local v85 = tbl17.Components.OptionRoot(arg, 9, arg3)

									tbl17.Theme.Bind(tbl17.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, v83[141], 0.5, v83[141]),
										Size = UDim2.new(1, v83[141], v83[141], 1),
										BackgroundTransparency = 0.4,
										BorderSizePixel = v83[141],
										Parent = v85,
									}), "BackgroundColor3", v83[95])

									return { Type = "Divider", Root = v85 }
								end

								do
									local index = {}
									index.__index = index
									local mobile = tbl17.Env.Mobile and v83[188] or v83[100]

									tbl17.Module.Create = function(tab, config)
										local obj = setmetatable({}, index)
										obj.Tab = tab
										obj.Config = config
										obj.Title = config.Title or "Module"
										obj.Flag = config.Flag
										obj.Toggleable = config.Toggleable ~= false and config.Flag ~= nil
										obj.Enabled = false
										obj.Expanded = false
										obj.Order = v83[141]
										obj.Keyword = (obj.Title .. " " .. (config.Description or "")):lower()
										local flag18 = config.Description ~= nil and config.Description ~= ""
										local flag19 = obj.Toggleable and config.Keybind ~= false and obj.Flag ~= nil and not tbl17.Env.Mobile
										local flag20 = obj.Toggleable and config.Notify == true and obj.Flag ~= nil
										local n32 = flag19 and 46 + mobile or 46
										local n33 = flag19 and 46 + mobile / 2 or 23
										local flag21 = obj.Toggleable and not flag19
										local n34 = 26

										if flag21 then
											n34 = v83[30] + (flag20 and 23 or 0) + 25
										end

										obj.Side = (config.Side or "Left"):lower()
										obj.Column = obj.Side == "right" and tab.Right or tab.Left
										obj.LayoutOrder = #obj.Column:GetChildren()
										local n35 = v83[74] + 0.85 * math.clamp(tonumber(zenthra.Flags and zenthra.Flags.gui_module_transparency) or tab.Window and tonumber(tab.Window.ModuleTransparency) or 0, v83[141], 1)
										local new = tbl17.Util.New

										local tbl18 = {
											Name = "Module",
											Size = UDim2.new(1, v83[141], 0, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = n35,
											BorderSizePixel = v83[141],
											ClipsDescendants = true,
											LayoutOrder = obj.LayoutOrder,
											Parent = obj.Column,
										}

										local tbl19 = {}
										local v85 = tbl17.Util.Corner(10)
										local list = tbl17.Util.List
										local Border = tbl17.Util.Stroke("Border", 1, 0.3)
										tbl19[1] = v85
										tbl19[2] = Border

										do
											local values = table.pack(list(0))
											table.move(values, 1, values.n, 3, tbl19)
										end

										local Frame = new("Frame", tbl18, tbl19)
										tbl17.Theme.Bind(Frame, v83[136], "Surface")
										obj.Frame = Frame
										obj.Stroke = Frame:FindFirstChildOfClass("UIStroke")

										local TextButton = tbl17.Util.New("TextButton", {
											Name = v83[197],
											Text = "",
											AutoButtonColor = false,
											Size = UDim2.new(1, 0, 0, n32),
											BackgroundTransparency = 1,
											Parent = Frame,
										})

										obj.Header = TextButton

										local v86 = tbl17.Util.Label({
											Text = obj.Title,
											TextSize = v83[165],
											Weight = tbl17.Layout.Weight.SemiBold,
											TextTruncate = Enum.TextTruncate.AtEnd,
											Position = UDim2.new(v83[141], 13, 0, flag18 and 10 or v83[141]),
											Size = UDim2.new(1, -n34, v83[141], flag18 and v83[182] or 46),
											Parent = TextButton,
										})

										if flag18 then
											tbl17.Util.Label({
												Text = config.Description,
												TextSize = 11,
												ColorKey = "Muted",
												TextTruncate = Enum.TextTruncate.AtEnd,
												Position = UDim2.new(0, 13, 0, 26),
												Size = UDim2.new(1, -n34, 0, 13),
												Parent = TextButton,
											})
										end

										local Frame2 = tbl17.Util.New("Frame", {
											Name = "Body",
											Size = UDim2.new(1, 0, 0, 0),
											BackgroundTransparency = 1,
											ClipsDescendants = true,
											LayoutOrder = 2,
											Parent = Frame,
										})

										obj.Body = Frame2
										local list2 = tbl17.Util.List
										local v87 = v83[198]

										local Frame3 = tbl17.Util.New("Frame", {
											Size = UDim2.new(1, v83[141], 0, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = 1,
											Parent = Frame2,
										}, { tbl17.Util.Padding(v83[61], 13, 13, v83[165]), list2(v87) })

										obj.Content = Frame3
										local uiListLayout = Frame3:FindFirstChildOfClass("UIListLayout")

										tbl17.Theme.Bind(tbl17.Util.New("Frame", {
											Size = UDim2.new(1, -v83[29], 0, 1),
											Position = UDim2.new(0, 13, 0, 0),
											BackgroundTransparency = 0.5,
											BorderSizePixel = 0,
											Parent = Frame2,
										}), "BackgroundColor3", "Border")

										local function fn36()
											local scale = tab.Window.Scale.Scale
											local rootScale = tab.Window.RootScale

											if rootScale then
												scale *= rootScale.Scale
											end

											return uiListLayout.AbsoluteContentSize.Y / math.max(scale, 0.01) + 23
										end

										obj.Resize = function(arg, arg2)
											if not obj.Expanded then
												return
											end
											local v88 = fn36()

											if arg2 == v83[175] then
												Frame2.Size = UDim2.new(1, 0, 0, v88)
											else
												tbl17.Util.Tween(Frame2, { Size = UDim2.new(1, 0, 0, v88) }, 0.3)
											end
										end

										tbl17.Util.Connect(uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
											obj:Resize(true)
										end)

										obj.SetExpanded = function(arg, expanded, arg2)
											if #Frame3:GetChildren() <= 2 then
												expanded = false
											end

											obj.Expanded = expanded
											expanded = expanded and fn36() or 0

											if arg2 == v83[175] then
												Frame2.Size = UDim2.new(1, v83[141], 0, expanded)
											else
												tbl17.Util.Tween(Frame2, { Size = UDim2.new(1, 0, v83[141], expanded) }, v83[101])
											end
										end

										local v88 = nil
										local Frame4 = nil
										local v89 = nil

										if obj.Toggleable then
											if flag19 then
												tbl17.Theme.Bind(tbl17.Util.New(v83[181], {
													Position = UDim2.new(0, 13, v83[141], 46),
													Size = UDim2.new(v83[34], -26, v83[141], 1),
													BackgroundTransparency = 0.6,
													BorderSizePixel = 0,
													Parent = TextButton,
												}), v83[136], "Border")
											end

											local Frame5 = tbl17.Util.New("Frame", {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, -13, 0, n33),
												Size = UDim2.fromOffset(0, 20),
												AutomaticSize = Enum.AutomaticSize.X,
												BackgroundTransparency = 1,
												Parent = TextButton,
											}, { tbl17.Util.FlexRow(v83[198]) })

											if flag20 then
												v89 = tbl17.Binds.AttachBell({ Parent = Frame5, LayoutOrder = 1, Flag = obj.Flag, Size = 14 })
											end

											local new2 = tbl17.Util.New
											local v90 = v83[181]

											local tbl20 = {
												Size = UDim2.fromOffset(34, 18),
												BackgroundTransparency = 0.45,
												BorderSizePixel = 0,
												LayoutOrder = v83[62],
												Parent = Frame5,
											}

											local stroke = tbl17.Util.Stroke
											local v91 = v83[95]
											local v92 = v83[34]
											v88 = new2(v90, tbl20, { tbl17.Util.Corner(UDim.new(1, 0)), stroke(v91, v92, 0.2) })
											tbl17.Theme.Bind(v88, "BackgroundColor3", "SurfaceAlt")

											Frame4 = tbl17.Util.New("Frame", {
												AnchorPoint = Vector2.new(v83[141], 0.5),
												Position = UDim2.new(v83[141], 3, v83[167], 0),
												Size = UDim2.fromOffset(12, v83[94]),
												BorderSizePixel = v83[141],
												Parent = v88,
											}, { tbl17.Util.Corner(UDim.new(1, 0)) })

											tbl17.Theme.Bind(Frame4, "BackgroundColor3", v83[157])

											tbl17.Util.Connect(tbl17.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												BackgroundTransparency = v83[34],
												AnchorPoint = Vector2.new(v83[167], v83[167]),
												Position = UDim2.fromScale(v83[167], 0.5),
												Size = UDim2.new(1, tbl17.Env.Mobile and 24 or 12, 1, tbl17.Env.Mobile and 18 or 8),
												Parent = v88,
											}).MouseButton1Click, function()
												obj:SetEnabled(not obj.Enabled)
											end)
										end

										obj.SetEnabled = function(arg, arg2, arg3, arg4)
											local enabled = arg2 == true
											obj.Enabled = enabled
											tbl17.Config.SetFlag(obj.Flag, enabled)

											if v88 then
												tbl17.Util.Tween(v88, {
													BackgroundColor3 = enabled and palette.Accent or palette.SurfaceAlt,
													BackgroundTransparency = enabled and 0.05 or 0.45,
												}, 0.26)

												tbl17.Util.Tween(Frame4, {
													Position = enabled and UDim2.new(v83[34], -v83[182], 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
													BackgroundColor3 = enabled and palette.Background or palette.Muted,
												}, 0.32)
											end

											tbl17.Util.Tween(obj.Stroke, { Color = enabled and palette.Accent or palette.Border, Transparency = enabled and v83[41] or 0.3 }, 0.3)
											tbl17.Util.Tween(v86, { TextColor3 = (enabled or not obj.Toggleable) and palette.Text or palette.SubText }, 0.26)

											if obj.Toggleable then
												obj:SetExpanded(enabled, not arg4)
											end

											if not arg3 then
												if config.Callback then
													task.spawn(config.Callback, enabled)
												end

												if v89 then
													v89.Announce(obj.Title, enabled)
												end
											end
										end

										obj.Get = function()
											return obj.Enabled
										end

										if flag19 then
											tbl17.Binds.AttachKeybind({
												Parent = TextButton,
												Host = TextButton,
												AnchorPoint = Vector2.new(v83[141], 0.5),
												Position = UDim2.new(v83[141], 13, 0, n33),
												Flag = obj.Flag,
												Label = obj.Title,
												MaxWidth = 84,
												OnPress = function()
													obj:SetEnabled(not obj.Enabled)
												end,
											})
										end

										tbl17.Util.Connect(TextButton.MouseButton1Click, function()
											if not obj.Toggleable then
												return
											end
											obj:SetEnabled(not obj.Enabled)
										end)

										tbl17.Util.Hover(TextButton, function()
											if not obj.Enabled then
												tbl17.Util.Tween(obj.Stroke, { Color = palette.Muted, Transparency = 0.55 }, 0.18)
											end

											tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, v83[162])
										end, function()
											if not obj.Enabled then
												tbl17.Util.Tween(obj.Stroke, { Color = palette.Border, Transparency = v83[124] }, 0.22)

												if obj.Toggleable then
													tbl17.Util.Tween(v86, { TextColor3 = palette.SubText }, v83[77])
												end
											end
										end)

										obj:SetEnabled(tbl17.State.Saved[obj.Flag] == true, true, true)

										if obj.Enabled and config.Callback then
											task.spawn(config.Callback, true)
										end

										table.insert(tab.Modules, obj)
										return obj
									end

									for k, component in pairs(components) do
										index[k] = function(arg, arg2)
											local tbl18 = arg2 or {}
											arg.Order = arg.Order + 1
											local v85 = component(arg.Content, tbl18, arg.Order)

											if tbl18.Flag then
												zenthra.Options[tbl18.Flag] = v85
											end

											arg.Keyword = arg.Keyword .. " " .. (tbl18.Title or ""):lower()

											if not arg.Expanded and (arg.Enabled or not arg.Toggleable) then
												arg:SetExpanded(true, false)
											end

											return v85
										end
									end

									index.Label = function(arg, arg2)
										return arg:Paragraph({ Text = type(arg2) == "table" and arg2.Text or arg2 })
									end
								end
							end
						end

						tbl17.Page.Create = function(arg)
							local CanvasGroup = tbl17.Util.New("CanvasGroup", {
								Name = "Page",
								Size = UDim2.fromScale(1, v83[34]),
								BackgroundTransparency = v83[34],
								GroupTransparency = v83[34],
								Visible = false,
								Parent = arg,
							})

							local ScrollingFrame = tbl17.Util.New("ScrollingFrame", {
								Size = UDim2.fromScale(v83[34], 1),
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								ScrollBarThickness = 3,
								ScrollBarImageTransparency = 0.45,
								AutomaticCanvasSize = Enum.AutomaticSize.Y,
								CanvasSize = UDim2.new(),
								ScrollingDirection = Enum.ScrollingDirection.Y,
								TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
								BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
								Parent = CanvasGroup,
							})

							tbl17.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", "Muted")
							local new = tbl17.Util.New

							local tbl18 = {
								Size = UDim2.new(1, v83[141], 0, 0),
								AutomaticSize = Enum.AutomaticSize.Y,
								BackgroundTransparency = 1,
								Parent = ScrollingFrame,
							}

							local tbl19 = {}
							local v85 = tbl17.Util.Padding(v83[126], v83[9], 15, 10)
							local new2 = tbl17.Util.New

							local tbl20 = {
								Padding = UDim.new(0, v83[94]),
								FillDirection = Enum.FillDirection.Horizontal,
								SortOrder = Enum.SortOrder.LayoutOrder,
							}

							tbl19[1] = v85

							do
								local values = table.pack(new2("UIListLayout", tbl20))
								table.move(values, 1, values.n, 2, tbl19)
							end

							local Frame = new("Frame", tbl18, tbl19)

							local function fn36(arg2)
								return tbl17.Util.New("Frame", {
									Name = "Column",
									Size = UDim2.new(v83[167], -6, v83[141], 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									BackgroundTransparency = 1,
									LayoutOrder = arg2,
									Parent = Frame,
								}, { tbl17.Util.List(10) })
							end

							local v86 = v83[62]
							return CanvasGroup, ScrollingFrame, fn36(1), fn36(v86)
						end

						tbl17.Tab.IndicatorPosition = function(arg, arg2)
							local tbl18 = {}

							for _, tab in ipairs(arg.Tabs) do
								table.insert(tbl18, tab)
							end

							table.sort(tbl18, function(arg3, arg4)
								return arg3.Button.LayoutOrder < arg4.Button.LayoutOrder
							end)

							local tabPad = tbl17.Layout.TabPad

							for _, v85 in ipairs(tbl18) do
								if v85 == arg2 then
									return UDim2.fromOffset(tbl17.Layout.TabPad, tabPad)
								end
								tabPad += tbl17.Layout.TabH + tbl17.Layout.TabGap
							end

							return UDim2.fromOffset(tbl17.Layout.TabPad, tbl17.Layout.TabPad)
						end

						tbl17.Tab.SlideIndicator = function(arg, arg2, arg3)
							local indicator = arg.Indicator
							if not indicator or not arg2 then
								return
							end
							local v85 = tbl17.Tab.IndicatorPosition(arg, arg2)
							indicator.Visible = v83[4]
							indicator.Size = UDim2.new(1, -(tbl17.Layout.TabPad * 2), 0, tbl17.Layout.TabH)

							if arg.TabIndicatorTween then
								arg.TabIndicatorTween:Cancel()
								arg.TabIndicatorTween = nil
							end

							if not arg3 then
								indicator.Position = v85
								return
							end
							arg.TabIndicatorTween = tbl17.Util.Tween(indicator, { Position = v85 }, tbl17.Layout.TabIndicatorSlide)
						end

						tbl17.Tab.Create = function(arg, arg2)
							local activeTab = {
								Window = arg,
								Title = arg2.Title or "Tab",
								Modules = {},
								Index = #arg.Tabs + 1,
								Internal = arg2.Internal == true,
							}

							local TextButton = tbl17.Util.New("TextButton", {
								Name = "Tab",
								Text = "",
								AutoButtonColor = false,
								Size = UDim2.new(1, 0, 0, tbl17.Layout.TabH),
								BackgroundTransparency = v83[34],
								ZIndex = 2,
								LayoutOrder = activeTab.Internal and 9999 or activeTab.Index,
								Parent = arg.TabHolder,
							})

							activeTab.Button = TextButton
							local padding = tbl17.Util.Padding
							local Frame = tbl17.Util.New("Frame", { Size = UDim2.fromScale(1, v83[34]), BackgroundTransparency = v83[34], Parent = TextButton }, { tbl17.Util.FlexRow(9), padding(0, 0, 12, 12) })
							local v85 = nil

							if arg2.Icon then
								v85 = tbl17.Util.Image({
									Image = arg2.Icon,
									Size = UDim2.fromOffset(15, v83[182]),
									ImageTransparency = v83[83],
									ColorKey = v83[96],
									LayoutOrder = 1,
									Parent = Frame,
								})
							end

							local v86 = tbl17.Util.Label({
								Text = activeTab.Title,
								TextSize = 12.5,
								Weight = tbl17.Layout.Weight.Medium,
								ColorKey = "SubText",
								AutomaticSize = Enum.AutomaticSize.X,
								Size = UDim2.new(v83[141], 0, 1, v83[141]),
								LayoutOrder = 2,
								Parent = Frame,
							})

							local v87, v88, v89, v90 = tbl17.Page.Create(arg.Content)
							activeTab.Page = v87
							activeTab.Scroller = v88
							activeTab.Left = v89
							activeTab.Right = v90

							activeTab.Select = function(arg3, arg4)
								if arg.SearchBox and arg.SearchBox.Text ~= "" then
									arg.SearchBox.Text = ""
								end

								if arg.ActiveTab == activeTab then
									return
								end
								local activeTab2 = arg.ActiveTab
								arg.ActiveTab = activeTab
								local flag18 = arg4 ~= true

								if activeTab2 then
									tbl17.Util.Tween(activeTab2.Page, { GroupTransparency = 1 }, flag18 and 0.16 or 0)

									task.delay(flag18 and v83[46] or 0, function()
										if arg.ActiveTab ~= activeTab2 then
											activeTab2.Page.Visible = false
										end
									end)

									tbl17.Util.Tween(activeTab2.Text, { TextColor3 = palette.SubText }, flag18 and 0.2 or v83[141])

									if activeTab2.Glyph then
										tbl17.Util.Tween(activeTab2.Glyph, { ImageColor3 = palette.SubText, ImageTransparency = 0.35 }, flag18 and 0.2 or 0)
									end
								end

								v87.Visible = true

								if flag18 then
									v87.GroupTransparency = 1
									v87.Position = UDim2.fromOffset(0, 8)
									tbl17.Util.Tween(v87, { GroupTransparency = 0, Position = UDim2.fromOffset(0, 0) }, 0.3)
									tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, 0.22)

									if v85 then
										tbl17.Util.Tween(v85, { ImageColor3 = palette.Accent, ImageTransparency = 0 }, 0.22)
									end
								else
									v87.GroupTransparency = 0
									v87.Position = UDim2.fromOffset(0, v83[141])
									v86.TextColor3 = palette.Text

									if v85 then
										v85.ImageColor3 = palette.Accent
										v85.ImageTransparency = v83[141]
									end
								end

								activeTab:SyncIndicator(flag18 and activeTab2 ~= nil)
							end

							activeTab.SyncIndicator = function(arg3, arg4)
								if arg.ActiveTab ~= activeTab then
									return
								end
								tbl17.Tab.SlideIndicator(arg, activeTab, arg4 == true)
							end

							activeTab.Module = function(arg3, arg4)
								return tbl17.Module.Create(activeTab, arg4 or {})
							end

							activeTab.Text = v86
							activeTab.Glyph = v85

							tbl17.Util.Connect(TextButton.MouseButton1Click, function()
								activeTab:Select()
							end)

							tbl17.Util.Hover(TextButton, function()
								if arg.ActiveTab ~= activeTab then
									tbl17.Util.Tween(v86, { TextColor3 = palette.Text }, 0.16)

									if v85 then
										tbl17.Util.Tween(v85, { ImageTransparency = 0.1 }, 0.16)
									end
								end
							end, function()
								if arg.ActiveTab ~= activeTab then
									tbl17.Util.Tween(v86, { TextColor3 = palette.SubText }, 0.2)

									if v85 then
										tbl17.Util.Tween(v85, { ImageTransparency = 0.35 }, 0.2)
									end
								end
							end)

							table.insert(arg.Tabs, activeTab)

							if not activeTab.Internal and (arg.ActiveTab == nil or arg.ActiveTab.Internal) then
								activeTab:Select(true)
							end

							task.defer(function()
								if arg.ActiveTab == activeTab then
									activeTab:SyncIndicator(false)
								end
							end)

							return activeTab
						end

						fn29 = function()
							return tostring(zenthra.MediaFolder or "Zenthra/backgrounds")
						end

						fn30 = function()
							return tbl17.Env.Filesystem and typeof(listfiles) == "function"
						end

						fn31 = function()
							if not tbl17.Env.Filesystem then
								return false
							end
							local v85 = fn29()
							local match = v85:match("^([^/\\]+)")

							pcall(function()
								if match and not isfolder(match) then
									makefolder(match)
								end

								if not isfolder(v85) then
									makefolder(v85)
								end
							end)

							return isfolder(v85)
						end

						fn32 = function(arg)
							if type(arg) ~= "string" then
								return ""
							end

							return (arg:gsub("[^%w%-_%.~]", function(arg2)
								return string.format("%%%02X", string.byte(arg2))
							end))
						end

						fn33 = function()
							if typeof(request) == "function" then
								return request
							end
							local v85 = v83[149]
							if typeof(http_request) == v85 then
								return http_request
							end

							if syn and typeof(syn.request) == "function" then
								return syn.request
							end
							return nil
						end

						fn34 = function(arg)
							if typeof(getcustomasset) == "function" then
								return getcustomasset(arg)
							end
							local v85 = v83[149]
							if typeof(getsynasset) == v85 then
								return getsynasset(arg)
							end
							return nil
						end

						do
							local tbl18 = nil

							fn35 = function(arg)
								if type(arg) ~= "string" then
									return nil
								end

								if crypt and typeof(crypt.base64decode) == "function" then
									return crypt.base64decode(arg)
								end

								if crypt and crypt.base64 and typeof(crypt.base64.decode) == "function" then
									return crypt.base64.decode(arg)
								end

								if not tbl18 then
									tbl18 = {}

									for i = v83[34], 64 do
										local n32 = i - v83[34]
										tbl18[string.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", i)] = n32
									end
								end

								local str7 = arg:gsub("[^%w%+/=]", "")
								local tbl19 = {}
								local n32 = 1
								local n33 = 0

								while n32 <= #str7 do
									local v85 = tbl18[string.byte(str7, n32)]
									local v86 = tbl18[string.byte(str7, n32 + 1)]

									if not (not v85 or not v86) then
										local v87 = string.byte(str7, n32 + 2) and tbl18[string.byte(str7, n32 + v83[62])]
										local v88 = string.byte(str7, n32 + 3) and tbl18[string.byte(str7, n32 + v83[192])]
										n33 += 1
										tbl19[n33] = string.char(v85 * 4 + math.floor(v86 / 16))

										if v87 then
											n33 += 1
											tbl19[n33] = string.char(v86 % 16 * v83[9] + math.floor(v87 / v83[173]))

											if v88 then
												n33 += 1
												tbl19[n33] = string.char(v87 % 4 * 64 + v88)
											end
										end

										n32 += v83[173]
										continue
									end

									break
								end

								return table.concat(tbl19)
							end
						end
					end

					do
						local fn36, media

						do
							local fn37, fn38, fn39, fn40

							do
								fn37 = function(arg)
									if type(arg) ~= "string" then
										return nil
									end

									if crypt and typeof(crypt.base64encode) == "function" then
										return crypt.base64encode(arg)
									end
									local base64 = crypt and crypt.base64

									if base64 then
										local v85 = v83[149]
										base64 = typeof(crypt.base64.encode) == v85
									end

									if base64 then
										return crypt.base64.encode(arg)
									end
									local tbl18 = {}

									for i = 1, #arg, 3 do
										local v85, v86, v87 = string.byte(arg, i, i + 2)
										local n32 = v85 * v83[17] + (v86 or 0) * 256 + (v87 or 0)
										local n33 = #tbl18
										local n34 = n33 + 1
										local sub = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").sub
										local v88 = v83[53]
										local n35 = math.floor(n32 / 262144) % v88 + 1
										local v89 = v83[34]
										tbl18[n34] = sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", n35, math.floor(n32 / 262144) % 64 + v89)
										local n36 = n33 + 2
										local sub2 = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").sub
										local v90 = v83[34]
										local n37 = math.floor(n32 / 4096) % 64 + v90
										local v91 = v83[34]
										tbl18[n36] = sub2("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", n37, math.floor(n32 / 4096) % 64 + v91)
										tbl18[n33 + 3] = v86 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n32 / 64) % 64 + 1, math.floor(n32 / 64) % 64 + 1) or "="
										tbl18[n33 + v83[173]] = v87 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(n32 % v83[53] + 1, n32 % 64 + 1) or "="
									end

									return table.concat(tbl18)
								end

								fn36 = function(arg)
									local str7 = fn29() .. "/" .. arg
									local ok, result = pcall(readfile, str7)
									if not ok or type(result) ~= "string" or #result == 0 then
										return fn34(str7)
									end
									local n32 = #result % v83[37]

									for i = v83[34], #result, math.max(1, math.floor(#result / 64)) do
										local v85 = v83[37]
										n32 = (n32 * 31 + result:byte(i)) % v85
									end

									local str8 = fn29() .. "/.cache"
									local str9 = str8 .. "/" .. string.format("%x", n32) .. "." .. (arg:match("%.(%w+)$") or "png")

									return fn34(pcall(function()
										if not isfolder(str8) then
											makefolder(str8)
										end

										if not isfile(str9) then
											writefile(str9, result)
										end
									end) and str9 or str7)
								end

								media = {
									Seq = 0,
									Active = false,
									Opacity = 0.5,
									ApiBase = function()
										local str7 = tostring(getgenv and getgenv().ZENTHRA_SHEET_API or zenthra.SheetApiUrl or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("/+$", "")
										if not str7:match("^https?://") then
											return nil
										end
										return str7
									end,
								}

								fn38 = function(arg)
									local ok, result = pcall(function()
										return tbl17.Services.Http:JSONDecode(arg)
									end)

									local flag18 = not ok

									if not flag18 then
										local v85 = v83[27]
										flag18 = type(result) ~= v85
									end

									if flag18 then
										return nil, "Bad API response"
									end

									if not result.ok then
										return nil, tostring(result.error or "API error")
									end

									if not result.multi or type(result.images) ~= "table" or #result.images == v83[141] then
										return nil, "API returned no pages"
									end
									local tbl18 = {}

									for i, image in ipairs(result.images) do
										local v85 = fn35(image)
										local v86 = v83[52]
										if type(v85) ~= v86 or #v85 == v83[141] then
											return nil, "Could not decode page " .. i
										end
										tbl18[i] = v85
									end

									return tbl18, {
										cols = result.cols,
										cellW = result.cellW,
										cellH = result.cellH,
										count = result.count,
										counts = result.counts,
										delayMs = result.delayMs or 100,
										ext = (result.ext == "jpg" or result.ext == v83[90]) and result.ext or "jpg",
									}
								end

								fn39 = function(arg, arg2, arg3, arg4)
									local v85 = fn33()

									if v85 then
										local ok, result = pcall(v85, { Url = arg, Method = arg2 or v83[164], Headers = arg3, Body = arg4 })

										if ok then
											local v86 = v83[27]
											ok = type(result) == v86
										end

										if ok and type(result.Body) == "string" and #result.Body > 0 then
											return result.Body, result.StatusCode or result.Status
										end
									end

									if (arg2 or "GET") == "GET" and not arg4 then
										local ok, result = pcall(function()
											if n28(1932) > 3352 then
												return game:HttpGet(arg, true)
											end

											while true do
											end
										end)

										if ok and type(result) == "string" and result ~= "" then
											return result, 200
										end
									end

									return nil, nil
								end

								fn40 = function(arg)
									local get, v85 = fn39(arg, "GET", {
										["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
										Accept = "image/avif,image/webp,image/apng,image/*,video/*,*/*;q=0.8",
										Referer = (arg:match("^(https?://[^/]+)") or "") .. "/",
									})

									local v86 = v83[52]
									if type(get) ~= v86 or #get < v83[184] then
										return nil
									end

									if v85 and v85 ~= 200 then
										return nil
									end
									local str7 = get:sub(1, v83[5]):lower()
									if str7:find("<!doctype", 1, true) or str7:find("<html", 1, true) or str7:find(v83[156], 1, v83[4]) then
										return nil
									end
									return get
								end

								do
									local function fn41(arg)
										local str7 = tostring(arg or ""):lower()
										return str7:find("cloudflare", v83[34], true) or str7:find(v83[32], 1, true) or str7:find("bot", 1, true) or str7:find("could not read", v83[34], true) or str7:find("challenge", 1, v83[4]) or str7:find("avif", 1, true)
									end

									media.Fetch = function(arg)
										local v85 = media.ApiBase()
										if not v85 then
											return nil, "API URL must start with http"
										end

										if type(arg) ~= "string" or arg == "" then
											return nil, "Enter a media URL"
										end
										local v86 = v83[164]
										local value = select(1, fn39(v85 .. "/sheet?url=" .. fn32(arg) .. "&multi=1&quality=original&fmt=jpg&format=json", v86))
										local str7 = "Request failed, is the API up?"

										if value then
											local v87
											v87, str7 = fn38(value)
											if v87 then
												return v87, str7
											end

											if not fn41(str7) then
												return nil, str7
											end
										end

										local v87 = fn40(arg)
										if not v87 then
											return nil, str7
										end
										local v88 = fn37(v87)
										local v89 = v83[52]
										if type(v88) ~= v89 or v88 == "" then
											return nil, v83[106]
										end
										local json = tbl17.Services.Http:JSONEncode({ data = v88, name = arg:match("([^/\\?]+)%.[%w]+$") or arg:match("([^/\\?]+)$") or "upload.bin" })
										local value2 = select(1, fn39(v85 .. "/sheet?" .. ("&multi=1&quality=original&fmt=jpg&format=json"):sub(2), "POST", { ["Content-Type"] = "application/json" }, json))
										if not value2 then
											return nil, "Upload to API failed - is the API up and recent?"
										end
										return fn38(value2)
									end
								end
							end

							do
								local function fn41(arg)
									if type(arg) ~= "string" or #arg < v83[94] then
										return nil
									end

									if arg:sub(1, v83[195]) == "\137PNG\r\n\26\n" then
										return "png"
									end
									local v85 = v83[20]
									local flag18 = arg:byte(1) == v85

									if flag18 then
										local v86 = v83[140]
										flag18 = arg:byte(v83[62]) == v86
									end

									if flag18 then
										return "jpg"
									end
									local v86 = v83[129]
									if arg:sub(1, 4) == v86 then
										return "gif"
									end

									if arg:sub(1, 4) == "RIFF" and arg:sub(9, 12) == "WEBP" then
										return "webp"
									end
									local v87 = v83[57]
									if arg:sub(1, 2) == v87 then
										return "bmp"
									end

									if arg:sub(5, v83[195]) == "ftyp" then
										local str7 = arg:sub(9, v83[94]):lower()

										if str7:find("avif", 1, true) or str7:find("avis", 1, true) then
											if n27(3063) > 4775 then
												return "avif"
											end

											while true do
											end
										else
											if str7:find(v83[147], v83[34], true) or str7:find("heif", 1, v83[4]) or str7:find(v83[49], 1, v83[4]) then
												return "heic"
											end

											if str7:find("mp4", 1, true) or str7:find(v83[150], 1, v83[4]) or str7:find("iso2", 1, true) then
												return "mp4"
											end
										end
									end

									if arg:byte(v83[34]) == 26 and arg:byte(v83[62]) == 69 then
										return "webm"
									end
									return nil
								end

								local tbl18 = {
									png = v83[4],
									jpg = true,
									jpeg = true,
									webp = v83[4],
									bmp = true,
								}

								local function fn42(arg)
									for _, v85 in ipairs({ "png", "jpg", "jpeg", "webp", v83[159], "gif", v83[200], "webm", "mov", "avif" }) do
										pcall(delfile, fn29() .. "/" .. arg .. "." .. v85)
										pcall(delfile, fn29() .. "/" .. arg .. "." .. v85 .. ".json")
										local n32 = 2

										while true do
											local v86 = v83[149]

											if typeof(isfile) == v86 and isfile(fn29() .. "/" .. arg .. ".p" .. n32 .. "." .. v85) then
												pcall(delfile, fn29() .. "/" .. arg .. ".p" .. n32 .. "." .. v85)
												n32 += 1
												continue
											end

											break
										end
									end
								end

								local function fn43(arg, arg2, arg3)
									local str7 = tostring(arg3 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

									if str7 == "" then
										str7 = "media_" .. tostring(os.time())
									end

									local str8 = str7 .. "." .. arg2

									if not pcall(function()
										fn31()
										fn42(str7)
										local str9 = "/" .. str8
										writefile(fn29() .. str9, arg)
									end) then
										return false, "Could not write the files"
									end

									return true, str8
								end

								local function fn44(arg, arg2)
									local v85 = media.ApiBase()
									if not v85 then
										return nil, "API URL must start with http"
									end
									local v86 = fn37(arg)
									local v87 = v83[52]
									if type(v86) ~= v87 or v86 == "" then
										return nil, v83[106]
									end
									local json = tbl17.Services.Http:JSONEncode({ data = v86, name = arg2 })
									local value = select(1, fn39(v85 .. "/sheet?multi=1&quality=original&fmt=png&format=json", "POST", { ["Content-Type"] = "application/json" }, json))
									if not value then
										return nil, "Upload to API failed - is the API up and recent?"
									end
									local v88, v89 = fn38(value)
									if not v88 then
										return nil, v89
									end
									return v88, v89
								end

								media.Save = function(arg, arg2)
									if not fn30() then
										return false, v83[135]
									end
									local v85 = fn40(arg)
									local str7 = v85 and fn41(v85)

									if v85 and str7 and tbl18[str7] then
										local v86 = fn43
										str7 = str7 == v83[11] and "jpg" or str7
										return v86(v85, str7, arg2)
									end

									if v85 and (str7 == v83[28] or str7 == "heic") then
										local v86, v87 = fn44(v85, "upload." .. str7)
										if not v86 then
											return false, v87
										end
										local v88 = tostring
										arg2 = arg2 or ""
										local str8 = v88(arg2):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

										if str8 == "" then
											str8 = v83[78] .. tostring(os.time())
										end

										local str9 = str8 .. "." .. ((v87.ext == "png" or v87.ext == "jpg") and v87.ext or "png")

										if not pcall(function()
											fn31()
											fn42(str8)
											local str10 = "/" .. str9
											writefile(fn29() .. str10, v86[1])
										end) then
											return false, "Could not write the files"
										end

										return true, str9
									end

									local v86, v87 = media.Fetch(arg)
									if not v86 then
										return false, v87
									end
									local str8 = tostring(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

									if str8 == "" then
										str8 = "media_" .. tostring(os.time())
									end

									local flag18 = #v86 == 1

									if flag18 then
										flag18 = (v87.count or 1) <= v83[34]
									end

									if flag18 then
										local str9 = str8 .. "." .. ((v87.ext == v83[90] or v87.ext == v83[48]) and v87.ext or v83[48])

										if not pcall(function()
											fn31()
											fn42(str8)
											local str10 = "/" .. str9
											writefile(fn29() .. str10, v86[1])
										end) then
											return v83[175], "Could not write the files"
										end

										return true, str9
									end

									local tbl19 = { str8 .. "." .. v87.ext }

									for i = 2, #v86 do
										tbl19[i] = str8 .. ".p" .. i .. "." .. v87.ext
									end

									if not pcall(function()
										fn31()
										fn42(str8)

										for i, v88 in ipairs(v86) do
											local str9 = "/" .. tbl19[i]
											writefile(fn29() .. str9, v88)
										end

										local str9 = "/" .. tbl19[v83[34]] .. v83[169]

										writefile(fn29() .. str9, tbl17.Services.Http:JSONEncode({
											cols = v87.cols,
											cellW = v87.cellW,
											cellH = v87.cellH,
											count = v87.count,
											counts = v87.counts,
											delayMs = v87.delayMs,
											pages = tbl19,
											ext = v87.ext,
										}))
									end) then
										return v83[175], "Could not write the files"
									end

									return true, tbl19[v83[34]]
								end
							end
						end

						media.List = function()
							local tbl18 = { "None" }
							if not fn30() or not isfolder(fn29()) then
								return tbl18
							end
							local ok, result = pcall(listfiles, fn29())
							if not ok or type(result) ~= "table" then
								return tbl18
							end

							for _, v85 in ipairs(result) do
								local match = v85:match("([^/\\]+)$")

								if match and not match:lower():match("%.p%d+%.%w+$") and not match:lower():match("%.json$") and match ~= ".cache" then
									local match2 = match:match("%.(%w+)$")

									if match2 then
										local v86 = string.lower(match2)

										if v86 == "png" or v86 == v83[48] or v86 == "jpeg" or v86 == "webp" or v86 == "bmp" or v86 == "gif" or v86 == "mp4" or v86 == "webm" or v86 == "mov" then
											table.insert(tbl18, match)
										end
									end
								end
							end

							return tbl18
						end

						media.Delete = function(arg)
							if type(arg) ~= "string" or arg == "" or arg == "None" then
								return false, "Select a media file first"
							end
							local v85 = v83[149]
							if typeof(delfile) ~= v85 then
								return false, "Executor does not support delfile"
							end

							if arg:find("rbxassetid://") or arg:find("http") then
								return false, "Cannot delete remote/asset backgrounds"
							end
							local str7 = fn29() .. "/" .. arg

							local ok, result = pcall(function()
								if typeof(isfile) == "function" and not isfile(str7) then
									error("File not found")
								end

								delfile(str7)
								pcall(delfile, str7 .. ".json")
								local str8 = str7:gsub("%.png$", ""):gsub("%.jpe?g$", ""):gsub("%.webm$", ""):gsub("%.mp4$", ""):gsub("%.gif$", "")

								if str8 ~= str7 then
									for _, v86 in ipairs({ v83[90], "jpg", "jpeg" }) do
										local n32 = 2

										while typeof(isfile) == "function" and isfile(str8 .. ".p" .. n32 .. v83[87] .. v86) do
											pcall(delfile, str8 .. ".p" .. n32 .. "." .. v86)
											n32 += 1
										end
									end
								end
							end)

							if not ok then
								return v83[175], tostring(result)
							end
							return v83[4], arg
						end

						do
							local function fn37(arg)
								local v85 = arg or zenthra.Windows[1]
								if not v85 then
									return nil
								end
								return v85.BgCanvas, v85.Wallpaper, v85.BgVideo
							end

							media.Stop = function(arg)
								media.Seq = media.Seq + 1
								media.Active = false
								local v85, v86, v87 = fn37(arg)

								if v87 then
									pcall(function()
										v87:Pause()
									end)

									v87.Visible = false

									pcall(function()
										v87.Video = ""
									end)
								end

								if v86 then
									v86.Image = ""
									v86.ImageTransparency = 1
									v86.ImageRectOffset = Vector2.zero
									v86.ImageRectSize = Vector2.zero
									local preload = v86:FindFirstChild("Preload")

									if preload then
										preload:Destroy()
									end
								end

								if v85 then
									v85.Visible = false
								end
							end

							media.SetOpacity = function(arg, arg2)
								media.Opacity = math.clamp(tonumber(arg) or v83[167], v83[141], 1)
								local v85, v86, v87 = fn37(arg2)
								if not v85 then
									return
								end

								if v86 and v86.Image ~= "" then
									v86.ImageTransparency = 1 - media.Opacity
								end

								v85.GroupTransparency = v87 and v87.Visible and 1 - media.Opacity or 0

								if media.Active then
									v85.Visible = media.Opacity > v83[183]
								end
							end

							media.ShowStatic = function(image, arg)
								media.Stop(arg)
								local v85, v86 = fn37(arg)
								if not v85 or not v86 or type(image) ~= "string" or image == "" then
									return
								end
								v85.Visible = true
								v86.Visible = true
								v86.ImageRectOffset = Vector2.zero
								v86.ImageRectSize = Vector2.zero
								v86.Image = image
								v86.ScaleType = Enum.ScaleType.Stretch
								media.Active = true
								media.SetOpacity(media.Opacity, arg)
							end

							media.PlayPages = function(arg, arg2, arg3)
								media.Stop(arg3)
								media.Seq = media.Seq + v83[34]
								local seq = media.Seq
								local v85, v86 = fn37(arg3)
								local flag18 = not v85 or not v86 or not arg2

								if not flag18 then
									flag18 = (arg2.count or 0) < 1
								end

								if flag18 then
									return
								end
								local cellW = arg2.cellW
								local cellH = arg2.cellH
								local cols = arg2.cols
								local v87 = table.create(arg2.count)
								local n32 = 0

								for i, v88 in ipairs(arg) do
									local counts = arg2.counts and arg2.counts[i] or arg2.count

									for i2 = 0, counts - 1 do
										n32 += v83[34]
										local tbl18 = {}
										local n33 = math.floor(i2 / cols) * cellH
										tbl18[1] = v88
										tbl18[2] = i2 % cols * cellW
										tbl18[3] = n33
										v87[n32] = tbl18
										if not (arg2.count <= n32) then
											continue
										end
										break
									end

									if not (arg2.count <= n32) then
										continue
									end
									break
								end

								if n32 == 0 then
									return
								end
								local folder = Instance.new("Folder")
								folder.Name = "Preload"
								folder.Parent = v86
								local tbl18 = {}

								for _, v88 in ipairs(arg) do
									local imageLabel = Instance.new("ImageLabel")
									imageLabel.Size = UDim2.fromOffset(1, 1)
									imageLabel.BackgroundTransparency = 1
									imageLabel.ImageTransparency = 0.996
									imageLabel.Image = v88
									imageLabel.Parent = folder
									tbl18[v88] = imageLabel
								end

								v85.Visible = true
								v86.Visible = true
								v86.Image = v87[1][1]
								v86.ImageRectSize = Vector2.new(cellW, cellH)
								v86.ImageRectOffset = Vector2.new(v87[1][2], v87[1][3])
								v86.ScaleType = Enum.ScaleType.Stretch
								media.Active = true
								media.SetOpacity(media.Opacity, arg3)
								if n32 == 1 then
									return
								end
								local n33 = math.max(0.016666666666666666, (tonumber(arg2.delayMs) or 100) / v83[55])

								task.spawn(function()
									local n34 = os.clock() + 2

									while true do
										if seq == media.Seq and v86.Parent and os.clock() < n34 then
											local flag19 = true

											for _, v88 in pairs(tbl18) do
												if not v88.IsLoaded then
													flag19 = v83[175]
													break
												end
											end

											if not flag19 then
												task.wait(v83[120])
												continue
											end
										end

										break
									end

									if seq ~= media.Seq then
										return
									end
									local n35 = os.clock() + 3
									local v88 = v87[1][1]
									local n36 = 1

									while true do
										if seq == media.Seq and v86.Parent then
											task.wait(n33)

											if seq == media.Seq then
												local n37 = n36 % n32 + 1
												local v89 = v87[n37]
												local v90 = tbl18[v89[1]]

												if not (v89[1] ~= v88 and v90 and not v90.IsLoaded and os.clock() < n35) then
													if v89[1] ~= v88 then
														v88 = v89[1]
														v86.Image = v88
													end

													v86.ImageRectOffset = Vector2.new(v89[2], v89[v83[192]])
													n36 = n37
												end

												continue
											end
										end

										break
									end
								end)
							end
						end

						media.Apply = function(arg, arg2)
							media.Seq = media.Seq + 1
							local v85 = v83[27]

							if type(arg) == v85 then
								if not flag3 then
									return
								end
								arg = arg[1]
							end

							if type(arg) ~= "string" or arg == "" or arg == v83[86] then
								media.Stop(arg2)
								return
							end

							if arg:find("rbxassetid://") then
								media.ShowStatic(arg, arg2)
								return
							end
							local str7 = fn29() .. "/" .. arg .. ".json"

							if typeof(isfile) == "function" and isfile(str7) then
								local ok, result = pcall(function()
									return tbl17.Services.Http:JSONDecode(readfile(str7))
								end)

								if ok then
									local v86 = v83[27]
									ok = type(result) == v86
								end

								if ok and result.count and type(result.pages) == "table" then
									local tbl18 = {}

									for i, page in ipairs(result.pages) do
										local v86 = fn36(page)
										if not v86 or v86 == "" then
											media.Stop(arg2)
											return
										end
										tbl18[i] = v86
									end

									media.PlayPages(tbl18, result, arg2)
									return
								end
							end

							local v86 = fn36(arg)
							if not v86 or v86 == "" then
								media.Stop(arg2)
								return
							end
							media.ShowStatic(v86, arg2)
						end

						zenthra.Media = media
						tbl17.Media = media
					end

					do
						tbl17.Window.Open = function(arg)
							local tbl18 = arg or {}

							if tbl18.ConfigFolder ~= false then
								tbl17.Config.Setup(tbl18.ConfigFolder or "Zenthra", tbl18.ConfigName or "config")
								tbl17.State.Saved = tbl17.Config.Load()

								if type(tbl17.State.Saved.zenthra_notify_position) == "string" then
									tbl17.Notify.SetPosition(tbl17.State.Saved.zenthra_notify_position)
								end
							end

							local tbl19 = { Tabs = {}, ActiveTab = nil, Open = true, ToggleKey = tbl18.ToggleKey or Enum.KeyCode.RightShift }

							if tbl18.Accent then
								zenthra:SetAccent(tbl18.Accent)
							end

							if tbl18.Theme then
								zenthra:SetTheme(tbl18.Theme)
							end

							local v85 = tbl17.Env.Adopt(tbl17.Util.New("ScreenGui", {
								Name = tbl17.Env.RandomName(),
								ResetOnSpawn = false,
								IgnoreGuiInset = true,
								AutoLocalize = false,
								DisplayOrder = tbl17.Env.GuiDisplayOrder,
								ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
								Parent = tbl17.Env.SafeParent(),
							}))

							pcall(function()
								v85.Modal = v83[175]
							end)

							pcall(function()
								v85:GetPropertyChangedSignal(v83[54]):Connect(function()
									if v85.DisplayOrder < tbl17.Env.GuiDisplayOrder then
										v85.DisplayOrder = tbl17.Env.GuiDisplayOrder
									end
								end)
							end)

							tbl19.Screen = v85

							local v86 = tbl17.Util.New(v83[181], {
								Name = "Layer",
								AnchorPoint = Vector2.new(0.5, v83[167]),
								Position = UDim2.fromScale(0.5, 0.5),
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = v83[34],
								Active = false,
								Parent = v85,
							})

							local v87 = tbl17.Util.New(v83[128], { Scale = 1, Parent = v86 })
							tbl19.Scale = v87

							local function fn36()
								local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
								local n32 = tbl17.Env.Mobile and 30 or v83[186]
								v87.Scale = math.clamp(math.min(viewportSize.X / (tbl17.Layout.Width + n32), viewportSize.Y / (tbl17.Layout.Height + n32)), 0.4, v83[34])
								UIScale.Scale = v87.Scale
							end

							fn36()

							if workspace.CurrentCamera then
								tbl17.Util.Connect(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), fn36)
							end

							local Frame = tbl17.Util.New("Frame", {
								Name = "Holder",
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.fromScale(v83[167], 0.5),
								Size = UDim2.fromOffset(tbl17.Layout.Width, tbl17.Layout.Height),
								BackgroundTransparency = 1,
								Visible = false,
								Parent = v86,
							}, { tbl17.Util.New("UIScale", { Scale = v83[130] }) })

							tbl19.Holder = Frame
							tbl19.RootScale = Frame:FindFirstChildOfClass("UIScale")

							local ImageLabel = tbl17.Util.New("ImageLabel", {
								Name = "Shadow",
								AnchorPoint = Vector2.new(v83[167], v83[167]),
								Position = UDim2.fromScale(0.5, v83[167]),
								Size = UDim2.new(1, 97, 1, 111),
								BackgroundTransparency = 1,
								Image = "rbxassetid://17290899982",
								ImageColor3 = Color3.new(v83[141], 0, v83[141]),
								ImageTransparency = 1,
								Parent = Frame,
							})

							local stroke = tbl17.Util.Stroke
							local v88 = v83[95]
							local v89 = v83[121]

							local v90 = tbl17.Util.New(v83[19], {
								Name = v83[60],
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = v83[141],
								BorderSizePixel = v83[141],
								GroupTransparency = 1,
								Parent = Frame,
							}, { tbl17.Util.Corner(v83[165]), stroke(v88, v89, 0.35) })

							tbl17.Theme.Bind(v90, v83[136], "Background")
							tbl19.Root = v90

							local v91 = tbl17.Util.New(v83[19], {
								Name = v83[12],
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = v83[34],
								BorderSizePixel = 0,
								GroupTransparency = 0,
								Visible = false,
								ZIndex = 0,
								Parent = v90,
							}, { tbl17.Util.Corner(13) })

							tbl19.BgCanvas = v91

							tbl19.BgVideo = tbl17.Util.New("VideoFrame", {
								Name = "Video",
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = v83[34],
								BorderSizePixel = v83[141],
								Visible = false,
								Looped = true,
								Volume = 0,
								ZIndex = 1,
								Parent = v91,
							})

							tbl19.Wallpaper = tbl17.Util.New("ImageLabel", {
								Name = v83[111],
								Size = UDim2.fromScale(v83[34], v83[34]),
								BackgroundTransparency = v83[34],
								BorderSizePixel = 0,
								Image = "",
								ImageTransparency = 1,
								ScaleType = Enum.ScaleType.Stretch,
								Visible = true,
								ZIndex = 2,
								Parent = v91,
							})

							local v92 = v83[186]
							local v93 = v83[136]

							tbl17.Theme.Bind(tbl17.Util.New("Frame", {
								Name = "TopGlow",
								Size = UDim2.new(v83[34], v83[141], 0, 74),
								BackgroundTransparency = 0.94,
								BorderSizePixel = 0,
								ZIndex = v83[192],
								Parent = v90,
							}, { tbl17.Util.Gradient(nil, tbl17.Util.Fade(0, 0.45, 1, 1), v92) }), v93, "Accent")

							local Frame2 = tbl17.Util.New("Frame", {
								Name = "Topbar",
								Size = UDim2.new(1, 0, v83[141], tbl17.Layout.TopbarH),
								BackgroundTransparency = 1,
								Active = true,
								ZIndex = 4,
								Parent = v90,
							})

							local Frame3 = tbl17.Util.New("Frame", {
								Position = UDim2.new(0, v83[81], v83[167], 0),
								AnchorPoint = Vector2.new(v83[141], v83[167]),
								Size = UDim2.fromOffset(0, 18),
								AutomaticSize = Enum.AutomaticSize.X,
								BackgroundTransparency = 1,
								Parent = Frame2,
							}, {
								tbl17.Util.New(v83[68], {
									Padding = UDim.new(0, 7),
									FillDirection = Enum.FillDirection.Horizontal,
									VerticalAlignment = Enum.VerticalAlignment.Center,
									SortOrder = Enum.SortOrder.LayoutOrder,
								}),
							})

							local v94 = tbl17.Util.Label({
								Text = tbl18.Title or "Zenthra",
								TextSize = 14,
								Weight = tbl17.Layout.Weight.Bold,
								AutomaticSize = Enum.AutomaticSize.X,
								Size = UDim2.fromOffset(0, v83[9]),
								LayoutOrder = 1,
								Parent = Frame3,
							})

							local v95 = nil

							if tbl18.Subtitle then
								v95 = tbl17.Util.Label({
									Text = tbl18.Subtitle,
									TextSize = 11,
									ColorKey = v83[157],
									AutomaticSize = Enum.AutomaticSize.X,
									Size = UDim2.fromOffset(0, 14),
									LayoutOrder = 2,
									Parent = Frame3,
								})
							end

							local function fn37(arg2, arg3, arg4)
								local v96 = tbl17.Util.New(v83[73], {
									Text = "",
									AutoButtonColor = false,
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -arg2, v83[167], 0),
									Size = UDim2.fromOffset(v83[29], 26),
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Parent = Frame2,
								}, { tbl17.Util.Corner(7) })

								tbl17.Theme.Bind(v96, "BackgroundColor3", "SurfaceAlt")

								local v97 = tbl17.Util.Image({
									Image = arg3,
									Size = UDim2.fromOffset(13, 13),
									AnchorPoint = Vector2.new(v83[167], 0.5),
									Position = UDim2.fromScale(v83[167], v83[167]),
									ImageTransparency = 0.25,
									ColorKey = v83[96],
									Parent = v96,
								})

								tbl17.Util.Hover(v96, function()
									tbl17.Util.Tween(v96, { BackgroundTransparency = 0.25 }, 0.16)
									tbl17.Util.Tween(v97, { ImageColor3 = palette[arg4 or "Text"], ImageTransparency = 0 }, 0.16)
								end, function()
									tbl17.Util.Tween(v96, { BackgroundTransparency = 1 }, 0.2)
									tbl17.Util.Tween(v97, { ImageColor3 = palette.SubText, ImageTransparency = 0.25 }, 0.2)
								end)

								return v96
							end

							local v96 = fn37(v83[126], "minus")
							local stroke2 = tbl17.Util.Stroke
							local v97 = v83[143]
							local v98 = v83[34]

							local Frame4 = tbl17.Util.New("Frame", {
								AnchorPoint = Vector2.new(1, 0.5),
								Position = UDim2.new(v83[34], -48, 0.5, v83[141]),
								Size = UDim2.fromOffset(v83[69], 27),
								BackgroundTransparency = 0.45,
								BorderSizePixel = 0,
								ClipsDescendants = true,
								Parent = Frame2,
							}, { tbl17.Util.Corner(7), stroke2(v97, v98, 0.25) })

							tbl17.Theme.Bind(Frame4, v83[136], "Surface")

							tbl17.Util.Image({
								Image = "search",
								Size = UDim2.fromOffset(v83[94], 12),
								AnchorPoint = Vector2.new(0, 0.5),
								Position = UDim2.new(0, 9, v83[167], 0),
								ImageTransparency = 0.2,
								ColorKey = "Muted",
								Parent = Frame4,
							})

							local TextBox = tbl17.Util.New("TextBox", {
								Text = "",
								PlaceholderText = v83[93],
								ClearTextOnFocus = v83[175],
								BackgroundTransparency = v83[34],
								ClipsDescendants = true,
								TextWrapped = false,
								TextTruncate = Enum.TextTruncate.AtEnd,
								FontFace = tbl17.Util.Font(tbl17.Layout.Weight.Medium),
								TextSize = 11.5,
								TextXAlignment = Enum.TextXAlignment.Left,
								Position = UDim2.new(0, v83[82], 0, 0),
								Size = UDim2.new(v83[34], -34, v83[34], 0),
								Parent = Frame4,
							})

							tbl17.Theme.Bind(TextBox, "TextColor3", "Text")
							tbl17.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")

							tbl17.Theme.Bind(tbl17.Util.New("Frame", {
								Position = UDim2.new(0, v83[141], v83[141], tbl17.Layout.TopbarH),
								Size = UDim2.new(v83[34], 0, v83[141], 1),
								BackgroundTransparency = 0.55,
								BorderSizePixel = 0,
								ZIndex = 4,
								Parent = v90,
							}), "BackgroundColor3", "Border")

							local Frame5 = tbl17.Util.New("Frame", {
								Name = v83[142],
								Position = UDim2.new(0, v83[141], 0, tbl17.Layout.TopbarH + 1),
								Size = UDim2.new(v83[141], tbl17.Layout.SidebarW, 1, -(tbl17.Layout.TopbarH + v83[34])),
								BackgroundTransparency = 0.35,
								BorderSizePixel = 0,
								ZIndex = 4,
								Parent = v90,
							}, { tbl17.Util.Gradient(nil, tbl17.Util.Fade(v83[89], 0.4, 0.7), 90) })

							tbl17.Theme.Bind(Frame5, "BackgroundColor3", "Surface")
							tbl19.Sidebar = Frame5

							tbl17.Theme.Bind(tbl17.Util.New("Frame", {
								AnchorPoint = Vector2.new(v83[34], v83[141]),
								Position = UDim2.new(1, 0, 0, 0),
								Size = UDim2.new(v83[141], 1, 1, 0),
								BackgroundTransparency = 0.55,
								BorderSizePixel = v83[141],
								Parent = Frame5,
							}), "BackgroundColor3", v83[95])

							local ScrollingFrame = tbl17.Util.New("ScrollingFrame", {
								Position = UDim2.new(0, 12, 0, 12),
								Size = UDim2.new(1, -24, v83[34], -v83[47]),
								BackgroundTransparency = v83[34],
								BorderSizePixel = 0,
								ScrollBarThickness = 0,
								AutomaticCanvasSize = Enum.AutomaticSize.Y,
								CanvasSize = UDim2.new(),
								ScrollingDirection = Enum.ScrollingDirection.Y,
								Parent = Frame5,
							})

							local new = tbl17.Util.New
							local v99 = v83[181]

							local tbl20 = {
								Name = v83[134],
								Size = UDim2.new(1, -(tbl17.Layout.TabPad * 2), 0, tbl17.Layout.TabH),
								BackgroundTransparency = v83[171],
								BorderSizePixel = 0,
								Visible = false,
								ZIndex = 1,
								Parent = ScrollingFrame,
							}

							local tbl21 = {}
							local v100 = tbl17.Util.Corner(7)
							local gradient = tbl17.Util.Gradient
							local v101 = tbl17.Util.Fade(0.1, 0.55, 1)
							tbl21[1] = v100

							do
								local values = table.pack(gradient(nil, v101, 0))
								table.move(values, 1, values.n, 2, tbl21)
							end

							local v102 = new(v99, tbl20, tbl21)
							tbl17.Theme.Bind(v102, "BackgroundColor3", "Accent")
							tbl19.Indicator = v102
							tbl19.TabIndicatorTween = nil

							tbl17.Theme.Bind(tbl17.Util.New("Frame", {
								AnchorPoint = Vector2.new(0, 0.5),
								Position = UDim2.new(0, 0, 0.5, 0),
								Size = UDim2.fromOffset(2, v83[9]),
								BorderSizePixel = 0,
								Parent = v102,
							}, { tbl17.Util.Corner(2) }), "BackgroundColor3", v83[102])

							local padding = tbl17.Util.Padding
							local tabPad = tbl17.Layout.TabPad
							local tabPad2 = tbl17.Layout.TabPad
							local tabPad3 = tbl17.Layout.TabPad

							tbl19.TabHolder = tbl17.Util.New("Frame", {
								Size = UDim2.new(v83[34], 0, v83[141], v83[141]),
								AutomaticSize = Enum.AutomaticSize.Y,
								BackgroundTransparency = v83[34],
								ZIndex = 2,
								Parent = ScrollingFrame,
							}, { tbl17.Util.List(tbl17.Layout.TabGap), padding(tabPad, 0, tabPad2, tabPad3) })

							tbl19.TabScroll = ScrollingFrame

							local v103 = tbl17.Util.New(v83[181], {
								Name = "Content",
								Position = UDim2.new(0, tbl17.Layout.SidebarW + 1, 0, tbl17.Layout.TopbarH + 1),
								Size = UDim2.new(1, -(tbl17.Layout.SidebarW + v83[34]), 1, -(tbl17.Layout.TopbarH + 1)),
								BackgroundTransparency = 1,
								ZIndex = 4,
								Parent = v90,
							})

							tbl19.Content = v103
							local flag18 = false
							local position = nil
							local position2 = nil
							local flag19 = false

							tbl17.Util.Connect(Frame2.InputBegan, function(arg2)
								if tbl17.Window.BlockDrag then
									return
								end

								if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 and arg2.UserInputType ~= Enum.UserInputType.Touch then
									return
								end
								flag18 = true
								flag19 = v83[175]
								position = arg2.Position
								position2 = Frame.Position
							end)

							tbl17.Util.Connect(tbl17.Services.UserInput.InputChanged, function(arg2)
								if not flag18 then
									return
								end

								if arg2.UserInputType ~= Enum.UserInputType.MouseMovement and arg2.UserInputType ~= Enum.UserInputType.Touch then
									if v83[15] <= n24 then
										while v83[4] do
										end
									end

									return
								end

								local n32 = arg2.Position - position

								if n32.Magnitude > 4 then
									flag19 = true
								end

								Frame.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n32.X / v87.Scale, position2.Y.Scale, position2.Y.Offset + n32.Y / v87.Scale)
							end)

							tbl17.Util.Connect(tbl17.Services.UserInput.InputEnded, function(arg2)
								if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 and arg2.UserInputType ~= Enum.UserInputType.Touch then
									return
								end
								local flag20 = flag18 and not flag19
								flag18 = false

								if flag20 and tbl19.CompactPillActive and tbl19.CompactPillActive() then
									tbl19:Toggle()
								end
							end)

							local v104, v105, v106, v107 = tbl17.Page.Create(v103)
							tbl19.SearchBox = TextBox

							local v108 = tbl17.Util.Label({
								Text = v83[196],
								TextSize = 12,
								ColorKey = "Muted",
								TextXAlignment = Enum.TextXAlignment.Center,
								Position = UDim2.fromScale(v83[141], 0.32),
								Size = UDim2.new(1, v83[141], 0, 16),
								Visible = false,
								Parent = v104,
							})

							local flag20 = false

							tbl17.Util.Connect(TextBox:GetPropertyChangedSignal("Text"), function()
								if n26(v83[3]) < 6618 then
									local str7 = TextBox.Text:lower():gsub("^%s+", ""):gsub("%s+$", "")
									local flag21 = str7 ~= ""
									local layoutOrder = 0

									for _, tab in ipairs(tbl19.Tabs) do
										for _, module in ipairs(tab.Modules) do
											local flag22 = flag21 and module.Keyword:find(str7, v83[34], true) ~= nil
											local column = module.Column

											if flag22 then
												layoutOrder += 1
												module.Frame.LayoutOrder = layoutOrder
												column = layoutOrder % 2 == 1 and v106 or v107
											else
												module.Frame.LayoutOrder = module.LayoutOrder
											end

											if module.Frame.Parent ~= column then
												module.Frame.Parent = column
											end
										end
									end

									if not flag3 then
										return
									end
									v108.Visible = flag21 and layoutOrder == 0
									if flag21 == flag20 then
										return
									end
									flag20 = flag21

									if flag21 then
										if tbl19.ActiveTab then
											tbl19.ActiveTab.Page.Visible = false
										end

										v104.Visible = v83[4]
										v104.GroupTransparency = v83[34]
										tbl17.Util.Tween(v104, { GroupTransparency = v83[141] }, v83[77])
									else
										v104.Visible = false

										if tbl19.ActiveTab then
											tbl19.ActiveTab.Page.Visible = true
											tbl19.ActiveTab.Page.GroupTransparency = 0
										end
									end

									return
								end

								while true do
								end
							end)

							local flag21 = false

							local function fn38()
								return zenthra.Flags.zenthra_hide_minimized == true
							end

							local function fn39()
								return zenthra.Flags.zenthra_compact_minimized == true
							end

							local function fn40()
								return math.clamp(math.floor(v94.AbsoluteSize.X / math.max(v87.Scale * (tbl19.RootScale and tbl19.RootScale.Scale or 1), 0.01) + 40), 110, tbl17.Layout.Width)
							end

							local function fn41()
								if not flag21 then
									return UDim2.fromOffset(tbl17.Layout.Width, tbl17.Layout.Height)
								end
								return UDim2.fromOffset(fn39() and fn40() or tbl17.Layout.Width, tbl17.Layout.TopbarH)
							end

							local function fn42()
								return UDim2.new(1, 97, v83[34], 111)
							end

							local function fn43()
								local v109 = flag21 and fn39()
								local visible = not v109
								Frame4.Visible = visible
								v96.Visible = visible

								if v95 then
									v95.Visible = not v109
								end

								Frame3.AnchorPoint = v109 and Vector2.new(0.5, 0.5) or Vector2.new(0, 0.5)
								Frame3.Position = v109 and UDim2.fromScale(v83[167], v83[167]) or UDim2.new(0, 18, 0.5, 0)
							end

							local connection = nil

							local function fn44()
								local localPlayer = tbl17.Services.LocalPlayer
								if localPlayer and localPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
									return true
								end
								local currentCamera = workspace.CurrentCamera
								if not currentCamera then
									return false
								end
								return (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude < 2.25
							end

							local function fn45()
								if tbl19.Open == true and Frame.Visible and not flag21 then
									if connection then
										return
									end

									connection = tbl17.Services.Run.RenderStepped:Connect(function()
										local userInput = tbl17.Services.UserInput
										local v109 = fn44()
										local v110 = userInput:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
										local v111 = userInput:IsKeyDown(Enum.KeyCode.LeftAlt) or userInput:IsKeyDown(Enum.KeyCode.RightAlt)
										if v109 then
											userInput.MouseBehavior = v111 and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter
											return
										end

										if v110 then
											userInput.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
											return
										end
										userInput.MouseBehavior = Enum.MouseBehavior.Default
									end)
								elseif connection then
									connection:Disconnect()
									connection = nil
								end
							end

							local function fn46(arg2)
								flag21 = arg2
								fn43()
								tbl17.Util.Tween(Frame, { Size = fn41() }, v83[185])
								tbl17.Util.Tween(ImageLabel, { ImageTransparency = arg2 and 1 or 0.45 }, arg2 and v83[77] or 0.45)
								fn45()
							end

							tbl19.CompactPillActive = function()
								return flag21 and fn39()
							end

							tbl19.RefreshMinimized = function()
								if not flag21 then
									return
								end
								fn43()
								tbl17.Util.Tween(Frame, { Size = fn41() }, 0.3)
							end

							tbl19.Toggle = function()
								if fn38() then
									if tbl19.Open and Frame.Visible then
										tbl19:SetVisible(false)
									else
										flag21 = false
										tbl19:SetVisible(true)
									end

									return
								end

								if not tbl19.Open or not Frame.Visible then
									flag21 = v83[175]
									tbl19:SetVisible(true)
									return
								end

								fn46(not flag21)
							end

							tbl17.Util.Connect(v96.MouseButton1Click, function()
								tbl19:Toggle()
							end)

							local v109 = nil
							local v110 = nil
							local v111 = nil

							tbl19.SetVisible = function(arg2, arg3)
								local open = arg3 == true
								tbl19.Open = open

								if v109 then
									v109:Cancel()
									v109 = nil
								end

								if v110 then
									v110:Cancel()
									v110 = nil
								end

								if v111 then
									v111:Cancel()
									v111 = nil
								end

								if open then
									if flag21 then
										flag21 = false
										fn43()
									end

									Frame.Visible = true
									ImageLabel.Visible = true
									Frame.Size = fn41()
									ImageLabel.Size = fn42()
									tbl19.RootScale.Scale = 0.78
									v90.GroupTransparency = 1
									ImageLabel.ImageTransparency = 1
									v111 = tbl17.Util.Tween(tbl19.RootScale, { Scale = 0.94 }, v83[75])
									v109 = tbl17.Util.Tween(v90, { GroupTransparency = 0 }, v83[91])
									v110 = tbl17.Util.Tween(ImageLabel, { ImageTransparency = v83[92] }, 0.32)
								else
									v111 = tbl17.Util.Tween(tbl19.RootScale, { Scale = 0.86 }, 0.22, tbl17.Layout.Ease, tbl17.Layout.EaseIn)
									v109 = tbl17.Util.Tween(v90, { GroupTransparency = 1 }, 0.2, tbl17.Layout.Ease, tbl17.Layout.EaseIn)
									v110 = tbl17.Util.Tween(ImageLabel, { ImageTransparency = 1 }, 0.2, tbl17.Layout.Ease, tbl17.Layout.EaseIn)

									task.delay(v83[77], function()
										if not tbl19.Open then
											Frame.Visible = v83[175]
											ImageLabel.Visible = false
											tbl19.RootScale.Scale = 0.94
											fn45()
										end
									end)
								end

								fn45()
							end

							tbl19.Destroy = function()
								if connection then
									connection:Disconnect()
									connection = nil
								end

								tbl17.Config.Save()

								for _, connection2 in ipairs(tbl17.State.Connections) do
									pcall(function()
										connection2:Disconnect()
									end)
								end

								table.clear(tbl17.State.Connections)
								table.clear(zenthra.Options)

								if not (n25 <= 8249) then
									for i, window in ipairs(zenthra.Windows) do
										if window == tbl19 then
											table.remove(zenthra.Windows, i)
											break
										end
									end

									if getgenv then
										getgenv().__ZenthraTeardown = nil
									end

									tbl17.Util.Tween(v90, { GroupTransparency = 1 }, 0.2)
									tbl17.Util.Tween(tbl19.RootScale, { Scale = v83[131] }, 0.2)

									task.delay(v83[177], function()
										v85:Destroy()
										v84:Destroy()
									end)

									return
								end

								while true do
								end
							end

							tbl19.Tab = function(arg2, arg3)
								return tbl17.Tab.Create(tbl19, arg3 or {})
							end

							tbl19.Notify = function(...)
								return zenthra:Notify(select(2, ...))
							end

							tbl17.Util.Connect(tbl17.Services.UserInput.InputBegan, function(arg2, arg3)
								if arg3 or tbl17.Binds.Binding then
									return
								end

								if arg2.KeyCode == tbl19.ToggleKey then
									tbl19:Toggle()
								end
							end)

							if tbl17.Env.Mobile then
								local stroke3 = tbl17.Util.Stroke
								local v112 = v83[124]

								local TextButton = tbl17.Util.New("TextButton", {
									Name = "Handle",
									Text = "",
									AutoButtonColor = false,
									AnchorPoint = Vector2.new(0, v83[167]),
									Position = UDim2.new(0, 16, 0.28, v83[141]),
									Size = UDim2.fromOffset(v83[99], 46),
									BackgroundTransparency = v83[120],
									BorderSizePixel = 0,
									Parent = v85,
								}, { tbl17.Util.Corner(UDim.new(1, 0)), stroke3("Border", 1, v112) })

								tbl17.Theme.Bind(TextButton, "BackgroundColor3", "Surface")

								tbl17.Util.Image({
									Image = tbl18.Icon or "sparkles",
									Size = UDim2.fromOffset(20, 20),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.fromScale(0.5, 0.5),
									ColorKey = v83[102],
									Parent = TextButton,
								})

								local v113 = nil
								local position3 = nil
								local position4 = nil
								local flag22 = nil

								tbl17.Util.Connect(TextButton.InputBegan, function(arg2)
									if arg2.UserInputType ~= Enum.UserInputType.Touch then
										return
									end
									v113 = v83[4]
									flag22 = false
									position3 = arg2.Position
									position4 = TextButton.Position
								end)

								tbl17.Util.Connect(tbl17.Services.UserInput.InputChanged, function(arg2)
									if not (not v113 or arg2.UserInputType ~= Enum.UserInputType.Touch) then
										local n32 = arg2.Position - position3

										if n32.Magnitude > 6 then
											flag22 = v83[4]
										end

										TextButton.Position = UDim2.new(position4.X.Scale, position4.X.Offset + n32.X, position4.Y.Scale, position4.Y.Offset + n32.Y)
										return
									end

									if n27(1866) <= 5639 then
										return
									end

									while true do
									end
								end)

								tbl17.Util.Connect(tbl17.Services.UserInput.InputEnded, function(arg2)
									if not v113 or arg2.UserInputType ~= Enum.UserInputType.Touch then
										return
									end
									v113 = v83[175]

									if not flag22 then
										tbl19:Toggle()
									end
								end)
							end

							local new2 = tbl17.Util.New
							local v112 = v83[19]

							local tbl22 = {
								Name = "KeybindList",
								AnchorPoint = Vector2.new(0, 0.5),
								Position = UDim2.new(0, -194, v83[167], v83[141]),
								Size = UDim2.new(0, v83[138], 0, v83[141]),
								AutomaticSize = Enum.AutomaticSize.Y,
								BackgroundTransparency = 0.02,
								GroupTransparency = 1,
								BorderSizePixel = 0,
								Visible = false,
								Parent = v86,
							}

							local tbl23 = {}
							local v113 = tbl17.Util.Corner(10)
							local Border = tbl17.Util.Stroke("Border", 1, v83[127])
							local list = tbl17.Util.List
							local v114 = v83[161]
							local v115 = tbl17.Util.Padding(10, v83[193], 12, v83[94])
							tbl23[1] = v113
							tbl23[2] = Border
							tbl23[3] = v115

							do
								local values = table.pack(list(v114))
								table.move(values, 1, values.n, 4, tbl23)
							end

							local v116 = new2(v112, tbl22, tbl23)
							tbl17.Theme.Bind(v116, "BackgroundColor3", "Surface")

							tbl17.Util.Label({
								Text = "KEYBINDS",
								TextSize = 10,
								Weight = tbl17.Layout.Weight.Bold,
								ColorKey = "Muted",
								Size = UDim2.new(1, 0, 0, 12),
								LayoutOrder = 0,
								Parent = v116,
							})

							local v117 = tbl17.Util.Label({
								Text = v83[137],
								TextSize = 11,
								ColorKey = "Muted",
								Size = UDim2.new(1, 0, v83[141], 16),
								LayoutOrder = v83[34],
								Parent = v116,
							})

							local tbl24 = {}
							local v118 = v83[175]

							local function fn47()
								for _, v119 in ipairs(tbl24) do
									v119:Destroy()
								end

								table.clear(tbl24)
								local n32 = 0

								for _, bind in ipairs(zenthra.Binds) do
									if bind.Key then
										n32 += 1

										local Frame6 = tbl17.Util.New("Frame", {
											Size = UDim2.new(v83[34], v83[141], 0, 18),
											BackgroundTransparency = 1,
											LayoutOrder = n32 + 1,
											Parent = v116,
										}, { tbl17.Util.FlexRow(6) })

										tbl17.Util.Label({
											Text = bind.Label,
											TextSize = 11.5,
											ColorKey = "SubText",
											TextTruncate = Enum.TextTruncate.AtEnd,
											Size = UDim2.new(0, 0, 1, v83[141]),
											LayoutOrder = 1,
											Parent = Frame6,
										}, { tbl17.Util.Grow() })

										local new3 = tbl17.Util.New

										local tbl25 = {
											Size = UDim2.fromOffset(v83[141], 16),
											AutomaticSize = Enum.AutomaticSize.X,
											BackgroundTransparency = 0.4,
											BorderSizePixel = 0,
											LayoutOrder = 2,
											Parent = Frame6,
										}

										local tbl26 = {}
										local v119 = tbl17.Util.Corner(5)
										local Border2 = tbl17.Util.Stroke("Border", 1, 0.25)
										local padding2 = tbl17.Util.Padding
										tbl26[1] = v119
										tbl26[2] = Border2

										do
											local values = table.pack(padding2(0, 0, 6, 6))
											table.move(values, 1, values.n, 3, tbl26)
										end

										local Frame7 = new3("Frame", tbl25, tbl26)
										tbl17.Theme.Bind(Frame7, "BackgroundColor3", "SurfaceAlt")

										tbl17.Util.Label({
											Text = tbl17.Util.KeyName(bind.Key),
											TextSize = 10,
											Weight = tbl17.Layout.Weight.SemiBold,
											TextXAlignment = Enum.TextXAlignment.Center,
											AutomaticSize = Enum.AutomaticSize.X,
											Size = UDim2.fromOffset(0, 16),
											Parent = Frame7,
										})

										table.insert(tbl24, Frame6)
									end
								end

								v117.Visible = n32 == 0
							end

							local function fn48(arg2)
								v118 = arg2

								if arg2 then
									fn47()
									v116.Visible = true
									tbl17.Util.Tween(v116, { Position = UDim2.new(0, v83[81], 0.5, v83[141]), GroupTransparency = 0 }, 0.34)
								else
									tbl17.Util.Tween(v116, { Position = UDim2.new(0, -194, 0.5, 0), GroupTransparency = v83[34] }, 0.28, tbl17.Layout.Ease, tbl17.Layout.EaseIn)

									task.delay(v83[124], function()
										if not v118 then
											v116.Visible = false
										end
									end)
								end
							end

							zenthra:OnBindsChanged(function()
								if v118 then
									fn47()
								end
							end)

							local v119 = tbl17.Tab.Create(tbl19, { Title = "Gui", Icon = "settings", Internal = v83[4] })
							tbl19.GuiTab = v119
							local v120 = v119:Module({ Title = "Interface", Description = "Window behavior", Side = v83[172], Toggleable = false })

							v120:Toggle({
								Title = "Hide on minimized",
								Flag = "zenthra_hide_minimized",
								Default = false,
								Keybind = false,
								Callback = function(arg2)
									if arg2 and flag21 then
										fn46(v83[175])
									end
								end,
							})

							v120:Toggle({ Title = v83[80], Flag = "zenthra_start_minimized", Default = false, Keybind = v83[175] })

							v120:Toggle({
								Title = "Compact when minimized",
								Flag = "zenthra_compact_minimized",
								Default = false,
								Keybind = false,
								Callback = function()
									tbl19:RefreshMinimized()
								end,
							})

							v120:Toggle({
								Title = "Keybind list",
								Flag = "zenthra_keybind_list",
								Default = false,
								Keybind = v83[175],
								Callback = fn48,
							})

							local v121 = v120:Keybind({
								Title = "Toggle key",
								Flag = "zenthra_toggle_key",
								Default = tbl19.ToggleKey,
								Changed = function(toggleKey)
									tbl19.ToggleKey = toggleKey
								end,
							})

							if v121.Value then
								tbl19.ToggleKey = v121.Value
							end

							local v122 = v119:Module({ Title = "Notifications", Description = v83[151], Side = "Right", Toggleable = false })

							v122:Dropdown({
								Title = "Position",
								Flag = "zenthra_notify_position",
								Options = zenthra.NotifyPositions,
								Default = tbl17.Notify.GetPosition(),
								Callback = function(arg2)
									tbl17.Notify.SetPosition(arg2)
								end,
							})

							v122:Button({
								Title = "Preview",
								Callback = function()
									zenthra:Notify({ Title = "Zenthra", Text = "Sample notification in the selected corner.", Type = "success" })
								end,
							})

							v122:Button({
								Title = "Preview (Content)",
								Callback = function()
									zenthra:Notify({ Title = "Zenthra", Content = "Same toast using Content instead of Text.", Type = "info" })
								end,
							})

							local ok, result = pcall(function()
								tbl19.ModuleTransparency = tonumber(tbl17.State.Saved.gui_module_transparency) or 0

								local function applyModuleTransparency(arg2)
									local moduleTransparency = math.clamp(tonumber(arg2) or 0, 0, 1)
									tbl19.ModuleTransparency = moduleTransparency
									local backgroundTransparency = v83[74] + 0.85 * moduleTransparency

									if type(tbl19.Tabs) == "table" then
										for _, tab in ipairs(tbl19.Tabs) do
											local modules = tab.Modules
											local v123 = v83[27]

											if type(modules) == v123 then
												for _, module in ipairs(modules) do
													local frame = module.Frame

													if frame and frame.Parent then
														frame.BackgroundTransparency = backgroundTransparency
													end
												end
											end
										end
									end

									if tbl19.Sidebar then
										tbl19.Sidebar.BackgroundTransparency = 0.35 + 0.65 * moduleTransparency
									end
								end

								tbl19.ApplyModuleTransparency = applyModuleTransparency

								local tbl25 = {
									{ Title = "Main color", Flag = "gui_theme_background", Key = "Background" },
									{ Title = v83[66], Flag = "gui_theme_surface", Key = "Surface" },
									{ Title = "Accent", Flag = v83[160], Key = v83[102] },
									{ Title = "Stroke", Flag = v83[38], Key = "Border" },
									{ Title = v83[84], Flag = "gui_theme_text", Key = "Text" },
									{ Title = "Subtext", Flag = v83[125], Key = "SubText" },
								}

								local v123 = v119:Module({
									Title = "Appearance",
									Description = "Customize the menu colors",
									Side = v83[85],
									Toggleable = false,
								})

								local tbl26 = {}

								for _, v124 in ipairs(tbl25) do
									tbl26[v124.Key] = v123:Colorpicker({
										Title = v124.Title,
										Flag = v124.Flag,
										Default = palette[v124.Key] or Color3.fromRGB(v83[20], 255, v83[20]),
										Callback = function(arg2)
											pcall(tbl17.Theme.Set, { [v124.Key] = arg2 })
										end,
									})
								end

								local v124 = v123:Slider({
									Title = "Module transparency",
									Flag = "gui_module_transparency",
									Min = v83[141],
									Max = v83[34],
									Decimals = 2,
									Default = 0,
									Callback = applyModuleTransparency,
								})

								v123:Button({
									Title = "Restore default theme",
									Callback = function()
										pcall(tbl17.Theme.Reset)

										for _, v125 in ipairs(tbl25) do
											local v126 = tbl26[v125.Key]
											local v127 = palette[v125.Key]

											if v126 and v126.Set and v127 then
												pcall(v126.Set, v126, v127, true)
											end
										end

										if v124 and v124.Set then
											pcall(v124.Set, v124, 0)
										else
											applyModuleTransparency(0)
										end
									end,
								})

								task.defer(function()
									applyModuleTransparency(zenthra.Flags.gui_module_transparency)
								end)

								local media = zenthra.Media

								if media then
									local function fn49(arg2)
										media.Apply(arg2 or zenthra.Flags.gui_background_image, tbl19)
									end

									local v125 = v119:Module({
										Title = v83[132],
										Description = "Image, GIF or video via API",
										Side = "Left",
										Toggleable = false,
									})

									local v126 = v125:Dropdown({
										Title = "Media",
										Flag = "gui_background_image",
										Options = media.List(),
										Default = zenthra.Flags.gui_background_image or v83[86],
										MaxVisible = 7,
										Callback = function(arg2)
											local v126 = v83[27]

											if type(arg2) == v126 then
												arg2 = arg2[1]
											end

											fn49(arg2)
										end,
									})

									v125:Slider({
										Title = "Media Opacity",
										Flag = "gui_bg_image_opacity",
										Min = 0,
										Max = v83[34],
										Default = tonumber(zenthra.Flags.gui_bg_image_opacity) or 0.45,
										Decimals = 2,
										Callback = function(arg2)
											media.SetOpacity(arg2, tbl19)
										end,
									})

									v125:Input({ Title = v83[33], Flag = "gui_bg_url", Placeholder = "https://... or rbxassetid://" })
									v125:Input({ Title = "Save as", Flag = v83[64], Placeholder = "Name for the file" })

									v125:Button({
										Title = v83[51],
										Callback = function()
											local guiBgUrl = zenthra.Flags.gui_bg_url
											if type(guiBgUrl) ~= "string" or guiBgUrl == "" then
												zenthra:Notify({ Title = "Background", Content = "Paste a URL first", Type = "error", Duration = v83[192] })
												return
											end
											local guiBackgroundImage = guiBgUrl:gsub("^%s+", ""):gsub("%s+$", "")

											if guiBackgroundImage:match("^%d+$") then
												guiBackgroundImage = "rbxassetid://" .. guiBackgroundImage
											end

											if guiBackgroundImage:find("rbxassetid://", 1, true) then
												zenthra.Flags.gui_background_image = guiBackgroundImage
												pcall(zenthra.SaveConfig, zenthra)
												fn49(guiBackgroundImage)

												if v126 and v126.Set then
													pcall(v126.Set, v126, guiBackgroundImage)
												end

												zenthra:Notify({ Title = "Background", Content = "Applied", Type = "success", Duration = 2 })
												return
											end

											zenthra:Notify({ Title = "Background", Content = "Converting via API...", Type = "info", Duration = 4 })

											task.spawn(function()
												local v127, v128 = media.Save(guiBackgroundImage, zenthra.Flags.gui_bg_save_name)
												if not v127 then
													zenthra:Notify({ Title = "Background", Content = tostring(v128), Type = "error", Duration = v83[161] })
													return
												end
												zenthra.Flags.gui_background_image = v128
												pcall(zenthra.SaveConfig, zenthra)
												fn49(v128)

												if v126 and v126.SetOptions then
													v126:SetOptions(media.List())
													pcall(v126.Set, v126, v128)
												end

												zenthra:Notify({ Title = "Background", Content = "Applied: " .. tostring(v128), Type = "success", Duration = 3 })
											end)
										end,
									})

									v125:Button({
										Title = "Refresh list",
										Callback = function()
											if v126 and v126.SetOptions then
												v126:SetOptions(media.List())
											end
										end,
									})

									local flag22 = v83[175]

									v125:Button({
										Title = "Delete Background",
										Callback = function()
											local guiBackgroundImage = zenthra.Flags.gui_background_image
											local v127 = v83[27]

											if type(guiBackgroundImage) == v127 then
												guiBackgroundImage = guiBackgroundImage[1]
											end

											if not guiBackgroundImage or guiBackgroundImage == "None" or guiBackgroundImage == "" then
												flag22 = false
												zenthra:Notify({ Title = v83[132], Content = "Select an image first", Type = v83[118], Duration = 3 })
												return
											end

											if not flag22 then
												flag22 = v83[4]

												zenthra:Notify({
													Title = v83[132],
													Content = "Are you sure? Click again to delete '" .. tostring(guiBackgroundImage) .. "'",
													Type = "warning",
													Duration = 5,
												})

												task.delay(5, function()
													flag22 = false
												end)

												return
											end

											flag22 = false
											local v128, v129 = media.Delete(guiBackgroundImage)

											if v128 then
												zenthra.Flags.gui_background_image = "None"
												pcall(zenthra.SaveConfig, zenthra)
												media.Stop(tbl19)

												if v126 and v126.SetOptions then
													v126:SetOptions(media.List())
												end

												if v126 and v126.Set then
													pcall(v126.Set, v126, "None")
												end

												zenthra:Notify({ Title = "Background", Content = "Deleted " .. tostring(v129), Type = "success", Duration = 3 })
											else
												zenthra:Notify({ Title = v83[132], Content = tostring(v129), Type = "error", Duration = v83[173] })
											end
										end,
									})

									task.defer(function()
										media.SetOpacity(tonumber(zenthra.Flags.gui_bg_image_opacity) or 0.45, tbl19)
										fn49()
									end)
								end
							end)

							if not ok then
								warn("[Zenthra] Gui Appearance/Background failed: ", result)
							end

							local flag22 = tbl17.State.Saved.zenthra_start_minimized == true

							task.defer(function()
								if flag22 then
									tbl19.Open = false
									Frame.Visible = false
									ImageLabel.Visible = false
								else
									tbl19:SetVisible(true)
								end
							end)

							table.insert(zenthra.Windows, tbl19)
							return tbl19
						end

						do
							local function fn36(arg)
								return function(arg2, ...)
									if arg2 == zenthra then
										return arg(...)
									end
									return arg(arg2, ...)
								end
							end

							zenthra.Window = fn36(function(arg)
								return tbl17.Window.Open(arg)
							end)

							zenthra.Notify = fn36(function(arg, arg2)
								return tbl17.Notify.Push(arg, arg2)
							end)

							zenthra.SetTheme = fn36(function(arg)
								return tbl17.Theme.Set(arg)
							end)

							zenthra.SetAccent = fn36(function(arg)
								return tbl17.Theme.SetAccent(arg)
							end)

							zenthra.ResetTheme = fn36(function()
								return tbl17.Theme.Reset()
							end)

							zenthra.SetNotifyPosition = fn36(function(arg)
								return tbl17.Notify.SetPosition(arg)
							end)

							zenthra.GetNotifyPosition = fn36(function()
								return tbl17.Notify.GetPosition()
							end)

							zenthra.OnBindsChanged = fn36(function(arg)
								return tbl17.Binds.OnChanged(arg)
							end)

							zenthra.SaveConfig = fn36(function()
								tbl17.Config.Save()
							end)

							zenthra.GetFlag = fn36(function(arg)
								return zenthra.Flags[arg]
							end)
						end
					end

					do
						local mM2 = {
							State = {
								silentAim = { enabled = false, fov = v83[170], hitpart = v83[115] },
								exploit = {
									instantThrow = false,
									throwWallbang = false,
									wallbang = v83[175],
									autoGrabGun = false,
								},
								esp = {
									enabled = v83[175],
									murderer = true,
									sheriff = true,
									innocent = true,
									droppedGun = v83[4],
								},
								player = {
									walkSpeed = false,
									walkSpeedValue = 16,
									jumpPower = false,
									jumpPowerValue = 50,
									noclip = false,
								},
								autoShoot = {
									enabled = false,
									delay = 0.1,
									visibleCheck = true,
									autoEquip = false,
									wallbang = false,
									ignoreFov = false,
								},
							},
							Connections = {},
							Highlights = {},
							GunHighlights = {},
							WeaponHooks = v83[175],
							RemoteHook = v83[175],
							_grabBusy = false,
							_grabSeen = {},
							_noclipParts = {},
							_playerLoop = nil,
							_noclipLoop = nil,
							_asShotVisible = false,
							_asIgnoreFov = false,
							_lastEspSync = v83[141],
							_aimCacheAt = 0,
							_aimUseCenter = v83[175],
							_mouseLock = nil,
							_losParams = nil,
							_worldParams = nil,
							_worldParamsAt = v83[141],
						}

						local players = tbl17.Services.Players
						local localPlayer = players.LocalPlayer
						local run = tbl17.Services.Run
						local userInput = tbl17.Services.UserInput
						local v85 = workspace
						local CurrentRoundClient = require(game:GetService("ReplicatedStorage").Modules.CurrentRoundClient)
						local WeaponService = require(game:GetService("ReplicatedStorage").ClientServices.WeaponService)
						local getMouseTargetCFrame = WeaponService.GetMouseTargetCFrame
						local getTargetPosition = WeaponService.GetTargetPosition
						local service = game:GetService(v83[14])

						local tbl18 = {
							Murderer = Color3.fromRGB(v83[20], 60, 60),
							Sheriff = Color3.fromRGB(60, v83[153], 255),
							Hero = Color3.fromRGB(v83[168], 120, 255),
							Innocent = Color3.fromRGB(60, 220, v83[186]),
						}

						mM2.getPlayerRole = function(arg)
							local v86 = CurrentRoundClient.PlayerData[arg.Name]
							if v86 and type(v86.Role) == "string" then
								return v86.Role
							end
							return v83[35]
						end

						mM2.getLocalRole = function()
							return mM2.getPlayerRole(localPlayer)
						end

						mM2.isPlayerAlive = function(arg)
							local v86 = CurrentRoundClient.PlayerData[arg.Name]
							if v86 and v86.Dead == true then
								return v83[175]
							end
							local character = arg.Character
							if not character then
								return false
							end
							local humanoid = character:FindFirstChildOfClass("Humanoid")
							return humanoid and humanoid.Health > 0
						end

						mM2.playerHasRoundGun = function(arg)
							local function fn36(arg2)
								if not arg2 then
									return v83[175]
								end

								for _, child in ipairs(arg2:GetChildren()) do
									if child:IsA("Tool") and child:HasTag("Weapon_Gun") then
										return v83[4]
									end
								end

								return false
							end

							return fn36(arg.Character) or fn36(arg:FindFirstChild("Backpack"))
						end

						mM2.getEspRole = function(arg)
							if not mM2.isPlayerAlive(arg) then
								return nil
							end
							local v86 = mM2.getPlayerRole(arg)

							if mM2.playerHasRoundGun(arg) then
								if v86 == "Murderer" then
									return "Murderer"
								end
								return v83[105]
							end

							if v86 == "Sheriff" or v86 == "Hero" then
								return "Innocent"
							end
							return v86
						end

						mM2.getDroppedGunAdornee = function(arg)
							if arg:IsA("Tool") then
								return arg:FindFirstChild("Handle") or arg
							end

							if arg:IsA("BasePart") then
								return arg
							end

							if arg:IsA(v83[123]) then
								return arg.PrimaryPart or arg:FindFirstChildWhichIsA("BasePart", v83[4])
							end
							return nil
						end

						mM2.isWorldDroppedGun = function(arg)
							if not arg or not arg.Parent then
								return v83[175]
							end

							if players:GetPlayerFromCharacter(arg.Parent) then
								return v83[175]
							end
							local parent = arg.Parent
							if parent:IsA("Backpack") and parent.Parent and parent.Parent:IsA("Player") then
								return false
							end
							return true
						end

						mM2.findDroppedGuns = function()
							local tbl19 = {}
							local tbl20 = {}

							for _, v86 in ipairs(service:GetTagged("GunDrop")) do
								if not tbl20[v86] and mM2.isWorldDroppedGun(v86) then
									tbl20[v86] = true
									tbl19[#tbl19 + 1] = v86
								end
							end

							local v86 = ipairs
							local v87 = table.pack(service:GetTagged("Weapon_Gun"))
							v87.n = 1 + v87.n - 1
							table.move(v87, 1, v87.n, 1, v87)

							for _, v88 in v86(table.unpack(v87, 1, v87.n)) do
								if not tbl20[v88] and v88:IsA("Tool") and mM2.isWorldDroppedGun(v88) then
									tbl20[v88] = true
									tbl19[#tbl19 + 1] = v88
								end
							end

							return tbl19
						end

						mM2.isValidSilentTargetPlayer = function(arg)
							local v86 = mM2.getPlayerRole(arg)
							local v87 = mM2.getLocalRole()
							local v88 = mM2.playerHasRoundGun(localPlayer)
							if v87 == "Sheriff" or v87 == v83[105] or v88 then
								return v86 == "Murderer"
							end

							if v87 == "Murderer" then
								return v86 == "Sheriff" or v86 == "Hero" or v86 == v83[35]
							end
							return false
						end

						mM2.isMobileAim = function()
							if tbl17.Env.Mobile or zenthra.IsMobile then
								return true
							end

							local ok, result = pcall(function()
								return userInput.PreferredInput
							end)

							if ok and result == Enum.PreferredInput.Touch then
								return true
							end
							return userInput.TouchEnabled and not userInput.KeyboardEnabled
						end

						mM2.refreshAimCenterCache = function()
							local now2 = os.clock()
							if now2 - (mM2._aimCacheAt or v83[141]) < 0.35 then
								return
							end
							mM2._aimCacheAt = now2

							if not mM2.isMobileAim() then
								local playerScripts = localPlayer:FindFirstChild("PlayerScripts")
								local mouseLock = mM2._mouseLock

								if not mouseLock or mouseLock.Parent ~= playerScripts then
									mouseLock = playerScripts and playerScripts:FindFirstChild("MouseLock") or nil
									mM2._mouseLock = mouseLock
								end

								local v86 = mM2
								local flag18 = mouseLock ~= nil

								if flag18 then
									local v87 = v83[4]
									flag18 = mouseLock:GetAttribute("Enabled") == v87
								end

								v86._aimUseCenter = flag18 and userInput.PreferredInput ~= Enum.PreferredInput.Gamepad
								return
							end

							if v83[59] < n27(1839) then
								mM2._aimUseCenter = true
								return
							end

							while true do
							end
						end

						mM2.getAimPoint = function(arg)
							if arg then
								return arg
							end
							local currentCamera = v85.CurrentCamera
							if not currentCamera then
								return Vector2.zero
							end
							local viewportSize = currentCamera.ViewportSize
							mM2.refreshAimCenterCache()
							if mM2._aimUseCenter then
								return Vector2.new(viewportSize.X * 0.5, viewportSize.Y * v83[167])
							end
							local mouseLocation = userInput:GetMouseLocation()
							return Vector2.new(mouseLocation.X, mouseLocation.Y)
						end

						fov = {
							Enabled = false,
							Size = 500,
							Color = Color3.fromRGB(v83[20], 255, 255),
							Thickness = v83[79],
							Transparency = 0.25,
							Filled = false,
							Conns = {},
							destroy = function()
								if fov._circle then
									pcall(function()
										fov._circle:Remove()
									end)

									fov._circle = nil
								end

								if fov.Conns.draw then
									pcall(function()
										fov.Conns.draw:Disconnect()
									end)

									fov.Conns.draw = nil
								end
							end,
							applyStyle = function()
								local circle = fov._circle
								if not circle then
									return
								end
								circle.Radius = fov.Size
								circle.Color = fov.Color
								circle.Thickness = fov.Thickness
								circle.Transparency = fov.Transparency
								circle.Filled = fov.Filled == true
							end,
							ensure = function()
								fov.destroy()
								if not fov.Enabled or typeof(Drawing) ~= "table" then
									return
								end
								local circle = Drawing.new("Circle")
								circle.Visible = v83[175]
								fov._circle = circle
								fov.applyStyle()

								fov.Conns.draw = run.Heartbeat:Connect(function()
									local circle2 = fov._circle
									if not circle2 then
										return
									end

									if not fov.Enabled then
										circle2.Visible = false
										return
									end

									if not v85.CurrentCamera then
										circle2.Visible = false
										return
									end
									local fov2 = mM2.State.silentAim.fov or fov.Size

									if fov.Size ~= fov2 then
										fov.Size = fov2
										circle2.Radius = fov2
									end

									circle2.Position = mM2.getAimPoint()
									circle2.Visible = true
								end)
							end,
							setEnabled = function(arg)
								fov.Enabled = arg == true

								if fov.Enabled then
									fov.ensure()
								else
									fov.destroy()
								end
							end,
							setSize = function(arg)
								fov.Size = math.clamp(tonumber(arg) or 500, 40, 600)
								mM2.State.silentAim.fov = fov.Size
								fov.applyStyle()
							end,
							setColor = function(color)
								local v86 = v83[76]

								if typeof(color) == v86 then
									fov.Color = color
									fov.applyStyle()
								end
							end,
							setThickness = function(arg)
								fov.Thickness = math.clamp(tonumber(arg) or 1.5, 0.5, 8)
								fov.applyStyle()
							end,
							setTransparency = function(arg)
								local num = tonumber(arg) or v83[103]

								if num > 1 then
									num /= 100
								end

								fov.Transparency = math.clamp(num, 0, 1)
								fov.applyStyle()
							end,
							applyFromUi = function()
								local mm2FovSize = zenthra.Flags.mm2_fov_size

								if type(mm2FovSize) ~= "number" then
									mm2FovSize = zenthra.Flags.mm2_silent_fov
								end

								fov.setSize(mm2FovSize or fov.Size)
								local mm2FovColor = zenthra.Flags.mm2_fov_color
								local v86 = v83[76]

								if typeof(mm2FovColor) == v86 then
									fov.setColor(mm2FovColor)
								end

								fov.setThickness(zenthra.Flags.mm2_fov_thickness or fov.Thickness)
								local mm2FovTransparency = zenthra.Flags.mm2_fov_transparency
								fov.setTransparency(mm2FovTransparency ~= nil and mm2FovTransparency or 25)
								fov.setEnabled(zenthra.Flags.mm2_fov_enabled == true)
							end,
						}

						local value = rawget(getgenv(), "Zenthra")
						value = value and value.FOV

						if value and value.destroy then
							pcall(value.destroy)
						end

						mM2.getCharacterParts = function(arg, arg2)
							local tbl19 = {}

							local function fn36(arg3)
								local v86 = arg:FindFirstChild(arg3)

								if v86 and v86:IsA("BasePart") then
									table.insert(tbl19, v86)
								end
							end

							if arg2 == v83[115] then
								fn36("Head")
							elseif arg2 == "HumanoidRootPart" then
								fn36("HumanoidRootPart")
							else
								fn36("Head")
								fn36("UpperTorso")
								fn36(v83[50])
								fn36("Torso")
								fn36(v83[24])
							end

							if #tbl19 == 0 then
								fn36("HumanoidRootPart")
							end

							return tbl19
						end

						mM2.isGunTool = function(arg)
							if not arg or not arg:IsA("Tool") then
								return false
							end

							if arg:GetAttribute("IsGun") == true then
								return true
							end

							local ok, result = pcall(function()
								return arg:HasTag(v83[10])
							end)

							return ok and result == v83[4]
						end

						mM2.getEquippedWeapon = function()
							local character = localPlayer.Character
							if not character then
								return nil, nil
							end

							for _, child in ipairs(character:GetChildren()) do
								if child:IsA("Tool") then
									if child:HasTag("Weapon_Knife") then
										return "knife", child
									end

									if mM2.isGunTool(child) then
										return v83[67], child
									end
								end
							end

							return nil, nil
						end

						mM2.findLocalGun = function()
							local function fn36(arg)
								if not arg then
									return nil
								end

								for _, child in ipairs(arg:GetChildren()) do
									if mM2.isGunTool(child) then
										return child
									end
								end

								return nil
							end

							return fn36(localPlayer.Character) or fn36(localPlayer:FindFirstChild("Backpack"))
						end

						mM2.equipLocalGunFast = function(arg)
							local v86 = arg or mM2.findLocalGun()

							if v86 then
								local character = localPlayer.Character
								local v87 = character and character:FindFirstChildOfClass(v83[116])
								if not v87 or v87.Health <= v83[141] then
									return nil
								end

								if v86.Parent == character then
									return v86
								end

								pcall(function()
									v87:EquipTool(v86)
								end)

								local v88 = v83[83]
								local n32 = os.clock() + v88

								while v86.Parent ~= character and os.clock() < n32 do
									task.wait()
								end

								if v86.Parent ~= character then
									return nil
								end
								task.wait()
								return v86
							end

							if not (n25 <= 8254) then
								return nil
							end

							while true do
							end
						end

						mM2.isKnifeTool = function(arg)
							if not arg or not arg:IsA("Tool") then
								return false
							end

							if arg:GetAttribute("IsKnife") == true then
								return v83[4]
							end

							local ok, result = pcall(function()
								return arg:HasTag(v83[13])
							end)

							return ok and result == v83[4]
						end

						mM2.findLocalKnife = function()
							local function fn36(arg)
								if not arg then
									return nil
								end

								for _, child in ipairs(arg:GetChildren()) do
									if mM2.isKnifeTool(child) then
										return child
									end
								end

								return nil
							end

							return fn36(localPlayer.Character) or fn36(localPlayer:FindFirstChild("Backpack"))
						end

						mM2.equipLocalKnifeFast = function(arg)
							local v86 = arg or mM2.findLocalKnife()
							if not v86 then
								return nil
							end
							local character = localPlayer.Character
							local humanoid = character and character:FindFirstChildOfClass("Humanoid")
							if not humanoid or humanoid.Health <= 0 then
								return nil
							end

							if v86.Parent == character then
								return v86
							end

							pcall(function()
								humanoid:EquipTool(v86)
							end)

							local n32 = os.clock() + 0.35

							while v86.Parent ~= character and os.clock() < n32 do
								task.wait()
							end

							if v86.Parent ~= character then
								return nil
							end
							task.wait()
							return v86
						end

						mM2.getPhysicsRepRoot = function(arg)
							local character = arg or localPlayer.Character
							if not character then
								return nil
							end
							local physicsRepRootPart = character:FindFirstChild("PhysicsRepRootPart")
							if physicsRepRootPart and physicsRepRootPart:IsA(v83[23]) then
								return physicsRepRootPart
							end
							local physicsRepRootPart2 = character:FindFirstChild("PhysicsRepRootPart", true)
							if physicsRepRootPart2 and physicsRepRootPart2:IsA(v83[23]) then
								return physicsRepRootPart2
							end
							return character:FindFirstChild("HumanoidRootPart")
						end

						mM2.getThrowOrigin = function()
							local v86, v87 = mM2.getEquippedWeapon()

							if v87 then
								local handle = v87:FindFirstChild("Handle")
								if handle then
									return handle.Position
								end
							end

							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							return character and character.Position or Vector3.zero
						end

						mM2.getGunOrigin = function()
							local character = localPlayer.Character

							if character then
								local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
								humanoidRootPart = humanoidRootPart and humanoidRootPart:FindFirstChild("GunRaycastAttachment")
								if humanoidRootPart then
									return humanoidRootPart.WorldPosition
								end
								return mM2.getThrowOrigin()
							end

							if n27(v83[58]) < 10606 then
								return Vector3.zero
							end

							while true do
							end
						end

						mM2.getTargetVelocity = function(arg)
							local humanoidRootPart = arg.Character and arg.Character:FindFirstChild("HumanoidRootPart")
							humanoidRootPart = humanoidRootPart and humanoidRootPart.AssemblyLinearVelocity or Vector3.zero
							local vector = Vector3.new(humanoidRootPart.X, 0, humanoidRootPart.Z)
							if vector.Magnitude > 1.5 then
								return vector
							end
							local humanoid = arg.Character and arg.Character:FindFirstChildOfClass("Humanoid")
							if humanoid and humanoid.MoveDirection.Magnitude > 0.05 then
								return humanoid.MoveDirection * humanoid.WalkSpeed
							end
							return vector
						end

						mM2.computeLeadTime = function(arg, arg2, arg3, arg4)
							local networkPing = localPlayer:GetNetworkPing()

							if arg == "knife" then
								local n32 = 1

								if arg2 then
									local attribute = arg2:GetAttribute("ThrowSpeed")

									if typeof(attribute) == "number" and attribute > 0 then
										n32 = attribute
									end
								end

								return n32 + (arg4 - arg3).Magnitude / 96 + networkPing * 0.35
							end

							if arg == "gun" then
								return math.clamp(networkPing * 0.65 + v83[154], 0.03, 0.45)
							end
							return math.clamp(networkPing * 0.5, 0.02, 0.35)
						end

						mM2.exploitCoversWeapon = function(arg)
							if arg == v83[110] then
								return mM2.State.exploit.instantThrow
							end

							if arg == "gun" then
								return mM2.State.exploit.wallbang
							end
							return false
						end

						mM2.computeExploitLeadTime = function()
							local v86 = v83[74]
							return math.clamp(localPlayer:GetNetworkPing() * 2 + 0.15, v86, 0.45)
						end

						mM2.predictPartPosition = function(arg, arg2, arg3, arg4)
							if arg3 == "gun" then
								local getGunLockPoint = mM2.getGunLockPoint
								arg = arg and arg.Character
								return getGunLockPoint(arg, arg2) or arg2.Position
							end

							local v86 = mM2.getTargetVelocity(arg, arg2)
							if mM2.exploitCoversWeapon(arg3) then
								return arg2.Position + v86 * mM2.computeExploitLeadTime()
							end
							local v87 = mM2.getThrowOrigin()
							local n32 = arg2.Position + v86 * mM2.computeLeadTime(arg3, arg4, v87, arg2.Position)

							if arg3 == v83[110] then
								n32 = arg2.Position + v86 * mM2.computeLeadTime(arg3, arg4, v87, n32)
							end

							return n32
						end

						mM2.getGunLockPart = function(arg, arg2)
							if arg2 and arg2:IsA("BasePart") and arg2:IsDescendantOf(arg) then
								return arg2
							end
							local v86 = arg and arg:FindFirstChild(mM2.State.silentAim.hitpart or "Head")
							if v86 and v86:IsA(v83[23]) then
								return v86
							end

							if not arg then
								return nil
							end
							return arg:FindFirstChild(v83[115]) or arg:FindFirstChild("UpperTorso") or arg:FindFirstChild("Torso") or arg:FindFirstChild("HumanoidRootPart")
						end

						mM2.getGunLockPoint = function(arg, arg2)
							local v86 = mM2.getGunLockPart(arg, arg2)
							return v86 and v86.Position
						end

						mM2.gunLockCFrame = function(arg, arg2, arg3)
							if typeof(arg) ~= "CFrame" or not arg2 then
								if n25 > 8284 then
									while v83[4] do
									end
								end

								return nil
							end

							local v86 = mM2.getGunLockPart(arg2, arg3)
							if not v86 then
								return nil
							end
							local position = arg.Position
							local position2 = v86.Position
							local n32 = position2 - position
							local magnitude = n32.Magnitude
							if magnitude < 0.05 then
								return CFrame.new(position2)
							end
							local gunLockParams = mM2._gunLockParams

							if not gunLockParams then
								gunLockParams = RaycastParams.new()
								gunLockParams.FilterType = Enum.RaycastFilterType.Include
								mM2._gunLockParams = gunLockParams
							end

							gunLockParams.FilterDescendantsInstances = { arg2 }
							local hit = v85:Raycast(position, n32.Unit * (magnitude + 1.5), gunLockParams)
							if hit and hit.Position then
								return CFrame.new(hit.Position)
							end
							return CFrame.new(position2)
						end

						mM2.hasGunLineOfSight = function(arg)
							local v86 = mM2.getGunOrigin()
							local n32 = arg - v86
							if n32.Magnitude <= 0.05 then
								return true
							end
							local losParams = mM2._losParams

							if not losParams then
								losParams = RaycastParams.new()
								losParams.FilterType = Enum.RaycastFilterType.Exclude
								mM2._losParams = losParams
							end

							losParams.FilterDescendantsInstances = { localPlayer.Character }
							local hit = v85:Raycast(v86, n32, losParams)
							if not hit or not hit.Instance then
								return v83[4]
							end
							local model = hit.Instance:FindFirstAncestorOfClass("Model")
							if model and model:FindFirstChildOfClass("Humanoid") then
								return true
							end
							return false
						end

						mM2.findSilentTargetPart = function(arg, arg2)
							local tbl19 = arg2 or {}
							if not mM2.State.silentAim.enabled and not mM2.State.autoShoot.enabled and not tbl19.force then
								return nil, nil
							end
							local currentCamera = v85.CurrentCamera
							if not currentCamera then
								return nil, nil
							end
							local v86 = mM2.getAimPoint(arg)
							local fov2 = mM2.State.silentAim.fov
							local hitpart = tbl19.hitpart or mM2.State.silentAim.hitpart
							local flag18 = tbl19.visibleCheck == true or mM2._asShotVisible == true
							local flag19 = tbl19.ignoreFov == true or mM2._asIgnoreFov == true
							local position = mM2.getGunOrigin()

							if position == Vector3.zero then
								position = mM2.rootPart()
								position = position and position.Position or currentCamera.CFrame.Position
							end

							local v87 = nil
							local v88 = nil
							local v89 = nil

							for _, player in ipairs(players:GetPlayers()) do
								if player ~= localPlayer and mM2.isPlayerAlive(player) and mM2.isValidSilentTargetPlayer(player) then
									local character = player.Character

									if character then
										local v90 = mM2.getCharacterParts(character, hitpart)

										for i = 1, #v90 do
											local v91 = v90[i]
											local magnitude

											if flag19 then
												magnitude = (v91.Position - position).Magnitude
											else
												local v92, flag20 = currentCamera:WorldToViewportPoint(v91.Position)
												flag20 = flag20 and v92.Z > v83[141]
												magnitude = nil

												if flag20 then
													local n32 = v92.X - v86.X
													local n33 = v92.Y - v86.Y
													local v93 = math.sqrt(n32 * n32 + n33 * n33)
													magnitude = nil

													if v93 <= fov2 then
														magnitude = v93
													end
												end
											end

											if magnitude and (not v87 or magnitude < v87) then
												if not flag18 or mM2.hasGunLineOfSight(v91.Position) then
													v87 = magnitude
													v88 = player
													v89 = v91
												end
											end
										end
									end
								end
							end

							return v88, v89
						end

						mM2.findSilentTargetWorldPos = function(arg)
							local v86, v87 = mM2.findSilentTargetPart(arg)
							if not v87 or not v86 then
								return nil
							end
							local v88, v89 = mM2.getEquippedWeapon()

							if v88 == "gun" then
								local v90 = mM2.getLiveGunOriginCFrame()
								if typeof(v90) == "CFrame" then
									local v91 = mM2.gunLockCFrame(v90, v86.Character, v87)
									return v91 and v91.Position
								end
								return mM2.getGunLockPoint(v86.Character, v87)
							end

							return mM2.predictPartPosition(v86, v87, v88, v89)
						end

						mM2.freshGunRedirectTarget = function(arg)
							local v86, upperTorso = mM2.findSilentTargetPart()

							if not upperTorso and typeof(arg) == "CFrame" then
								v86 = mM2.resolvePlayerNearPos(arg.Position, 22)

								if v86 and not mM2.isValidSilentTargetPlayer(v86) then
									v86 = nil
								end

								if v86 and v86.Character then
									upperTorso = v86.Character:FindFirstChild("UpperTorso") or v86.Character:FindFirstChild("Torso") or v86.Character:FindFirstChild(v83[24]) or v86.Character:FindFirstChild("Head")
								end
							end

							if not upperTorso or not v86 or not v86.Character or not mM2.isValidSilentTargetPlayer(v86) then
								return nil
							end
							local getLiveGunOriginCFrame = mM2.getLiveGunOriginCFrame
							local v87 = v83[155]
							local v88 = getLiveGunOriginCFrame(typeof(arg) == v87 and arg or nil)
							return mM2.gunLockCFrame(v88, v86.Character, upperTorso), v88
						end

						mM2.getLiveGunOriginCFrame = function(arg)
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							character = character and character:FindFirstChild("GunRaycastAttachment")
							if character then
								return character.WorldCFrame
							end

							if typeof(arg) == "CFrame" then
								return arg
							end
							return nil
						end

						mM2.deepenGunTarget = function(arg, arg2, arg3)
							local v86 = v83[155]
							local flag18 = typeof(arg) ~= v86

							if not flag18 then
								local v87 = v83[155]
								flag18 = typeof(arg2) ~= v87
							end

							if flag18 then
								return arg2
							end
							local n32 = arg2.Position - arg.Position
							if n32.Magnitude < 0.05 then
								return arg2
							end
							return CFrame.new(arg2.Position + n32.Unit * (arg3 or 2.75))
						end

						mM2.hookGetMouseTargetCFrame = function(arg)
							if not mM2.State.silentAim.enabled and not mM2.State.autoShoot.enabled then
								return getMouseTargetCFrame(arg)
							end
							local v86 = mM2.findSilentTargetWorldPos()
							if v86 then
								return CFrame.new(v86)
							end
							return getMouseTargetCFrame(arg)
						end

						mM2.hookGetTargetPosition = function(arg, arg2, arg3)
							if not mM2.State.silentAim.enabled and not mM2.State.autoShoot.enabled then
								return getTargetPosition(arg, arg2, arg3)
							end
							local v86 = mM2.findSilentTargetWorldPos(Vector2.new(arg2, arg3))
							if v86 then
								return CFrame.new(v86)
							end
							return getTargetPosition(arg, arg2, arg3)
						end

						mM2.installWeaponHooks = function()
							if mM2.WeaponHooks then
								return
							end
							WeaponService.GetMouseTargetCFrame = mM2.hookGetMouseTargetCFrame
							WeaponService.GetTargetPosition = mM2.hookGetTargetPosition
							mM2.WeaponHooks = v83[4]
						end

						mM2.worldOnlyParams = function()
							local now2 = os.clock()
							local worldParams = mM2._worldParams

							if not worldParams then
								worldParams = RaycastParams.new()
								worldParams.FilterType = Enum.RaycastFilterType.Exclude
								mM2._worldParams = worldParams
							end

							if now2 - (mM2._worldParamsAt or 0) > 0.2 then
								mM2._worldParamsAt = now2
								local filterDescendantsInstances = {}

								for _, player in ipairs(players:GetPlayers()) do
									local character = player.Character

									if character then
										filterDescendantsInstances[#filterDescendantsInstances + 1] = character
									end
								end

								worldParams.FilterDescendantsInstances = filterDescendantsInstances
							end

							return worldParams
						end

						mM2.resolvePlayerNearPos = function(arg, arg2)
							local v86 = arg2 or v83[126]
							local v87 = nil

							for _, player in ipairs(players:GetPlayers()) do
								if player ~= localPlayer then
									local character = player.Character
									local humanoid = character and character:FindFirstChildOfClass("Humanoid")

									if humanoid and humanoid.Health > 0 then
										local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild(v83[115])

										if humanoidRootPart then
											local magnitude = (humanoidRootPart.Position - arg).Magnitude

											if magnitude < v86 then
												v86 = magnitude
												v87 = player
											end
										end
									end
								end
							end

							return v87
						end

						mM2.freshExploitTarget = function(arg)
							if typeof(arg) ~= "CFrame" then
								return arg
							end
							local v86 = mM2.resolvePlayerNearPos(arg.Position, 14)
							if not v86 or not v86.Character then
								return arg
							end
							local humanoidRootPart = v86.Character:FindFirstChild(mM2.State.silentAim.hitpart or "Head") or v86.Character:FindFirstChild(v83[115]) or v86.Character:FindFirstChild("HumanoidRootPart")
							if not humanoidRootPart then
								return arg
							end
							return CFrame.new(humanoidRootPart.Position + mM2.getTargetVelocity(v86, humanoidRootPart) * mM2.computeExploitLeadTime())
						end

						mM2.buildFakeOrigin = function(arg)
							if typeof(arg) ~= "CFrame" then
								return nil
							end
							local position = arg.Position
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							character = character and character.Position - position or Vector3.zero
							local vector

							if character.Magnitude < 0.1 then
								vector = Vector3.new(0, 0, 1)
							else
								vector = character.Unit
							end

							local hit = v85:Raycast(position, vector * 3, mM2.worldOnlyParams())
							local n32 = 3

							if hit then
								n32 = math.max(0.5, (hit.Position - position).Magnitude - 0.25)
							end

							return CFrame.new(position + vector * n32, position)
						end

						mM2.clampTargetToWall = function(arg)
							if typeof(arg) ~= "CFrame" then
								return arg
							end
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")
							if not character then
								return arg
							end
							local position = character.Position
							local n32 = arg.Position - position
							if n32.Magnitude < v83[89] then
								return arg
							end
							local hit = v85:Raycast(position, n32, mM2.worldOnlyParams())
							if not hit then
								return arg
							end
							return CFrame.new(hit.Position - n32.Unit * v83[167])
						end

						mM2.exploitAppliesTo = function(arg)
							local parent = arg.Parent
							if not parent then
								return nil
							end

							if arg.Name == "KnifeThrown" and parent.Name == "Events" then
								local parent2 = parent.Parent
								local instantThrow = mM2.State.exploit.instantThrow and parent2

								if instantThrow then
									local v86 = v83[4]
									instantThrow = parent2:GetAttribute("IsKnife") == v86
								end

								if instantThrow then
									return "knife"
								end
								return nil
							end

							if arg.Name == v83[133] then
								local v86 = v83[4]
								local flag18 = parent:GetAttribute(v83[72]) == v86

								if not flag18 and parent:IsA(v83[163]) then
									pcall(function()
										flag18 = parent:HasTag("Weapon_Gun")
									end)
								end

								if flag18 and (mM2.State.exploit.wallbang or mM2.State.silentAim.enabled or mM2.State.autoShoot.enabled) then
									return v83[67]
								end
							end

							return nil
						end

						mM2.installRemoteHook = function()
							if mM2.RemoteHook then
								return
							end

							if type(hookmetamethod) ~= "function" or type(getnamecallmethod) ~= "function" then
								return
							end
							local v86 = nil

							local function fn36(arg, ...)
								local v87 = table.pack(...)
								if getnamecallmethod() ~= "FireServer" then
									return v86(arg, ...)
								end
								local exploit = mM2.State.exploit
								if not exploit.instantThrow and not exploit.wallbang and not mM2.State.silentAim.enabled and not mM2.State.autoShoot.enabled then
									return v86(arg, ...)
								end

								local ok, result = pcall(function()
									return arg.Name
								end)

								if not ok or result ~= "KnifeThrown" and result ~= "Shoot" then
									return v86(arg, ...)
								end
								local ok2, result2 = pcall(mM2.exploitAppliesTo, arg)
								local fireServer = arg.FireServer
								if not ok2 or not result2 then
									return fireServer(arg, ...)
								end
								local value2 = select(v83[34], ...)
								local value3 = select(2, table.unpack(v87, 1, v87.n))

								if result2 == v83[67] then
									local v88, v89 = mM2.freshGunRedirectTarget(value3)
									local v90 = v83[155]
									if typeof(v88) ~= v90 then
										return fireServer(arg, table.unpack(v87, 1, v87.n))
									end

									if exploit.wallbang or mM2.State.autoShoot.enabled and mM2.State.autoShoot.wallbang then
										local v91 = mM2.buildFakeOrigin(v88)
										if v91 then
											return fireServer(arg, v91, v88)
										end
									end

									if typeof(v89) ~= "CFrame" then
										v89 = mM2.getLiveGunOriginCFrame(value2)
									end

									if typeof(v89) ~= "CFrame" then
										return fireServer(arg, table.unpack(v87, 1, v87.n))
									end
									return fireServer(arg, v89, v88)
								end

								local cframe = mM2.freshExploitTarget(value3)

								if not exploit.throwWallbang then
									cframe = mM2.clampTargetToWall(cframe)
								end

								local v88 = mM2.buildFakeOrigin(cframe)

								if v88 then
									local n32 = cframe.Position - v88.Position

									if n32.Magnitude > 0.05 then
										cframe = CFrame.new(cframe.Position + n32.Unit * 1.35)
									end

									return fireServer(arg, v88, cframe)
								end

								return fireServer(arg, table.unpack(v87, 1, v87.n))
							end

							if type(newcclosure) == "function" then
								fn36 = newcclosure(fn36)
							end

							v86 = hookmetamethod
							v86 = v86(game, v83[189], fn36)
							mM2.OrigNamecall = v86
							mM2.RemoteHook = v83[4]
						end

						mM2.removeHighlight = function(arg)
							local v86 = mM2.Highlights[arg]

							if v86 then
								v86:Destroy()
								mM2.Highlights[arg] = nil
							end
						end

						mM2.syncPlayerEsp = function(arg)
							if arg == localPlayer then
								return
							end
							local esp = mM2.State.esp
							if not esp.enabled then
								mM2.removeHighlight(arg)
								return
							end
							local v86 = mM2.getEspRole(arg)
							if not v86 then
								mM2.removeHighlight(arg)
								return
							end
							local murderer = v86 == "Murderer" and esp.murderer or v86 == "Sheriff" and esp.sheriff or v86 == v83[105] and esp.sheriff or v86 == "Innocent" and esp.innocent
							local character = arg.Character
							if not murderer or not character or not mM2.isPlayerAlive(arg) then
								mM2.removeHighlight(arg)
								return
							end
							local innocent = tbl18[v86] or tbl18.Innocent
							local highlight = mM2.Highlights[arg]

							if not highlight or not highlight.Parent then
								highlight = Instance.new("Highlight")
								highlight.Name = "ZenthraMM2ESP"
								highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								mM2.Highlights[arg] = highlight
							end

							highlight.Adornee = character
							highlight.Parent = character
							highlight.FillColor = innocent
							highlight.OutlineColor = innocent
							highlight.FillTransparency = 0.55
							highlight.OutlineTransparency = v83[141]
							highlight.Enabled = true
						end

						mM2.removeGunHighlight = function(arg)
							local v86 = mM2.GunHighlights[arg]

							if v86 then
								v86:Destroy()
								mM2.GunHighlights[arg] = nil
							end
						end

						mM2.syncDroppedGunEsp = function()
							local esp = mM2.State.esp

							if not esp.enabled or not esp.droppedGun then
								for k in pairs(mM2.GunHighlights) do
									mM2.removeGunHighlight(k)
								end

								return
							end

							local tbl19 = {}

							for _, v86 in ipairs(mM2.findDroppedGuns()) do
								local v87 = mM2.getDroppedGunAdornee(v86)

								if v87 then
									tbl19[v86] = true
									local highlight = mM2.GunHighlights[v86]

									if not highlight or not highlight.Parent then
										highlight = Instance.new("Highlight")
										highlight.Name = "ZenthraMM2GunESP"
										highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
										mM2.GunHighlights[v86] = highlight
									end

									highlight.Adornee = v87
									highlight.Parent = v87
									highlight.FillColor = tbl18.Sheriff
									highlight.OutlineColor = tbl18.Sheriff
									highlight.FillTransparency = 0.45
									highlight.OutlineTransparency = v83[141]
									highlight.Enabled = true
								end
							end

							for k in pairs(mM2.GunHighlights) do
								if not tbl19[k] or not k.Parent then
									mM2.removeGunHighlight(k)
								end
							end
						end

						mM2.syncAllEsp = function()
							for _, player in ipairs(players:GetPlayers()) do
								mM2.syncPlayerEsp(player)
							end

							for k in pairs(mM2.Highlights) do
								if not k.Parent then
									mM2.removeHighlight(k)
								end
							end

							mM2.syncDroppedGunEsp()
						end

						mM2.clearAllEsp = function()
							for k in pairs(mM2.Highlights) do
								mM2.removeHighlight(k)
							end

							for k in pairs(mM2.GunHighlights) do
								mM2.removeGunHighlight(k)
							end
						end

						mM2.applySilentAimFromUi = function()
							local enabled = zenthra.Flags.mm2_silent_aim == true
							mM2.State.silentAim.enabled = enabled

							if enabled then
								mM2.installWeaponHooks()
								mM2.installRemoteHook()
							end

							local mm2FovSize = zenthra.Flags.mm2_fov_size

							if type(mm2FovSize) ~= "number" then
								mm2FovSize = zenthra.Flags.mm2_silent_fov
							end

							if type(mm2FovSize) == "number" then
								mM2.State.silentAim.fov = mm2FovSize
								fov.Size = mm2FovSize
								fov.applyStyle()
							end

							if type(zenthra.Flags.mm2_hitpart) == "string" then
								mM2.State.silentAim.hitpart = zenthra.Flags.mm2_hitpart
							end

							zenthra.Flags.mm2_prediction = nil
						end

						mM2.applyExploitFromUi = function()
							mM2.State.exploit.instantThrow = zenthra.Flags.mm2_instant_throw == true
							mM2.State.exploit.throwWallbang = zenthra.Flags.mm2_throw_wallbang == true
							mM2.State.exploit.wallbang = zenthra.Flags.mm2_wallbang == true
							zenthra.Flags.mm2_exploit_offset = nil

							if mM2.State.exploit.instantThrow or mM2.State.exploit.wallbang or mM2.State.silentAim.enabled then
								mM2.installRemoteHook()
							end
						end

						mM2.applyEspFromUi = function()
							mM2.State.esp.enabled = zenthra.Flags.mm2_esp == v83[4]
							mM2.State.esp.murderer = zenthra.Flags.mm2_esp_murderer ~= false
							mM2.State.esp.sheriff = zenthra.Flags.mm2_esp_sheriff ~= v83[175]
							mM2.State.esp.innocent = zenthra.Flags.mm2_esp_innocent ~= false
							mM2.State.esp.droppedGun = zenthra.Flags.mm2_esp_dropped_gun ~= false

							if mM2.State.esp.enabled then
								mM2.syncAllEsp()
							else
								mM2.clearAllEsp()
							end
						end

						mM2.rootPart = function()
							local character = localPlayer.Character
							return character and character:FindFirstChild(v83[24]) or nil
						end

						mM2.canAutoGrabGun = function()
							if not mM2.State.exploit.autoGrabGun then
								return v83[175]
							end

							if mM2._grabBusy then
								return v83[175]
							end

							if mM2.playerHasRoundGun(localPlayer) then
								return false
							end

							if mM2.getLocalRole() == "Murderer" then
								return false
							end
							local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
							if not humanoid or humanoid.Health <= 0 then
								return false
							end
							return true
						end

						mM2.grabGunNotify = function(arg, arg2)
							pcall(function()
								zenthra:Notify({ Title = "Auto Grab Gun", Content = arg, Type = arg2 or "info", Duration = 2 })
							end)
						end

						mM2.tryGrabDroppedGun = function(arg)
							if not arg or not arg.Parent or not mM2.canAutoGrabGun() then
								return false
							end
							local v86 = mM2._grabSeen[arg]
							if type(v86) == "number" and os.clock() - v86 < 1.25 then
								return false
							end
							local v87 = mM2.getDroppedGunAdornee(arg)
							if not v87 or not v87:IsA("BasePart") then
								return false
							end
							local v88 = mM2.rootPart()
							if not v88 then
								return false
							end
							mM2._grabSeen[arg] = os.clock()
							mM2._grabBusy = true
							local cFrame = v88.CFrame
							local v89 = nil

							pcall(function()
								v89 = firetouchinterest
							end)

							pcall(function()
								v88.AssemblyLinearVelocity = Vector3.zero
								v88.AssemblyAngularVelocity = Vector3.zero
								v88.CFrame = CFrame.new(v87.Position + Vector3.new(0, 2.2, 0))
							end)

							if type(v89) == "function" then
								pcall(v89, v88, v87, 0)
								pcall(v89, v88, v87, 1)
							end

							local v90 = v83[176]
							local n32 = os.clock() + v90
							local flag18

							while true do
								flag18 = false

								if not (os.clock() < n32) then
									break
								elseif mM2.playerHasRoundGun(localPlayer) or not arg.Parent then
									flag18 = v83[4]
									break
								else
									if v88.Parent and v87.Parent then
										pcall(function()
											v88.CFrame = CFrame.new(v87.Position + Vector3.new(v83[141], 2.2, 0))
										end)

										if type(v89) == "function" then
											pcall(v89, v88, v87, v83[141])
											pcall(v89, v88, v87, v83[34])
										end
									end

									task.wait()
								end
							end

							v88 = mM2.rootPart()

							if v88 then
								pcall(function()
									v88.AssemblyLinearVelocity = Vector3.zero
									v88.AssemblyAngularVelocity = Vector3.zero
									v88.CFrame = cFrame
								end)
							end

							mM2._grabBusy = false
							if flag18 or mM2.playerHasRoundGun(localPlayer) then
								mM2.grabGunNotify("Gun grabbed", "success")
								return true
							end
							return false
						end

						mM2.scanGrabDroppedGuns = function()
							if not mM2.canAutoGrabGun() then
								return
							end

							for _, v86 in ipairs(mM2.findDroppedGuns()) do
								if mM2.tryGrabDroppedGun(v86) then
									return
								end
							end
						end

						mM2.startAutoGrabGun = function()
							mM2.stopAutoGrabGun()
							mM2._grabAlive = true
							mM2._grabSeen = {}

							task.spawn(function()
								while mM2._grabAlive and mM2.State.exploit.autoGrabGun do
									local ok, result = pcall(mM2.scanGrabDroppedGuns)

									if not ok then
										mM2._lastGrabError = tostring(result)
									end

									task.wait(0.15)
								end
							end)
						end

						mM2.stopAutoGrabGun = function()
							mM2._grabAlive = false
							mM2._grabBusy = false
						end

						mM2.applyAutoGrabFromUi = function()
							mM2.State.exploit.autoGrabGun = zenthra.Flags.mm2_auto_grab_gun == true

							if mM2.State.exploit.autoGrabGun then
								mM2.startAutoGrabGun()
							else
								mM2.stopAutoGrabGun()
							end
						end

						mM2.humanoid = function()
							local character = localPlayer.Character
							return character and character:FindFirstChildOfClass(v83[116]) or nil
						end

						mM2.applyMovementStats = function()
							local v86 = mM2.humanoid()
							if not v86 or v86.Health <= 0 then
								return
							end
							local player = mM2.State.player

							if player.walkSpeed then
								local walkSpeed = tonumber(player.walkSpeedValue) or 16

								if v86.WalkSpeed ~= walkSpeed then
									v86.WalkSpeed = walkSpeed
								end
							end

							if player.jumpPower then
								local jumpPower = tonumber(player.jumpPowerValue) or 50
								v86.UseJumpPower = true

								if v86.JumpPower ~= jumpPower then
									v86.JumpPower = jumpPower
								end
							end
						end

						mM2.restoreMovementDefaults = function()
							local v86 = mM2.humanoid()
							if not v86 then
								return
							end
							local player = mM2.State.player

							if not player.walkSpeed then
								v86.WalkSpeed = v83[9]
							end

							if not player.jumpPower then
								v86.JumpPower = v83[40]
							end
						end

						mM2.cacheNoclipParts = function()
							local character = localPlayer.Character
							table.clear(mM2._noclipParts)
							if not character then
								return
							end

							for _, descendant in ipairs(character:GetDescendants()) do
								if descendant:IsA("BasePart") then
									mM2._noclipParts[descendant] = descendant.CanCollide
								end
							end
						end

						mM2.setNoclipParts = function(arg)
							if arg then
								if next(mM2._noclipParts) == nil then
									mM2.cacheNoclipParts()
								end

								for k in pairs(mM2._noclipParts) do
									if k and k.Parent then
										k.CanCollide = v83[175]
									end
								end

								return
							end

							for k, noclipPart in pairs(mM2._noclipParts) do
								if k and k.Parent then
									pcall(function()
										k.CanCollide = noclipPart == true
									end)
								end
							end

							table.clear(mM2._noclipParts)
						end

						mM2.startPlayerLoops = function()
							local player = mM2.State.player

							if player.walkSpeed or player.jumpPower then
								if not mM2._playerLoop then
									local n32 = 0

									mM2._playerLoop = run.Heartbeat:Connect(function()
										local now2 = os.clock()
										if now2 - n32 < v83[176] then
											return
										end
										n32 = now2
										local player2 = mM2.State.player

										if player2.walkSpeed or player2.jumpPower then
											mM2.applyMovementStats()
										end
									end)

									table.insert(mM2.Connections, mM2._playerLoop)
								end
							elseif mM2._playerLoop then
								pcall(function()
									mM2._playerLoop:Disconnect()
								end)

								mM2._playerLoop = nil
							end

							if player.noclip then
								mM2.cacheNoclipParts()

								if not mM2._noclipLoop then
									mM2._noclipLoop = run.Stepped:Connect(function()
										if not mM2.State.player.noclip then
											return
										end

										for k in pairs(mM2._noclipParts) do
											if k.Parent then
												k.CanCollide = false
											end
										end
									end)

									table.insert(mM2.Connections, mM2._noclipLoop)
								end
							elseif mM2._noclipLoop then
								pcall(function()
									mM2._noclipLoop:Disconnect()
								end)

								mM2._noclipLoop = nil
								mM2.setNoclipParts(false)
							end
						end

						if not (4854 >= n24) then
							do
								do
									do
										mM2.stopPlayerMods = function()
											mM2.State.player.walkSpeed = false
											mM2.State.player.jumpPower = false
											mM2.State.player.noclip = false

											if mM2._noclipLoop then
												pcall(function()
													mM2._noclipLoop:Disconnect()
												end)

												mM2._noclipLoop = nil
											end

											mM2.setNoclipParts(v83[175])
											mM2.restoreMovementDefaults()
										end

										mM2.applyPlayerFromUi = function()
											local player = mM2.State.player
											player.walkSpeed = zenthra.Flags.mm2_walkspeed == true
											player.jumpPower = zenthra.Flags.mm2_jumppower == true
											player.noclip = zenthra.Flags.mm2_noclip == true

											if type(zenthra.Flags.mm2_walkspeed_value) == "number" then
												player.walkSpeedValue = zenthra.Flags.mm2_walkspeed_value
											end

											if type(zenthra.Flags.mm2_jumppower_value) == "number" then
												player.jumpPowerValue = zenthra.Flags.mm2_jumppower_value
											end

											mM2.startPlayerLoops()

											if player.walkSpeed or player.jumpPower then
												mM2.applyMovementStats()
											else
												mM2.restoreMovementDefaults()
											end

											if not player.noclip then
												mM2.setNoclipParts(false)
											end
										end

										do
											local value2 = rawget(getgenv(), "Zenthra")
											value2 = value2 and value2.AF

											if value2 and value2.stop then
												pcall(value2.stop)
											end
										end
									end

									af = {
										Enabled = v83[175],
										MaxAngular = 40,
										MaxLinear = v83[122],
										_touched = {},
										_loop = nil,
										_conns = {},
										_lastScan = v83[141],
										shouldGuard = function(arg)
											return arg ~= localPlayer and arg.Character ~= nil
										end,
										disarmCharacter = function(arg)
											for _, descendant in ipairs(arg:GetDescendants()) do
												if descendant:IsA(v83[23]) then
													if af._touched[descendant] == nil then
														af._touched[descendant] = descendant.CanCollide
													end

													if descendant.CanCollide then
														descendant.CanCollide = false
													end
												end
											end
										end,
										scan = function()
											for _, player in ipairs(players:GetPlayers()) do
												if af.shouldGuard(player) then
													af.disarmCharacter(player.Character)
												end
											end
										end,
										restore = function()
											for k, v86 in pairs(af._touched) do
												if k and k.Parent then
													pcall(function()
														k.CanCollide = v86 == true
													end)
												end
											end

											table.clear(af._touched)
										end,
										clampSelf = function()
											local character = localPlayer.Character
											character = character and character:FindFirstChild("HumanoidRootPart")
											if not character then
												return
											end

											if af.MaxAngular < character.AssemblyAngularVelocity.Magnitude then
												character.AssemblyAngularVelocity = Vector3.zero
											end

											local assemblyLinearVelocity = character.AssemblyLinearVelocity

											if af.MaxLinear < assemblyLinearVelocity.Magnitude then
												local n32 = assemblyLinearVelocity.Z * v83[89]
												character.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X * v83[89], math.clamp(assemblyLinearVelocity.Y, -100, v83[2]), n32)
											end
										end,
										start = function()
											if af._loop then
												return
											end
											af.scan()

											af._loop = run.Heartbeat:Connect(function()
												if not af.Enabled then
													return
												end
												af.clampSelf()
												local now2 = os.clock()
												if now2 - af._lastScan < 0.4 then
													return
												end
												af._lastScan = now2
												af.scan()
											end)

											table.insert(mM2.Connections, af._loop)

											af._conns.added = players.PlayerAdded:Connect(function(player)
												player.CharacterAdded:Connect(function(character)
													if af.Enabled then
														task.defer(af.disarmCharacter, character)
													end
												end)
											end)

											for _, player in ipairs(players:GetPlayers()) do
												if player ~= localPlayer then
													af._conns[player] = player.CharacterAdded:Connect(function(character)
														if af.Enabled then
															task.defer(af.disarmCharacter, character)
														end
													end)
												end
											end
										end,
										stop = function()
											af.Enabled = v83[175]

											if af._loop then
												pcall(function()
													af._loop:Disconnect()
												end)

												af._loop = nil
											end

											for k, conn in pairs(af._conns) do
												pcall(function()
													conn:Disconnect()
												end)

												af._conns[k] = nil
											end

											af.restore()
										end,
										setEnabled = function(arg, arg2)
											local enabled = arg == true
											if af.Enabled == enabled then
												return
											end
											af.Enabled = enabled

											if enabled then
												af.start()
											else
												af.stop()
											end

											if not arg2 then
												pcall(function()
													zenthra:Notify({
														Title = "Anti-fling",
														Content = enabled and "Anti-fling ligado" or "Anti-fling desligado",
														Type = enabled and v83[26] or "info",
														Duration = 2.2,
													})
												end)
											end
										end,
										applyFromUi = function(arg)
											af.setEnabled(zenthra.Flags.mm2_antifling == v83[4], arg)
										end,
									}

									mM2.bootstrap = function()
										if getgenv().__ZENTHRA_MM2_CLEANUP then
											pcall(getgenv().__ZENTHRA_MM2_CLEANUP)
										end

										table.insert(mM2.Connections, CurrentRoundClient.PlayerDataChanged.Event:Connect(function()
											if mM2.State.esp.enabled then
												mM2.syncAllEsp()
											end
										end))

										table.insert(mM2.Connections, service:GetInstanceAddedSignal("GunDrop"):Connect(function(arg)
											task.defer(function()
												if mM2.State.esp.enabled then
													mM2.syncDroppedGunEsp()
												end

												mM2.tryGrabDroppedGun(arg)
											end)
										end))

										table.insert(mM2.Connections, service:GetInstanceRemovedSignal("GunDrop"):Connect(function()
											if mM2.State.esp.enabled then
												task.defer(mM2.syncDroppedGunEsp)
											end
										end))

										table.insert(mM2.Connections, players.PlayerAdded:Connect(function(player)
											table.insert(mM2.Connections, player.CharacterAdded:Connect(function()
												if mM2.State.esp.enabled then
													task.defer(function()
														mM2.syncPlayerEsp(player)
													end)
												end
											end))

											if mM2.State.esp.enabled then
												task.defer(function()
													mM2.syncPlayerEsp(player)
												end)
											end
										end))

										table.insert(mM2.Connections, players.PlayerRemoving:Connect(function(player)
											mM2.removeHighlight(player)
										end))

										for _, player in ipairs(players:GetPlayers()) do
											table.insert(mM2.Connections, player.CharacterAdded:Connect(function()
												if mM2.State.esp.enabled then
													task.defer(function()
														mM2.syncPlayerEsp(player)
													end)
												end
											end))
										end

										table.insert(mM2.Connections, localPlayer.CharacterAdded:Connect(function()
											task.defer(function()
												table.clear(mM2._noclipParts)
												mM2._worldParamsAt = 0
												mM2.applyPlayerFromUi()
											end)
										end))

										table.insert(mM2.Connections, run.Heartbeat:Connect(function()
											if not mM2.State.esp.enabled then
												return
											end
											local now2 = os.clock()
											if now2 - (mM2._lastEspSync or 0) < 1.25 then
												return
											end
											mM2._lastEspSync = now2
											mM2.syncAllEsp()
										end))

										getgenv().__ZENTHRA_MM2_CLEANUP = function()
											mM2.stopAutoGrabGun()
											mM2.stopPlayerMods()
											pcall(af.stop)
											local v86 = v83[16]
											local value2 = rawget(getgenv(), v86)
											local as2 = value2 and value2.AS

											if as2 and as2.destroy then
												pcall(as2.destroy)
											end

											value2 = value2 and value2.TPK

											if value2 and value2.destroy then
												pcall(value2.destroy)
											end

											fov.destroy()

											for _, connection in ipairs(mM2.Connections) do
												connection:Disconnect()
											end

											table.clear(mM2.Connections)
											mM2._playerLoop = nil
											mM2._noclipLoop = nil
											mM2.clearAllEsp()
											WeaponService.GetMouseTargetCFrame = getMouseTargetCFrame
											WeaponService.GetTargetPosition = getTargetPosition
											mM2.WeaponHooks = false
											mM2.State.silentAim.enabled = false
											mM2.State.autoShoot.enabled = false
											mM2._asShotVisible = false
											mM2._asIgnoreFov = false
											mM2.State.exploit.instantThrow = v83[175]
											mM2.State.exploit.wallbang = false
											mM2.State.exploit.autoGrabGun = false
										end
									end

									do
										local value2 = rawget(getgenv(), "Zenthra")
										value2 = value2 and value2.AS

										if value2 and value2.destroy then
											pcall(value2.destroy)
										end
									end
								end

								do
									do
										local function fn36(arg, arg2)
											pcall(function()
												zenthra:Notify({ Title = "Auto Shoot", Content = arg, Type = arg2 or v83[194], Duration = 2.2 })
											end)
										end

										as = {
											Enabled = false,
											Delay = 0,
											VisibleCheck = true,
											AutoEquip = v83[175],
											Wallbang = false,
											IgnoreFov = false,
											_running = false,
											_token = v83[141],
											canRun = function()
												if not mM2.isPlayerAlive(localPlayer) then
													return false
												end
												local v86 = mM2.getLocalRole()
												if v86 == "Sheriff" or v86 == "Hero" then
													return true
												end
												return mM2.playerHasRoundGun(localPlayer)
											end,
											findTarget = function()
												return mM2.findSilentTargetPart(nil, {
													force = v83[4],
													visibleCheck = as.VisibleCheck and not as.Wallbang,
													ignoreFov = as.IgnoreFov,
												})
											end,
											tryShoot = function()
												if not as.canRun() then
													return false
												end
												local v86, v87 = as.findTarget()
												if not v86 or not v87 or not v86.Character then
													return false
												end
												local v88, flag18 = mM2.getEquippedWeapon()
												flag18 = v88 == "gun" and flag18 or nil

												if not flag18 then
													local v89 = mM2.findLocalGun()
													if not v89 then
														return false
													end

													if not as.AutoEquip then
														return false
													end
													flag18 = mM2.equipLocalGunFast(v89)
													if not flag18 then
														return false
													end
												end

												local v89 = flag18:FindFirstChild(v83[133])
												if not v89 then
													return false
												end
												mM2.installWeaponHooks()
												mM2.installRemoteHook()
												mM2._asShotVisible = as.VisibleCheck == v83[4] and not as.Wallbang
												mM2._asIgnoreFov = as.IgnoreFov == v83[4]
												local v90 = mM2.getLiveGunOriginCFrame()
												local v91 = mM2.gunLockCFrame(v90, v86.Character, v87)
												local flag19 = typeof(v90) == "CFrame" and typeof(v91) == "CFrame"
												local flag20 = false

												if flag19 then
													flag20 = pcall(function()
														v89:FireServer(v90, v91)
													end)
												end

												mM2._asShotVisible = false
												mM2._asIgnoreFov = v83[175]
												return flag20 == v83[4]
											end,
											stopLoop = function()
												as._token = as._token + 1
												as._running = false
											end,
											startLoop = function()
												if as._running then
													return
												end
												as._running = true
												as._token = as._token + v83[34]
												local token = as._token

												task.spawn(function()
													while as.Enabled and as._token == token do
														local flag18 = false

														pcall(function()
															flag18 = as.tryShoot() == true
														end)

														local n32 = tonumber(as.Delay) or 0

														if n32 > v83[141] then
															task.wait(n32)
														else
															run.Heartbeat:Wait()
														end
													end

													if as._token == token then
														as._running = v83[175]
													end
												end)
											end,
											destroy = function()
												as.Enabled = false
												as.stopLoop()
												mM2.State.autoShoot.enabled = false
												mM2.State.autoShoot.wallbang = false
												mM2.State.autoShoot.ignoreFov = false
												mM2._asShotVisible = v83[175]
												mM2._asIgnoreFov = false
											end,
											setDelay = function(arg)
												if type(arg) == "number" then
													as.Delay = math.clamp(arg, v83[141], 2)
													mM2.State.autoShoot.delay = as.Delay
												end
											end,
											setVisibleCheck = function(arg)
												as.VisibleCheck = arg == true
												mM2.State.autoShoot.visibleCheck = as.VisibleCheck
											end,
											setAutoEquip = function(arg)
												as.AutoEquip = arg == v83[4]
												mM2.State.autoShoot.autoEquip = as.AutoEquip
											end,
											setWallbang = function(arg)
												as.Wallbang = arg == true
												mM2.State.autoShoot.wallbang = as.Wallbang
											end,
											setIgnoreFov = function(arg)
												as.IgnoreFov = arg == true
												mM2.State.autoShoot.ignoreFov = as.IgnoreFov
											end,
											setEnabled = function(arg, arg2)
												as.Enabled = arg == v83[4]
												mM2.State.autoShoot.enabled = as.Enabled

												if as.Enabled then
													mM2.installWeaponHooks()
													mM2.installRemoteHook()
													as.startLoop()
												elseif 4846 > n24 then
													while true do
													end
												else
													as.stopLoop()
													mM2._asShotVisible = false
													mM2._asIgnoreFov = false
												end

												if not arg2 then
													fn36(as.Enabled and "Auto Shoot enabled" or "Auto Shoot disabled", as.Enabled and "success" or "info")
												end
											end,
											applyFromUi = function(arg)
												local mm2AutoshootDelay = zenthra.Flags.mm2_autoshoot_delay

												if type(mm2AutoshootDelay) == "number" then
													as.setDelay(mm2AutoshootDelay)
												end

												as.setVisibleCheck(zenthra.Flags.mm2_autoshoot_visible ~= false)
												as.setAutoEquip(zenthra.Flags.mm2_autoshoot_equip == true)
												as.setWallbang(zenthra.Flags.mm2_autoshoot_wallbang == v83[4])
												as.setIgnoreFov(zenthra.Flags.mm2_autoshoot_ignore_fov == true)
												as.setEnabled(zenthra.Flags.mm2_autoshoot == v83[4], arg)
											end,
										}
									end
								end

								do
									local value2 = rawget(getgenv(), "Zenthra")
									value2 = value2 and value2.TPK

									if value2 and value2.destroy then
										pcall(value2.destroy)
									end
								end

								do
									local function fn36(arg, arg2)
										pcall(function()
											zenthra:Notify({ Title = "Tp Kill", Content = arg, Type = arg2 or v83[194], Duration = v83[62] })
										end)
									end

									tpk = {
										Enabled = v83[175],
										ButtonVisible = false,
										StickTime = 0.45,
										_busy = v83[175],
										_gui = nil,
										_btn = nil,
										_conns = {},
										isMobileUi = function()
											return tbl17.Env.Mobile == true or zenthra.IsMobile == true or mM2.isMobileAim()
										end,
										canRun = function()
											if not tpk.Enabled then
												return false
											end

											if mM2.getLocalRole() ~= "Murderer" then
												return v83[175]
											end
											return mM2.isPlayerAlive(localPlayer)
										end,
										findTargetNearMouse = function()
											local currentCamera = v85.CurrentCamera
											if not currentCamera then
												return nil
											end
											local v86 = mM2.getAimPoint()
											local v87 = nil
											local v88 = nil

											for _, player in ipairs(players:GetPlayers()) do
												if player ~= localPlayer and mM2.isPlayerAlive(player) then
													if mM2.getPlayerRole(player) ~= "Murderer" then
														local character = player.Character

														if character then
															character = character:FindFirstChild(v83[24]) or character:FindFirstChild("Head")
														end

														if character then
															local v89, v90 = currentCamera:WorldToViewportPoint(character.Position)

															if v89.Z > 0 then
																local magnitude = (Vector2.new(v89.X, v89.Y) - v86).Magnitude

																if not v90 then
																	magnitude += 400
																end

																if not v87 or magnitude < v87 then
																	v87 = magnitude
																	v88 = player
																end
															end
														end
													end
												end
											end

											return v88
										end,
										stickAndStab = function(arg)
											if not arg or not arg.Character then
												return false
											end
											local character = localPlayer.Character
											if not character then
												return false
											end

											if not (arg.Character:FindFirstChild("HumanoidRootPart") or arg.Character:FindFirstChild("Head")) then
												return false
											end
											local v86 = mM2.equipLocalKnifeFast()
											if not v86 then
												return false
											end
											local v87 = mM2.getPhysicsRepRoot(character)
											local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
											if not v87 and not humanoidRootPart then
												return false
											end
											local cFrame = (humanoidRootPart or v87).CFrame
											local n32 = os.clock() + (tonumber(tpk.StickTime) or 0.45)

											local function fn37(cFrame2)
												character = localPlayer.Character
												if not character then
													return
												end
												v87 = mM2.getPhysicsRepRoot(character)
												humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

												if v87 and v87.Parent then
													pcall(function()
														v87.AssemblyLinearVelocity = Vector3.zero
														v87.AssemblyAngularVelocity = Vector3.zero
														v87.CFrame = cFrame2
													end)
												end

												if humanoidRootPart and humanoidRootPart.Parent and humanoidRootPart ~= v87 then
													pcall(function()
														humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
														humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
														humanoidRootPart.CFrame = cFrame2
													end)
												end
											end

											local flag18 = false

											while os.clock() < n32 do
												if not (not tpk.Enabled or not arg.Parent or not arg.Character) then
													if not (not mM2.isPlayerAlive(arg) or mM2.getLocalRole() ~= "Murderer") then
														local humanoidRootPart2 = arg.Character:FindFirstChild("HumanoidRootPart") or arg.Character:FindFirstChild("Head")

														if humanoidRootPart2 then
															fn37(humanoidRootPart2.CFrame * CFrame.new(0, 0, 0.85))

															if v86.Parent == character then
																pcall(function()
																	v86:Activate()
																end)

																flag18 = true
															else
																v86 = mM2.equipLocalKnifeFast(v86) or v86
															end

															task.wait()
															continue
														end
													end
												end

												break
											end

											fn37(cFrame)
											task.wait()
											fn37(cFrame)
											character = localPlayer.Character
											local humanoid = character and character:FindFirstChildOfClass("Humanoid")

											if humanoid then
												pcall(function()
													humanoid:UnequipTools()
												end)
											end

											return flag18
										end,
										activate = function()
											if tpk._busy then
												return
											end

											if not tpk.canRun() then
												if tpk.Enabled and mM2.getLocalRole() ~= "Murderer" then
													fn36("Murderer only", "error")
												end

												return
											end

											local v86 = tpk.findTargetNearMouse()
											if not v86 then
												fn36("No target near mouse", v83[118])
												return
											end
											tpk._busy = true

											local ok, result = pcall(function()
												tpk.stickAndStab(v86)
											end)

											tpk._busy = v83[175]

											if not ok then
												fn36("Tp Kill failed", "error")
												warn("[Tp Kill]", result)
											end
										end,
										destroyButton = function()
											for _, conn in ipairs(tpk._conns) do
												pcall(function()
													conn:Disconnect()
												end)
											end

											table.clear(tpk._conns)

											if tpk._gui then
												pcall(function()
													tpk._gui:Destroy()
												end)
											end

											tpk._gui = nil
											tpk._btn = nil
										end,
										createButton = function()
											if tpk._gui then
												return
											end

											local ScreenGui = tbl17.Util.New("ScreenGui", {
												Name = "ZenthraTpKillBtn",
												ResetOnSpawn = false,
												ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
												DisplayOrder = 125,
												IgnoreGuiInset = v83[4],
												AutoLocalize = false,
												Parent = tbl17.Env.SafeParent(),
											})

											local stroke = tbl17.Util.Stroke

											local TextButton = tbl17.Util.New("TextButton", {
												Name = "TpKill",
												Text = "TP Kill",
												AutoButtonColor = v83[175],
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = UDim2.new(0.82, v83[141], 0.42, 0),
												Size = UDim2.fromOffset(78, 78),
												BackgroundTransparency = 0.12,
												BorderSizePixel = 0,
												TextSize = 13,
												Parent = ScreenGui,
											}, { tbl17.Util.Corner(UDim.new(1, 0)), stroke("Border", 1, 0.25) })

											tbl17.Theme.Bind(TextButton, v83[136], "Surface")
											tbl17.Theme.Bind(TextButton, v83[44], "Text")

											pcall(function()
												TextButton.FontFace = tbl17.Util.Font(tbl17.Layout.Weight.SemiBold)
											end)

											local flag18 = false
											local position = nil
											local position2 = nil
											local flag19 = false

											table.insert(tpk._conns, tbl17.Util.Connect(TextButton.InputBegan, function(arg)
												if arg.UserInputType == Enum.UserInputType.Touch or arg.UserInputType == Enum.UserInputType.MouseButton1 then
													flag18 = true
													flag19 = v83[175]
													position = arg.Position
													position2 = TextButton.Position
												end
											end))

											table.insert(tpk._conns, tbl17.Util.Connect(userInput.InputChanged, function(arg)
												if not flag18 then
													return
												end

												if arg.UserInputType == Enum.UserInputType.Touch or arg.UserInputType == Enum.UserInputType.MouseMovement then
													local n32 = arg.Position - position

													if math.abs(n32.X) > 6 or math.abs(n32.Y) > 6 then
														flag19 = true
													end

													TextButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n32.X, position2.Y.Scale, position2.Y.Offset + n32.Y)
												end
											end))

											table.insert(tpk._conns, tbl17.Util.Connect(userInput.InputEnded, function(arg)
												if arg.UserInputType == Enum.UserInputType.Touch or arg.UserInputType == Enum.UserInputType.MouseButton1 then
													local v86 = flag18
													flag18 = false

													if v86 and not flag19 then
														tpk.activate()
													end
												end
											end))

											tpk._gui = ScreenGui
											tpk._btn = TextButton
										end,
										setButtonVisible = function(arg)
											tpk.ButtonVisible = arg == v83[4]

											if tpk.ButtonVisible and tpk.Enabled and tpk.isMobileUi() then
												tpk.createButton()
											else
												tpk.destroyButton()
											end
										end,
										destroy = function()
											tpk.Enabled = false
											tpk._busy = false
											tpk.destroyButton()
										end,
										setEnabled = function(arg)
											tpk.Enabled = arg == true

											if tpk.Enabled then
												if tpk.ButtonVisible and tpk.isMobileUi() then
													tpk.createButton()
												end
											else
												tpk.destroyButton()
											end
										end,
										applyFromUi = function()
											tpk.setEnabled(zenthra.Flags.mm2_tpkill == v83[4])

											if tpk.isMobileUi() then
												tpk.setButtonVisible(zenthra.Flags.mm2_tpkill_button == v83[4])
											end
										end,
									}
								end
							end

							local v86, v87, v88

							do
								local v89

								do
									local v90 = zenthra:Window({
										Title = v83[16],
										ConfigFolder = "ZenthraV2",
										ConfigName = "MM2",
									})

									v89 = v90:Tab({ Title = "Combat", Icon = "sword" })
									v86 = v90:Tab({ Title = "Exploit", Icon = "zap" })
									v87 = v90:Tab({ Title = "Esp", Icon = "eye" })
									v88 = v90:Tab({ Title = "Player", Icon = "user" })
								end

								do
									v89:Module({
										Title = "Silent aim",
										Description = "Sheriff gun & murder knife throw",
										Flag = "mm2_silent_aim",
										Default = false,
										Callback = function()
											mM2.applySilentAimFromUi()
										end,
									}):Dropdown({
										Title = "Hit part",
										Flag = "mm2_hitpart",
										Options = { "Head", v83[24], "Closest" },
										Default = "Head",
										Callback = function(hitpart)
											mM2.State.silentAim.hitpart = hitpart
										end,
									})

									do
										local v90 = v89:Module({
											Title = "FOV",
											Description = "Silent aim FOV circle",
											Flag = "mm2_fov_enabled",
											Default = v83[175],
											Notify = v83[175],
											Side = "Right",
											Callback = function()
												fov.applyFromUi()
											end,
										})

										v90:Slider({
											Title = "Size",
											Flag = "mm2_fov_size",
											Min = 40,
											Max = 600,
											Default = v83[170],
											Decimals = v83[141],
											Suffix = "px",
											Callback = function(mm2SilentFov)
												fov.setSize(mm2SilentFov)
												zenthra.Flags.mm2_silent_fov = mm2SilentFov
											end,
										})

										v90:Colorpicker({
											Title = "Color",
											Flag = "mm2_fov_color",
											Default = Color3.fromRGB(255, v83[20], 255),
											Callback = function(arg)
												fov.setColor(arg)
											end,
										})

										v90:Slider({
											Title = "Thickness",
											Flag = "mm2_fov_thickness",
											Min = 0.5,
											Max = 6,
											Default = v83[79],
											Decimals = 1,
											Callback = function(arg)
												fov.setThickness(arg)
											end,
										})

										v90:Slider({
											Title = "Transparency",
											Flag = "mm2_fov_transparency",
											Min = 0,
											Max = v83[2],
											Default = 25,
											Decimals = 0,
											Suffix = "%",
											Callback = function(arg)
												fov.setTransparency(arg)
											end,
										})
									end
								end

								local v90 = v89:Module({
									Title = "Auto Shoot",
									Description = "Sheriff gun auto fire",
									Flag = "mm2_autoshoot",
									Default = false,
									Notify = v83[4],
									Side = "Right",
									Callback = function()
										as.applyFromUi()
									end,
								})

								v90:Slider({
									Title = "Delay",
									Flag = "mm2_autoshoot_delay",
									Min = 0,
									Max = v83[34],
									Default = 0,
									Decimals = 2,
									Suffix = "s",
									Callback = function(arg)
										as.setDelay(arg)
									end,
								})

								v90:Toggle({
									Title = "Visible Check",
									Flag = "mm2_autoshoot_visible",
									Default = true,
									Callback = function(arg)
										as.setVisibleCheck(arg == true)
									end,
								})

								v90:Toggle({
									Title = "Auto Equip Gun",
									Flag = "mm2_autoshoot_equip",
									Default = false,
									Callback = function(arg)
										as.setAutoEquip(arg == true)
									end,
								})

								v90:Toggle({
									Title = "Wallbang",
									Flag = "mm2_autoshoot_wallbang",
									Default = false,
									Callback = function(arg)
										as.setWallbang(arg == true)
									end,
								})

								v90:Toggle({
									Title = "Ignore FOV",
									Flag = "mm2_autoshoot_ignore_fov",
									Default = false,
									Callback = function(arg)
										as.setIgnoreFov(arg == true)
									end,
								})
							end

							do
								v86:Module({
									Title = "Instant Throw",
									Description = "Knife lands on the target the moment you throw",
									Flag = "mm2_instant_throw",
									Default = false,
									Callback = function()
										mM2.applyExploitFromUi()
									end,
								}):Toggle({
									Title = "Wallbang",
									Flag = "mm2_throw_wallbang",
									Default = false,
									Callback = function()
										mM2.applyExploitFromUi()
									end,
								})

								v86:Module({
									Title = "Wallbang",
									Description = "Gun shoots straight through any wall",
									Flag = "mm2_wallbang",
									Default = false,
									Side = "Right",
									Callback = function()
										mM2.applyExploitFromUi()
									end,
								})

								v86:Module({
									Title = "Auto Grab Gun",
									Description = "TP to the dropped gun and return instantly",
									Flag = "mm2_auto_grab_gun",
									Default = false,
									Callback = function(arg)
										zenthra.Flags.mm2_auto_grab_gun = arg == true
										mM2.applyAutoGrabFromUi()
									end,
								}):Paragraph({
									Text = "When the sheriff gun drops, teleports to it for a grab then snaps back.",
								})

								do
									local v89 = v86:Module({
										Title = "Tp Kill",
										Description = "Murderer only — stick & stab",
										Flag = "mm2_tpkill",
										Default = false,
										Notify = true,
										Side = "Right",
										Callback = function()
											tpk.applyFromUi()
										end,
									})

									if tbl17.Env.Mobile or zenthra.IsMobile then
										v89:Toggle({
											Title = "Show Button",
											Flag = "mm2_tpkill_button",
											Default = false,
											Callback = function(arg)
												tpk.setButtonVisible(arg == true)
											end,
										})

										v89:Paragraph({
											Text = "Drag the on-screen button, tap to TP Kill the closest player to aim.",
										})
									else
										v89:Keybind({
											Title = "Activate",
											Flag = "mm2_tpkill_key",
											Default = Enum.KeyCode.V,
											Callback = function()
												tpk.activate()
											end,
										})

										v89:Paragraph({
											Text = "Press the keybind to stick to the closest player to your mouse and stab.",
										})
									end
								end
							end

							do
								local v89 = v87:Module({
									Title = "Role ESP",
									Description = "Highlight murder, sheriff & innocents",
									Flag = "mm2_esp",
									Default = v83[175],
									Callback = function()
										mM2.applyEspFromUi()
									end,
								})

								v89:Toggle({
									Title = "Murderer",
									Flag = "mm2_esp_murderer",
									Default = v83[4],
									Callback = function()
										mM2.applyEspFromUi()
									end,
								})

								v89:Toggle({
									Title = "Sheriff",
									Flag = "mm2_esp_sheriff",
									Default = v83[4],
									Callback = function()
										mM2.applyEspFromUi()
									end,
								})

								v89:Toggle({
									Title = "Innocent",
									Flag = "mm2_esp_innocent",
									Default = true,
									Callback = function()
										mM2.applyEspFromUi()
									end,
								})

								v89:Toggle({
									Title = "Dropped gun",
									Flag = "mm2_esp_dropped_gun",
									Default = v83[4],
									Callback = function()
										mM2.applyEspFromUi()
									end,
								})
							end

							do
								local v89 = v88:Module({
									Title = "Movement",
									Description = "Speed, jump & noclip",
									Toggleable = false,
								})

								v89:Toggle({
									Title = "WalkSpeed",
									Flag = "mm2_walkspeed",
									Default = false,
									Notify = true,
									Callback = function()
										mM2.applyPlayerFromUi()
									end,
								})

								v89:Slider({
									Title = "WalkSpeed",
									Flag = "mm2_walkspeed_value",
									Min = 16,
									Max = v83[153],
									Default = 16,
									Decimals = 0,
									Callback = function()
										mM2.applyPlayerFromUi()
									end,
								})

								v89:Toggle({
									Title = "JumpPower",
									Flag = "mm2_jumppower",
									Default = v83[175],
									Notify = true,
									Callback = function()
										mM2.applyPlayerFromUi()
									end,
								})

								v89:Slider({
									Title = "JumpPower",
									Flag = "mm2_jumppower_value",
									Min = v83[40],
									Max = v83[5],
									Default = v83[40],
									Decimals = 0,
									Callback = function()
										mM2.applyPlayerFromUi()
									end,
								})

								v89:Toggle({
									Title = "Noclip",
									Flag = "mm2_noclip",
									Default = false,
									Notify = true,
									Callback = function()
										mM2.applyPlayerFromUi()
									end,
								})
							end

							v88:Module({
								Title = "Anti-fling",
								Description = "Bloqueia fling de outros exploiters",
								Flag = "mm2_antifling",
								Default = false,
								Notify = true,
								Callback = function()
									af.applyFromUi()
								end,
							}):Slider({
								Title = "Max Spin",
								Flag = "mm2_antifling_spin",
								Default = 40,
								Min = v83[61],
								Max = 200,
								Increment = v83[161],
								Callback = function(arg)
									af.MaxAngular = tonumber(arg) or af.MaxAngular
								end,
							})

							task.defer(function()
								mM2.bootstrap()
								mM2.applySilentAimFromUi()
								fov.applyFromUi()
								as.applyFromUi(v83[4])
								tpk.applyFromUi()
								mM2.applyExploitFromUi()
								mM2.applyEspFromUi()
								mM2.applyAutoGrabFromUi()
								mM2.applyPlayerFromUi()
								af.applyFromUi(true)
							end)

							zenthra.MM2 = mM2
							zenthra.FOV = fov
							zenthra.AS = as
							zenthra.TPK = tpk
							zenthra.AF = af
							getgenv().Zenthra = zenthra
							return zenthra
						end
					end

					while true do
					end
				end
			end
		end
	end
end

fn14(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v64), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
