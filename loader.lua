local U={"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/a91f0c.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/c4d2e7.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/e813b6.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/7f20aa.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/9bc401.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/22e5d8.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/f1a673.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/0dd94b.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/b73c25.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/5a80ef.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/d04931.dat",
"https://raw.githubusercontent.com/Iayka/gakuran-loader/main/p/86ce72.dat"}
local R={} for i=1,#U do R[i]=game:HttpGet(U[i]) end
local A="lyA71MnYIWkfhCsJjKODZui4tgHr+LXoSp60VEF938m/PGNb5TzUcB2xQRevawdq" local D={} for i=1,#A do D[A:sub(i,i)]=i-1 end
local S=table.concat(R) local B={} local K=173 local P=0 local function W(x) P=P+1 B[#B+1]=string.char((x-K-(P%251))%256) end
local i=1 while i<=#S do local a=S:sub(i,i) local b=S:sub(i+1,i+1) local c=S:sub(i+2,i+2) local d=S:sub(i+3,i+3) local v=(D[a] or 0)*262144+(D[b] or 0)*4096+(D[c] or 0)*64+(D[d] or 0) W(math.floor(v/65536)%256) if c~="=" then W(math.floor(v/256)%256) end if d~="=" then W(v%256) end i=i+4 end
local C=table.concat(B) local O={} local p=1 while p<=#C do local f=C:byte(p) p=p+1 for bit=0,7 do if p>#C then break end if math.floor(f/(2^bit))%2==1 then O[#O+1]=C:byte(p) p=p+1 else local x=C:byte(p) local y=C:byte(p+1) p=p+2 local dist=x*16+math.floor(y/16)+1 local len=(y%16)+3 for j=1,len do O[#O+1]=O[#O-dist+1] end end end end
local X={} for q=1,#O do X[q]=string.char(O[q]) end local F=loadstring(table.concat(X)) if not F then error("loader decode failed") end return F()
