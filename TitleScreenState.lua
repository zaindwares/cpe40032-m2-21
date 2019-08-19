--[[
    TitleScreenState Class

    The TitleScreenState is the starting screen of the game, shown on startup. It should
    display "Press Enter" and also our highest score.
]]

TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:init()
    -- nothing
end

function TitleScreenState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end

function TitleScreenState:render()
    love.graphics.setFont(hugeFont)
    love.graphics.printf('Fifty Bird:', 0, 64, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Night City', 0, 150, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Press Enter', 0, 250, VIRTUAL_WIDTH, 'center')
end