-- mioscape
gg.alert('Mioscape is not responsible for banned your account!\n\nDonation List:\n1. Mdwis\n2. Dimas\n3. Adam R Iskandar')

MIO=1
function START()
  ST=gg.choice({
    '// MLBB Icon Radar - v2.7stable //',
    '// MLBB Normal Radar - v0.7-311219alpha //',
    '// Quit //'
}, nil, 'Mio Loader v2.7 | Made with 💖 Mio Natsume')
if ST == 1 then ims() end
if ST == 2 then nrs() end
if ST == 3 then qy() end
MIO=-1
end

function ims()
  TG = gg.makeRequest('https://raw.githubusercontent.com/mioscape/project/master/icon-radar.lua').content
  if not TG then
  gg.alert('Connectivity Problem')
  os.exit()
  else
  pcall(load(TG))
  end
end

function nrs()
  TG = gg.makeRequest('https://raw.githubusercontent.com/mioscape/project/master/normal-radar.lua').content
  if not TG then
  gg.alert('Connectivity Problem')
  os.exit()
  else
  pcall(load(TG))
  end
end

function qy()
  os.exit()
end

while true do
if gg.isVisible(true) then
MIO = 1
gg.setVisible(false)
end
if MIO == 1 then
START()
end
end
