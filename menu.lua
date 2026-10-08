-- menu --

function menu_init()
	poke(0x5f2d, 0x1)
	border_color=1
	select_color=7
end


function menu_update()
	update_mouse()
end


function menu_draw()
 cls()
 draw_border()
 draw_mouse()--keep last to draw on top
end


function update_mouse()
  mx = stat(32)
  my = stat(33)
  mbut = stat(34)
  -- Relative movement (for FPS style or deltas)
  rx = stat(38)
  ry = stat(39)
end


function draw_border()
	rect(0,0,127,127,border_color)
	draw_display_section()
	draw_launch_section()
end

function draw_display_section()
	gap=4
	line(103,0,103,111,border_color)
	rect(103+gap-1,18,127-gap+1,(111-(gap*2))+1,6)
	rectfill(103+gap,18,127-gap,111-gap*2,5)

end

function draw_launch_section()
	line(0,111,127,111,border_color)
	print("[launch]",48,117,select_color)
end

function draw_mouse()
	--circfill(stat(32), stat(33), 2, 7)
	spr(0,stat(32),stat(33))
end


--menue item,
--has a x,y position, has a function to run when selected. 