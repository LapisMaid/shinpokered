

;joenote - commenting this all out because yellow's method is now being used
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LoneMoves:
;; these are used for gym leaders.
;; this is not automatic! you have to write the number you want to wLoneAttackNo
;; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
;; the fourth entry in the list.
;
;; first byte:  pokemon in the trainer's party that gets the move
;; second byte: move
;; unterminated
;	db 1,BIDE
;	db 1,BUBBLEBEAM
;	db 2,THUNDERBOLT
;	db 2,MEGA_DRAIN
;	db 3,TOXIC
;	db 3,PSYWAVE
;	db 3,FIRE_BLAST
;	db 4,FISSURE
;
;TeamMoves:
;; these are used for elite four.
;; this is automatic, based on trainer class.
;; don't be confused by LoneMoves above, the two data structures are
;	; _completely_ unrelated.
;
;; first byte: trainer (all trainers in this class have this move)
;; second byte: move
;; ff-terminated
;	db LORELEI,BLIZZARD
;	db BRUNO,FISSURE
;	db AGATHA,TOXIC
;	db LANCE,BARRIER
;	db $FF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; yellow has its own format.

; entry = trainerclass, trainerid, moveset+, 0
; moveset = partymon location, partymon's move, moveid
SpecialTrainerMoves:
	db BROCK,$1
	;geodude - tackle, defense curl
	;onix - tackle, screech, bind, bide
	db 2,4,BIDE
	db 0
	
	;joenote - give the abra of the cerulean rival something to do
	;		-assume the rival got some TMs from Celadon City
	db SONY1, $7
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;squirtle - tackle, tail whip, bubble, water gun
	db 0

	db SONY1, $8
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;bulbasaur - tackle, growl, leech seed, vine whip
	db 0

	db SONY1, $9
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;charmander - scratch, growl, ember, leer
	db 0
	
	db MISTY,$1
	;staryu - tackle, water gun
	;starmie - tackle, water gun, harden, bubblebeam
	db 2,3,HARDEN
	db 2,4,BUBBLEBEAM
	db 0
	
	db LT_SURGE,$1
	;pikachu - thunder wave, quick attack, thundershock, double team
	;voltorb - tackle, screech, sonic boom
	;raichu - thunderbolt, tail whip, thunder wave, slam
	db 3,1,THUNDERBOLT
	db 0
	
	db ERIKA,$1
	;tangela - constrict, bind, absorb, vine whip
	;victreebel
	db 2,1,GROWTH
	db 2,2,SLEEP_POWDER
	db 2,3,WRAP
	db 2,4,RAZOR_LEAF
	;vileplume
	db 3,1,POISONPOWDER
	db 3,2,MEGA_DRAIN
	db 3,3,SLEEP_POWDER
	db 3,4,PETAL_DANCE
	db 0
	
	db KOGA,$1
	;koffing - explosion, double-team, sludge, smokescreen
	db 1,1,EXPLOSION
	db 1,2,DOUBLE_TEAM
	;muk - disable, substitute, minimize, sludge
	db 2,2,SUBSTITUTE
	;venonat - takedown, supersonic, mega drain, sleep powder
	db 3,1,TAKE_DOWN
	db 3,2,SUPERSONIC
	db 3,3,MEGA_DRAIN
	;weezing - toxic, sludge, mimic, explosion
	db 4,1,TOXIC
	db 4,3,MIMIC
	db 4,4,EXPLOSION
	db 0
	
	db SABRINA,$1
	;kadabra - reflect, disable, psybeam, recover
	db 1,1,REFLECT
	;mr mime - confusion, barrier, light screen, seismic toss
	db 2,4,SEISMIC_TOSS
	;venomoth - supersonic, leech life, stun spore, psybeam
	db 3,1,SUPERSONIC
	;alakazam - psywave, recover, psychic, reflect
	db 4,1,PSYWAVE
	db 0
	
	db BLAINE,$1
	;ninetales - quick attack, swift, confuse ray, flamethrower
	db 1,2,SWIFT
	;magmar - strength, counter, confuse ray, fire punch
	db 2,1,STRENGTH
	db 2,2,COUNTER
	;rapidash - tail whip, stomp, double-edge, fire spin
	db 3,3,DOUBLE_EDGE
	;arcanine - fire blast, bite, leer, takedown
	db 4,1,FIRE_BLAST
	db 0

	db GIOVANNI,$1 ;Rocket Hideout
	;nidorina lv25 (changed from Onix) - tail whip, body slam, bubblebeam, poison sting
	db 1,1,BODY_SLAM
	db 1,2,BUBBLEBEAM
	;rhyhorn lv24 - horn attack
	;kangaskhan lv29 - comet punch, counter, bite
	db 3,2,COUNTER
	
	db GIOVANNI,$2 ;Silph Co
	;nidorino lv37 - ice beam, body slam, focus energy, toxic
	db 1,1,ICE_BEAM
	db 1,2,DOUBLE_EDGE
	db 1,4,TOXIC
	;kangaskhan lv35 - mega punch, tail whip, counter, mega kick
	db 2,1,MEGA_PUNCH
	db 2,2,MEGA_KICK
	db 2,3,COUNTER
	;rhyhorn lv37 - rock slide, body slam, tail whip, stomp
	db 3,1,ROCK_SLIDE
	db 3,4,BODY_SLAM
	;nidoqueen lv 41 - thunder, seismic toss, tail whip, body slam
	db 4,1,THUNDER
	db 4,2,SEISMIC_TOSS
	db 4,3,TAIL_WHIP
	db 4,4,BODY_SLAM
	
	db GIOVANNI,$3 ;Gym Leader
	;kangaskhan - earthquake, hyper beam, fissure, dizzy punch
	db 1,1,EARTHQUAKE
	db 1,2,HYPER_BEAM
	db 1,3,FISSURE
	;dugtrio - fissure, dig, sand attack, slash
	db 2,1,FISSURE
	;nidoqueen - earthquake, double kick, thunder, body slam
	db 3,1,EARTHQUAKE
	db 3,3,THUNDER
	;nidoking - earthquake, double kick, ice beam, thrash
	db 4,1,EARTHQUAKE
	db 4,3,ICE_BEAM
	;rhydon
	db 5,1,ROCK_SLIDE
	db 5,2,BODY_SLAM
	db 5,3,DOUBLE_TEAM
	db 5,4,EARTHQUAKE
	db 0
	
	db LORELEI,$1
	;dewgong - bubblebeam, aurora beam, rest, takedown
	db 1,1,BUBBLEBEAM
	;cloyster - clamp, supersonic, aurora beam, spike cannon
	db 2,2,SUPERSONIC
	;slowbro - surf, ice beam, amnesia, psychic
	db 3,1,SURF
	db 3,2,ICE_BEAM
	;jynx - psychic, ice punch, lovely kiss, thrash
	db 4,1,PSYCHIC_M
	db 4,3,LOVELY_KISS
	;lapras - body slam, confuse ray, blizzard, hydro pump
	db 5,3,BLIZZARD
	db 0

	db BRUNO,$1
	;onix - rock slide, screech, slam, dig
	db 1,1,ROCK_SLIDE
	db 1,2,SCREECH
	db 1,4,DIG
	;hitmonchan - ice punch, thunder punch, mega punch, submission
	db 2,4,SUBMISSION
	;hitmonlee - rolling kick, focus energy, hi jump kick, mega kick
	db 3,1,ROLLING_KICK
	;onix
	db 4,1,BIND
	db 4,2,BODY_SLAM
	db 4,3,EXPLOSION
	db 4,4,EARTHQUAKE
	;machamp - earthquake, focus energy, siesmic toss, submission
	db 5,1,EARTHQUAKE
	db 0

	db AGATHA,$1
	;haunter - confuse ray, mimic, hypnosis, dream eater
	db 1,2,MIMIC
	;gengar - confuse ray, substitute, thunderbolt, mega drain
	db 2,2,SUBSTITUTE
	db 2,3,THUNDERBOLT
	db 2,4,MEGA_DRAIN
	;golbat - screech, confuse ray, double edge, mega drain
	db 3,1,SCREECH
	db 3,3,DOUBLE_EDGE
	db 3,4,MEGA_DRAIN
	;arbok - earthquake, glare, screech, acid
	db 4,1,EARTHQUAKE
	;gengar - confuse ray, psychic, hypnosis, dream eater
	db 5,2,PSYCHIC_M
	db 0

	db LANCE,$1
	;gyarados - dragon rage, bite, hydro pump, hyperbeam
	db 1,2,BITE
	;dragonair - thunder wave, reflect, thunderbolt, hyperbeam
	db 2,1,THUNDER_WAVE
	db 2,2,REFLECT
	db 2,3,THUNDERBOLT
	;dragonair - surf, body slam, ice beam, hyperbeam
	db 3,1,SURF
	db 3,2,BODY_SLAM
	db 3,3,ICE_BEAM
	;aerodactyl - supersonic, fire blast, fly, hyperbeam
	db 4,2,FIRE_BLAST
	db 4,3,FLY
	;dragonite - blizzard, fire blast, thunder, hyperbeam
	db 5,1,BLIZZARD
	db 5,2,FIRE_BLAST
	db 5,3,THUNDER
	db 0

	db SONY3,$1
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,1,THUNDER_WAVE
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,TAKE_DOWN
	;arcanine - reflect, rest, double edge, flamethrower
	db 4,1,REFLECT
	db 4,2,REST
	db 4,3,DOUBLE_EDGE
	;exeggutor - leech seed, stomp, solar beam, hypnosis
	db 5,1,LEECH_SEED
	;blastoise - blizzard, reflect, skull bash, hydro pump
	db 6,1,BLIZZARD
	db 6,2,REFLECT
	db 0

	db SONY3,$2
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,1,THUNDER_WAVE
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,TAKE_DOWN
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 4,1,ICE_BEAM
	db 4,2,BODY_SLAM
	;arcanine - reflect, rest, double edge, flamethrower
	db 5,1,REFLECT
	db 5,2,REST
	db 5,3,DOUBLE_EDGE
	;venusaur - razor leaf, toxic, sleep powder, solar beam
	db 6,2,TOXIC
	db 0

	db SONY3,$3
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,1,THUNDER_WAVE
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,TAKE_DOWN
	;exeggutor - leech seed, stomp, solar beam, hypnosis
	db 4,1,LEECH_SEED
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 5,1,ICE_BEAM
	db 5,2,BODY_SLAM
	;charizard - fly, slash, fire blast, fire spin
	db 6,1,FLY
	db 6,3,FIRE_BLAST
	db 0


	
	db $ff
