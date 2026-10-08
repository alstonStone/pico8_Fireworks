-- menu item--

--[[
a menu item has a position, made of an x y cord. Has an color that is displayed.
On the clicking of a menue item there is a function that is run.

]]--

menue_items={}
size=15

function create_menu_item(x,y,color)
	add(menue_items, {
		x=x,
		y=y,
		color=color,
		hover=false,
		update = function(self)
			--update code here
			--check for mouse pos, if over button, draw boarder
			if mx>=self.x and mx<=self.x+size and my>=self.y and my<=self.y+size then
				self.hover=true
			else
				self.hover=false
			end
			--if over button and stat(32)==1, clicked, send info to firework builder
		end,
		draw = function(self)
			if self.hover==true then
			rect(self.x-1,self.y-1,self.x+size+1,self.y+size+1,5)
			end
			rectfill(self.x,self.y,self.x+size,self.y+size,self.color)
		end
	})
end

function update_menu_items()
	for i in all(menue_items) do i:update() end
end

function draw_menu_items()
	for i in all(menue_items) do i:draw() end
end


function menu_items_init()

	create_menu_item(1*15,1*15,7)
	create_menu_item(3*15,1*15,8)
	create_menu_item(5*15,1*15,9)

	create_menu_item(1*15,3*15,10)
	create_menu_item(3*15,3*15,11)
	create_menu_item(5*15,3*15,12)

	create_menu_item(1*15,5*15,13)
	create_menu_item(3*15,5*15,14)
	create_menu_item(5*15,5*15,15)
end