-- always on
local it = display.newText("IT", 0, 0, "mono.ttf", 36)
local is = display.newText("IS", 0, 0, "mono.ttf", 36)

-- initializes extra stuff
local extra1 = display.newText("RU", 0, 0, "mono.ttf", 36)
extra1:setFillColor(.25)

local extra2 = display.newText("U", 0, 0, "mono.ttf", 36)
extra2:setFillColor(.25)

local extra3 = display.newText("QN", 0, 0, "mono.ttf", 36)
extra3:setFillColor(.25)

local extra4 = display.newText("T", 0, 0, "mono.ttf", 36)
extra4:setFillColor(.25)

local extra5 = display.newText("MONTY", 0, 0, "mono.ttf", 36)
extra5:setFillColor(.25)

local extra6 = display.newText("NEP", 0, 0, "mono.ttf", 36)
extra6:setFillColor(.25)

local extra7 = display.newText("N", 0, 0, "mono.ttf", 36)
extra7:setFillColor(.25)

local extra8 = display.newText("ZI", 0, 0, "mono.ttf", 36)
extra8:setFillColor(.25)

local extra9 = display.newText("DOUGE", 0, 0, "mono.ttf", 36)
extra9:setFillColor(.25)

local extra10 = display.newText("L", 0, 0, "mono.ttf", 36)
extra10:setFillColor(.25)

local extra11 = display.newText("YL", 0, 0, "mono.ttf", 36)
extra11:setFillColor(.25)

local extra12 = display.newText("J", 0, 0, "mono.ttf", 36)
extra12:setFillColor(.25)

local extra13 = display.newText("X", 0, 0, "mono.ttf", 36)
extra13:setFillColor(.25)

-- initializes top text variables
local half = display.newText("HALF", 0, 0, "mono.ttf", 36)
local a = display.newText("A", 0, 0, "mono.ttf", 36)
local ten = display.newText("TEN", 0, 0, "mono.ttf", 36)
local quarter = display.newText("QUARTER", 0, 0, "mono.ttf", 36)
local twenty = display.newText("TWENTY", 0, 0, "mono.ttf", 36)
local five = display.newText("FIVE", 0, 0, "mono.ttf", 36)
local minutes = display.newText("MINUTES", 0, 0, "mono.ttf", 36)
local past = display.newText("PAST", 0, 0, "mono.ttf", 36)
local to = display.newText("TO", 0, 0, "mono.ttf", 36)

-- initializes bottom text variables
local oneNum = display.newText("ONE", 0, 0, "mono.ttf", 36)
local twoNum = display.newText("TWO", 0, 0, "mono.ttf", 36)
local threeNum = display.newText("THREE", 0, 0, "mono.ttf", 36)
local fourNum = display.newText("FOUR", 0, 0, "mono.ttf", 36)
local fiveNum = display.newText("FIVE", 0, 0, "mono.ttf", 36)
local sixNum = display.newText("SIX", 0, 0, "mono.ttf", 36)
local sevenNum = display.newText("SEVEN", 0, 0, "mono.ttf", 36)
local eightNum = display.newText("EIGHT", 0, 0, "mono.ttf", 36)
local nineNum = display.newText("NINE", 0, 0, "mono.ttf", 36)
local tenNum = display.newText("TEN", 0, 0, "mono.ttf", 36)
local elevenNum = display.newText("ELEVEN", 0, 0, "mono.ttf", 36)
local twelveNum = display.newText("TWELVE", 0, 0, "mono.ttf", 36)
local oclock = display.newText("O'CLOCK", 0, 0, "mono.ttf", 36)

function toggleHour(hour)
	if hour == 1 then
		oneNum:setFillColor(1)
	end
	if hour == 2 then
		twoNum:setFillColor(1)
	end
	if hour == 3 then
		threeNum:setFillColor(1)
	end
	if hour == 4 then
		fourNum:setFillColor(1)
	end
	if hour == 5 then
		fiveNum:setFillColor(1)
	end
	if hour == 6 then
		sixNum:setFillColor(1)
	end
	if hour == 7 then
		sevenNum:setFillColor(1)
	end
	if hour == 8 then
		eightNum:setFillColor(1)
	end
	if hour == 9 then
		nineNum:setFillColor(1)
	end
	if hour == 10 then
		tenNum:setFillColor(1)
	end
	if hour == 11 then
		elevenNum:setFillColor(1)
	end
	if hour == 12 then
		twelveNum:setFillColor(1)
	end
	if hour == 13 then
		oneNum:setFillColor(1)
	end
end

function update()
	-- gets time
	local hour = tonumber(os.date("%I"))
	local minute = tonumber(os.date("%M"))

	-- sets everything to gray
	a:setFillColor(.25)
	half:setFillColor(.25)
	ten:setFillColor(.25)
	quarter:setFillColor(.25)
	twenty:setFillColor(.25)
	five:setFillColor(.25)
	minutes:setFillColor(.25)
	past:setFillColor(.25)
	to:setFillColor(.25)

	oneNum:setFillColor(.25)
	twoNum:setFillColor(.25)
	threeNum:setFillColor(.25)
	fourNum:setFillColor(.25)
	fiveNum:setFillColor(.25)
	sixNum:setFillColor(.25)
	sevenNum:setFillColor(.25)
	eightNum:setFillColor(.25)
	nineNum:setFillColor(.25)
	tenNum:setFillColor(.25)
	elevenNum:setFillColor(.25)
	twelveNum:setFillColor(.25)
	oclock:setFillColor(.25)

	if minute <= 4 then
		oclock:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 5 and minute <= 9 then
		five:setFillColor(1)
		minutes:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 10 and minute <= 14 then
		ten:setFillColor(1)
		minutes:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 15 and minute <= 19 then
		a:setFillColor(1)
		quarter:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 20 and minute <= 24 then
		twenty:setFillColor(1)
		minutes:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 25 and minute <= 29 then
		twenty:setFillColor(1)
		five:setFillColor(1)
		minutes:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 30 and minute <= 34 then
		half:setFillColor(1)
		a:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 35 and minute <= 39 then
		twenty:setFillColor(1)
		five:setFillColor(1)
		minutes:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 40 and minute <= 44 then
		twenty:setFillColor(1)
		minutes:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 45 and minute <= 49 then
		a:setFillColor(1)
		quarter:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 50 and minute <= 54 then
		ten:setFillColor(1)
		minutes:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 55 and minute <= 59 then
		five:setFillColor(1)
		minutes:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end
end

function position()
	-- "it" positioning
	local xpadding = (display.contentWidth - ((it.width / 2) * 14)) / 2
	it.x = xpadding + (it.width / 2)
	local ypadding = (display.contentHeight - ((it.height / 3) * 9) - 9 * (it.height / 3)) / 2
	it.y = ypadding + (it.height / 3)

	-- X positioning

	-- line 1
	extra1.x = it.x + it.width / 2 + extra1.width / 2
	is.x = extra1.x + extra1.width / 2 + is.width / 2
	extra2.x = is.x + is.width / 2 + extra2.width / 2
	half.x = extra2.x + extra2.width / 2 + half.width / 2
	a.x = half.x - half.width / 8
	ten.x = half.x + half.width / 2 + ten.width / 2

	-- line 2
	quarter.x = it.x - it.width / 2 + quarter.width / 2
	twenty.x = quarter.x + quarter.width / 2 + twenty.width / 2
	extra12.x = twenty.x + twenty.width / 2 + extra12.width / 2

	-- line 3
	five.x = it.x - it.width / 2 + five.width / 2
	extra3.x = five.x + five.width / 2 + extra3.width / 2
	minutes.x = extra3.x + extra3.width / 2 + minutes.width / 2
	extra4.x = minutes.x + minutes.width / 2 + extra4.width / 2

	-- line 4
	past.x = it.x - it.width / 2 + past.width / 2
	extra5.x = past.x + past.width / 2 + extra5.width / 2
	to.x = extra5.x + extra5.width / 2 + to.width / 2
	extra6.x = to.x + to.width / 2 + extra6.width / 2

	-- line 5
	oneNum.x = it.x - it.width / 2 + oneNum.width / 2
	extra7.x = oneNum.x + oneNum.width / 2 + extra7.width / 2
	twoNum.x = extra7.x + extra7.width / 2 + twoNum.width / 2
	extra8.x = twoNum.x + twoNum.width / 2 + extra8.width / 2
	threeNum.x = extra8.x + extra8.width / 2 + threeNum.width / 2

	-- line 6
	fourNum.x = it.x - it.width / 2 + fourNum.width / 2
	fiveNum.x = fourNum.x + fourNum.width / 2 + fiveNum.width / 2
	sevenNum.x = fiveNum.x + fiveNum.width / 2 + sevenNum.width / 2
	extra13.x = sevenNum.x + sevenNum.width / 2 + extra13.width / 2

	-- line 7
	sixNum.x = it.x - it.width / 2 + sixNum.width / 2
	eightNum.x = sixNum.x + sixNum.width / 2 + eightNum.width / 2
	extra11.x = eightNum.x + eightNum.width / 2 + extra11.width / 2
	nineNum.x = extra11.x + extra11.width / 2 + nineNum.width / 2

	-- line 8
	tenNum.x = it.x - it.width / 2 + tenNum.width / 2
	elevenNum.x = tenNum.x + tenNum.width / 2 + elevenNum.width / 2
	extra9.x = elevenNum.x + elevenNum.width / 2 + extra9.width / 2

	-- line 9
	twelveNum.x = it.x - it.width / 2 + twelveNum.width / 2
	extra10.x = twelveNum.x + twelveNum.width / 2 + extra10.width / 2
	oclock.x = extra10.x + extra10.width / 2 + oclock.width / 2

	-- Y positioning

	-- line 1
	extra1.y = it.y
	is.y = it.y
	extra2.y = it.y
	half.y = it.y
	a.y = it.y
	ten.y = it.y

	-- line 2
	quarter.y = it.y + it.height / 3 + quarter.height / 3
	twenty.y = quarter.y
	extra12.y = quarter.y

	-- line 3
	five.y = quarter.y + quarter.height / 3 + five.height / 3
	extra3.y = five.y
	minutes.y = five.y
	extra4.y = five.y

	-- line 4
	past.y = five.y + five.height / 3 + past.height / 3
	extra5.y = past.y
	to.y = past.y
	extra6.y = past.y

	-- line 5
	oneNum.y = past.y + past.height / 3 + oneNum.height / 3
	extra7.y = oneNum.y
	twoNum.y = oneNum.y
	extra8.y = oneNum.y
	threeNum.y = oneNum.y

	-- line 6
	fourNum.y = oneNum.y + oneNum.height / 3 + fourNum.height / 3
	fiveNum.y = fourNum.y
	sevenNum.y = fourNum.y
	extra13.y = sevenNum.y

	-- line 7
	sixNum.y = fourNum.y + fourNum.height / 3 + sixNum.height / 3
	eightNum.y = sixNum.y
	extra11.y = sixNum.y
	nineNum.y = sixNum.y

	-- line 8
	tenNum.y = sixNum.y + sixNum.height / 3 + tenNum.height / 3
	elevenNum.y = tenNum.y
	extra9.y = tenNum.y

	-- line 9
	twelveNum.y = tenNum.y + tenNum.height / 3 + twelveNum.height / 3
	extra10.y = twelveNum.y
	oclock.y = twelveNum.y
end

position()
update()

timer.performWithDelay(1000, update, 0)
