local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')
data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end
return { [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('edaYBxbEnonAfhlCBxBAcavPcXQZIOnPwNDEHKyacijtwumQqhjAUWzS2V5')] = 388, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('eUnKsRsIoglgCnuxeIMQYVGJQPEJNScIDYPzeoaQtitQJQtbdVaglgva2lja09uSW5jb3JyZWN0S2V5')] = true, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('kWlFNzxKZMYQsJGXlXRudRuwbeExRziSJVKPNLxfHFXOxaqWbJSgEFKZGVidWdPbktleQ==')] = true, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('tqtlipiUFuLngLauiehUtfprBOjQvYICSepnYNJwwpiJdtXTnkLNpuObWF4QXR0ZW1wdHM=')] = 1, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('gXDjJmxNuGFSsXxNZIXXeeJzYLEnnxYeuYpezBLSUcxuwywdfoRVVZic2V0dGluZ3M=')] = { [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('basJngULZFZYbrWNtTdEsNAlBpKcOVqomgQfIQklaYiJiMTwRAUjqDNZW5hYmxlU291bmQ=')] = true, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('bAmGjzkPysxDdpObayqVSgGDsTkDaxcgBZLmeUkpXsjjsrrpthBbWieZW5hYmxlR3JhcGhpY3M=')] = false, }, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('vNwobLLNhPQprWYgZDiJSglKckZUniRLcQVHtcWNvFOIINidcewCLUwZGVzY3JpcHRpb24=')] = aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('zkLjuwiGxKzilJDnSswnenjkcnvYdFwgNazltSjVxvBjpOAeSTSAnHldmFyMzM='), [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('STLzOoYCwSKKLqyAedPWAesKuxHTuXGuWvvGPKDxgCmmaPEFkVrYdUPcGxheWVyU2NvcmVz')] = {100, 200, 300, 400, 500}, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('DXYvzDQVpkFBGFoVJvYkQXrOTEUVvwYbcHxUEvtdaYEXWMTlLYqzFhqZGVidWdTZXR0aW5ncw==')] = { [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('wOPZOJFFBApIzZaCUazGjivICfiqkPTQCLslLyMyJxYVUOlvlPefWXzc2hvd0xvZ3M=')] = true, [aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('PwgbDlxDwiinNQOjxsGcuwpRtxBCKiEQgwMAWiEIdUohYNspvVehduhbG9nTGV2ZWw=')] = aKODpimhFseppUxRwlKIKdVyjDKYyWFifmRpmpwDQLHjwNoOVUNeRQezIRLgwefEUqMJLwpcggwbxTXfbDDMu('aMeqwFTRSKWwWuuTMKRMhMWgyBktkPAmwLLsOJbvthmxRgDyiXmtrPjdmVyYm9zZQ=='), },    
