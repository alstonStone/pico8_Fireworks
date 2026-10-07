--Game Manager--

-- 1. define the states table
states = {}

-------------------Menu State---------------------------------------------------
states.menu = {
  update = function()

  end,
  draw = function()
    menu_draw()
  end
}

-------------------Game State---------------------------------------------------
states.play = {
  update = function()
    -- gameplay logic goes here
  end,
  draw = function()
    cls()
    print("playing game...", 40, 60, 7)
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
  current_state = states[new_state]
end