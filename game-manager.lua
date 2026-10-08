--Game Manager--

-- 1. define the states table
states = {}
state=""

-------------------Menu State---------------------------------------------------
states.menu = {
  update = function()
    menu_update()
  end,
  draw = function()
    menu_draw()
  end
}

-------------------transition State---------------------------------------------------
states.transition = {
  update = function()
    transition_update()
  end,
  draw = function()
    transition_draw()
  end
}

-------------------Display State---------------------------------------------------
states.display = {
  update = function()
    firework_update()
  end,
  draw = function()
    firework_draw()
  end
}

-------------------Test State---------------------------------------------------
states.test = {
  update = function()
    test_update()
  end,
  draw = function()
    test_draw()
  end
}

-- state manager functions
function change_state(new_state)
  state=new_state
  current_state = states[new_state]
end