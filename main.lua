print("U̷̥͎̜̹͆̇͊̏̋̓̍͜ͅͅs̵̡̠͙͇̯̤̠̹͕̥̰͈͍̙̎͛͐̕͘ë̶̫̣͖̮͙̜̬̤͙͕̤̮̳͍́͛̑́̽̈́̄̓̄̃̊͘͜r̶̨̛͉̒͊̀͆̇̆̿̀̕n̴̢̛͇̟͚͚̘͚̫̖̼͈͕̩̭̐̐̈́͂̾͝a̴̢̨̜̥̖̲̭̤͗̓̓̿̐̇́̌̕ͅm̴̡͎̹̖͕̮̖̦̣̥͉͑̀̂̌̀̉͘̚͜ę̴̭͖̦͙̳̮̮̼͇̂͆͐͌̆̒̈́͌̐̎̄̏̈́͜W̵̛̩̥̫̣̣̑̒͗͑͆̕͝͝i̶̡̹̘̣̗̖̼̇̉͛̆̄̊̓̏͊͗͆̄͠t̷̡̛̰̫͕̠̪̪͋̎͗̐̄̄͘h̵̨̠̩͉̹̉́̅͐̈̃̆ę̷̦̤̟̩̠̤̮̟̼̻̿͑̋̓͠l̷̫̀̈́̓̓͂̔͂d̸̡̥͈̖̠̰͖̤̬͂̿̂̄͒̈́̀̏̎̉̐̀͑̾͜ͅ")
--THIS RETURNS EVERYTHING AS A STRING
--make every value a member of this table. example: st.Hi=123
local st={}
local keepsaved=true--set to true if you want old values to be kept
local filename="newsave"--set this to the filename
local p=false--set this to false if you dont want it to print the table values before and after, its recommended to leave this as false

--DO NOT EDIT BELOW ME UNLESS YOU KNOW WHAT YOU ARE DOING
local front="local t={} "
local file=io.open(filename..".lua","a")
local readfile=require(filename)
local en=" return t"
io.output(file)
if p then
for i,v in pairs(readfile) do
print("The Current value of "..i.." is "..v)
end
end
print( )
print("This is a dictionary made by usernamewitheld. you can add words and definitions, but since there is no database with all the words, there is no way to manually check every word. The three commands are read, write, and end. ")
print()
local function clear()
io.open( filename..".lua","w"):close()
end
local function save()
if keepsaved then
for i,v in pairs(readfile) do
if st[i]==nil then
st[i]=v
else
end
end
clear()
io.write(front)
for i,v in pairs(st) do
io.write("t."..i.."='"..v.."' ")
end
io.write(en)
else
clear()
io.write(front)
for i,v in pairs(st) do
io.write("t."..i.."='"..v.."' ")
end
io.write(en)
end
end
while true do
print("What would you like to do?")
local r=io.read()
r=string.lower(r)
if r== "end" then
save()
break
elseif r=="write" then
print("enter the word")
re=io.read()
print("enter the definition")
ri=io.read()
ri:lower()
re:lower()
st[re]=ri
elseif r=="read" then
print("please enter the word")
local rea=io.read()
for i,v in pairs(readfile) do
if i==string.lower(rea) then

print(rea.." means "..v)
rea="done"
end
end
if  rea=="done" then
else
print("oops, looks like that word is not entered yet!")
end
else
print("invalid input!")
end
end
if p then
for i,v in pairs(readfile) do
print("The new value of "..i.." is "..v)
end
end
file:close()
