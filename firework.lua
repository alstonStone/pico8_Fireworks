--Firework--

function firework_init()
	launch()
	sfx(3)
	duration=30*.6--seconds 30fps
end


function firework_update()
	if not exploded then
  		ry+=rvy
  		if ry<=30 then
  			sfx(2)
   			exploded=true
			for i=1,800 do
				local turn=rnd(1)       -- random direction
				local speed=0.3+rnd(2) -- random speed

				add(parts,{
					x=rx, y=ry,
					dx=cos(turn)*speed,
					dy=sin(turn)*speed,
					c=rnd(colors)
				})
			end
  		end
	else
		duration-=1
	end
	old_parts=parts
	parts={}
	for p in all(old_parts) do
		p.x+=p.dx
		p.y+=p.dy
		p.dy+=0.05 -- gravity
		if p.y<128 then
			add(parts,p)
		end
 	end
 	if duration <= -(30*1) then
 		run()
 	end
end


function firework_draw()
	cls()
	if not exploded then 
		pset(rx,ry,7)
	else
		if duration<=0 then
			for i = 1, (count(parts)/4)+1 do
			  deli(parts)
			end
		end
	 	for p in all(parts) do
	  		pset(p.x,p.y,p.c)
	 	end
	end

end


function launch()
	rx,ry=64,200 -- rocket position
	rvy=-3       -- rocket speed (negative = up)
	parts={}
	exploded=false
end
