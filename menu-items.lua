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
		click=false,
		update = function(self)
			if click==true then
				if mbut==0 then
					click=false
				end
			else
				if mx>=self.x and mx<=self.x+size and my>=self.y and my<=self.y+size then
					self.hover=true
					if mbut==1 then
						add_color(self.color)
						click=true
					end
				else
					self.hover=false
				end
			end
		end,
		draw = function(self)
			if self.hover==true then
				rect(self.x-1,self.y-1,self.x+size+1,self.y+size+1,select_color)
			end
			rectfill(self.x,self.y,self.x+size,self.y+size,self.color)
		end
	})
end

function create_launch_button(x,y,color)
	add(menue_items, {
		x=x,
		y=y,
		color=color,
		width=22,
		height=4,
		hover=false,
		click=false,
		update = function(self)
			if click==true then
				if mbut==0 then
					click=false
				end
			else
				if mx>=self.x and mx<=self.x+size and my>=self.y and my<=self.y+size then
					self.hover=true
					if mbut==1 then
						transition_init()
						change_state("transition")
					end
				else
					self.hover=false
				end
			end
		end,

		draw = function(self)
			local gap=4
			if self.hover==true then
				rect(self.x-gap,self.y-gap,self.x+self.width+gap,self.y+self.height+gap,self.color)
			end
			print("launch",self.x,self.y,7)
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

	create_launch_button(48,117,select_color)
end