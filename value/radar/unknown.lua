function split(szFullString, szSeparator)
 local nFindStartIndex = 1
local nSplitIndex = 1
 local nSplitArray = {}
while true do
local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
 if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end

    function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end 
xgsl = xgsl + 1 xgjg = true end end


     function xqmnb(qmnb) gg.clearResults()
gg.setRanges(qmnb[1]["memory"])
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
if gg.getResultCount() == 0 then else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
 gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then
else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then else end end end end



  qmnb = {
      {
        ['memory'] = 32
      },
      {
        ['name'] = ""
      },
      {
        ['value'] = 2.53125,
        ['type'] = 16
      },
      {
        ['lv'] = 2.3693558E-38,
        ['offset'] = 4,
        ['type'] = 16
      },
      {
        ['lv'] = 0,
        ['offset'] = 25,
        ['type'] = 4
      }
    }
    qmxg = {
      {
        ['value'] = 1,
        ['offset'] = 24,
        ['type'] = 4,
        ['freeze'] = true
      }
    }
    xqmnb(qmnb)
    gg.clearResults()
