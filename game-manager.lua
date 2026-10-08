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

-------------------Launch State---------------------------------------------------
states.launch = {
  update = function()
    -- gameplay logic goes here
  end,
  draw = function()
    cls()
    print("playing game...", 40, 60, 7)
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