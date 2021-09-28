function start(song) -- do nothing

end

function update(elapsed)
    if difficulty >= 3 and curStep > 624 then
        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 2 * math.sin((currentBeat + i*0.50) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*0.100) * math.pi), i)
		end
    end
end

function beatHit(beat) -- do nothing

end

function stepHit(step) -- do nothing

end

function playerTwoTurn()
    tweenCameraZoom(0.7,(crochet * 4) / 1000)
end

function playerOneTurn()
    tweenCameraZoom(0.8,(crochet * 4) / 1000)
end