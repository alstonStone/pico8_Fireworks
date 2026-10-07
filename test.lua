--test--

function test_init()
	cols={8,9,10,12} -- edit these color numbers (0-15)
	launch()
end


function test_update()
 if btnp(5) then launch() end -- x replays

 if not exploded then
  ry+=rvy
  if ry<=40 then
   exploded=true
   for i=1,40 do
    local a=rnd(1)       -- random direction
    -- local s=0.5+rnd(1.5) -- random speed
    local s=.2 -- random speed
    add(parts,{
     x=rx, y=ry,
     dx=cos(a)*s,
     dy=sin(a)*s,
     c=rnd(cols)
    })
   end
  end
 end

 for p in all(parts) do
  p.x+=p.dx
  p.y+=p.dy
  p.dy+=0.05 -- gravity
 end
end


function test_draw()
 cls()
 if not exploded then pset(rx,ry,7) end
 for p in all(parts) do
  pset(p.x,p.y,p.c)
 end
end


function launch()
 rx,ry=64,128 -- rocket position
 rvy=-3       -- rocket speed (negative = up)
 parts={}
 exploded=false
end
