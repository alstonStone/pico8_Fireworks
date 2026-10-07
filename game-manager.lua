--Game Manager--

-- 1. define the states table
states = {}

-- 2. define the menu state
states.menu = {
  update = function()

  end,
  draw = function()
    menu_draw()
  end
}

-- 3. define the playing state
states.play = {
  update = function()
    -- gameplay logic goes here
  end,
  draw = function()
    cls()
    print("playing game...", 40, 60, 7)
  end
}

-- state manager functions
function change_state(new_state)
  current_state = states[new_state]
end