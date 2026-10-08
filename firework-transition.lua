--firework transition--

function transition_init()
    rocket={
        x=60,
        y=112,
        dy=0,
        animation_tick=1
    }
    sfx(0)
end


function transition_update()
    if rocket.animation_tick>=30*.5 then

	    rocket.y-=rocket.dy
	    rocket.dy+=0.01*rocket.animation_tick
    end
    rocket.animation_tick+=1

    if rocket.y <= -16 then
        firework_init()
        change_state("display")
    end
end


function transition_draw()
    cls()
    spr(16,rocket.x,rocket.y)
    spr(32,rocket.x,rocket.y+8)
    if(rocket.animation_tick %2)==0 then
        spr(48,rocket.x,rocket.y+16)
    else
        spr(33,rocket.x,rocket.y+16)
    end
end