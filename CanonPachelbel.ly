% This LilyPond file was generated by Rosegarden 1.7.3
\version "2.12.0"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    arranger = "Arrangement Hans-Günter Heurmann"
    composer = "Johann Pachelbel (1653-1706)"
    copyright = "Copyright (c) C. FOUCHER Copyright Holder"
    subtitle = "sur une base obstinée"
    title = "CANON"
    tagline = "Created using Rosegarden 1.7.3 and LilyPond"
}
#(set-global-staff-size 20)
#(set-default-paper-size "a4")
global = { 
    \time 2/2
    \skip 1*105  %% 1-105
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4 = 120  \skip 1*105 
}
\score {
<< % common
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0

        \context Staff = "track 1" << 
            \set Staff.instrumentName = \markup { \column { "Main droite " } }
            \set Score.skipBars = ##t
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo

            \context Voice = "voice 1" {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1

                \time 2/2
                
% absTime = 0 barStart = 0
\clef "treble"
                \key d \major
                R1*4 
% absTime = 3840 barStart = 3840

% absTime = 7680 barStart = 7680

% absTime = 11520 barStart = 11520
 |
%% 5
                
% absTime = 15360 barStart = 15360
fis'' 2 _3 e''  |
                
% absTime = 19200 barStart = 19200
d'' 2 _1 cis'' _2  |
                
% absTime = 23040 barStart = 23040
b' 2 a' _2  |
                
% absTime = 26880 barStart = 26880
b' 2 _1 cis''  |
                
% absTime = 30720 barStart = 30720
< d'' fis'' > 2 _3_5 < cis'' e'' >  |
%% 10
                
% absTime = 34560 barStart = 34560
< b' d'' > 2 < a' cis'' > _2_4  |
                
% absTime = 38400 barStart = 38400
< g' b' > 2 < fis' a' > _2_3  |
                
% absTime = 42240 barStart = 42240
< g' b' > 2 < e' cis'' >  |
                
% absTime = 46080 barStart = 46080
d' 4 _~ < d' fis' > < cis' a' > _~ < cis' g' >  |
                
% absTime = 49920 barStart = 49920
fis' 4 < b d' > < fis' a > _~ < e' a >  |
%% 15
                
% absTime = 53760 barStart = 53760
d' 4 b < d' a > _~ < a' a >  |
                
% absTime = 57600 barStart = 57600
g' 4 < d' b' > < a' cis' > _~ < g' cis' >  |
                
% absTime = 61440 barStart = 61440
< d' fis' > 4 d' < cis' e' > cis''  |
                
% absTime = 65280 barStart = 65280
< b' d'' > 4 fis'' < fis'' a'' > a'  |
                
% absTime = 69120 barStart = 69120
< g' b' > 4 g' < fis' a' > fis'  |
%% 20
                
% absTime = 72960 barStart = 72960
< b d' > 4 d'' < cis'' e' a' > -\startTrillSpan s4*0 \stopTrillSpan _~ < cis'' e' a' > 8 _~ [ < b' e' a' > 16 _~ < cis'' e' a' > ]  |
                
% absTime = 76800 barStart = 76800
< fis' d'' > 8 [ cis'' d'' d' ] cis' [ a' e' fis' ]  |
                
% absTime = 80640 barStart = 80640
d' 8 [ d'' cis'' b' ] cis'' [ fis'' a'' b'' ]  |
                
% absTime = 84480 barStart = 84480
g'' 8 [ fis'' e'' g'' ] fis'' [ e'' d'' cis'' ]  |
                
% absTime = 88320 barStart = 88320
b' 8 [ a' g' fis' ] e' [ g' fis' e' ]  |
%% 25
                
% absTime = 92160 barStart = 92160
d' 8 [ e' fis' g' ] a' [ e' a' g' ]  |
                
% absTime = 96000 barStart = 96000
fis' 8 [ b' a' g' ] a' [ g' fis' e' ]  |
                
% absTime = 99840 barStart = 99840
d' 8 [ b b' cis'' ] d'' [ cis'' b' a' ]  |
                
% absTime = 103680 barStart = 103680
g' 8 [ fis' e' b' ] a' [ b' a' g' ]  |
                
% absTime = 107520 barStart = 107520
< d' fis' > 4 < a' d'' fis'' > < a' cis'' e'' > 2  |
%% 30
                
% absTime = 111360 barStart = 111360
r4 < fis' b' d'' > < a' cis'' fis'' > 2  |
                
% absTime = 115200 barStart = 115200
< g'' b'' > 2 < fis'' a'' >  |
                
% absTime = 119040 barStart = 119040
< g'' b'' > 2 < a'' cis''' >  |
                
% absTime = 122880 barStart = 122880
< fis'' d''' > 4 < fis' d'' > < e' cis'' > 2  |
                
% absTime = 126720 barStart = 126720
r4 < d' b' > < fis' d'' > 2  |
%% 35
                
% absTime = 130560 barStart = 130560
< d'' b' > 2 _~ d'' 4 a' 8 _~ [ < d'' a' > ]  |
                
% absTime = 134400 barStart = 134400
< b' d'' > 4 _~ < b' g'' > < cis'' e'' > _~ < cis'' a'' >  |
                
% absTime = 138240 barStart = 138240
a'' 8 [ fis'' 16 g'' ] a'' 8 [ fis'' 16 g'' ] a'' [ a' b' cis'' ] d'' [ e'' fis'' g'' ]  |
                
% absTime = 142080 barStart = 142080
fis'' 8 [ d'' 16 e'' ] fis'' 8 [ fis' 16 g' ] a' [ b' a' g' ] a' [ fis' g' a' ]  |
                
% absTime = 145920 barStart = 145920
g' 8 [ b' 16 a' ] g' 8 [ fis' 16 e' ] fis' [ e' d' e' ] fis' [ g' a' b' ]  |
%% 40
                
% absTime = 149760 barStart = 149760
g' 8 [ b' 16 a' ] b' 8 [ cis'' 16 d'' ] a' [ b' cis'' d'' ] e'' [ fis'' g'' a'' ]  |
                
% absTime = 153600 barStart = 153600
fis'' 8 [ d'' 16 e'' ] fis'' 8 [ e'' 16 d'' ] e'' [ cis'' d'' e'' ] fis'' [ e'' d'' cis'' ]  |
                
% absTime = 157440 barStart = 157440
d'' 8 [ b' 16 cis'' ] d'' 8 [ d' 16 e' ] fis' [ g' fis' e' ] fis' [ d'' cis'' d'' ]  |
                
% absTime = 161280 barStart = 161280
b' 8 [ d'' 16 cis'' ] b' 8 [ a' 16 g' ] a' [ g' fis' g' ] a' [ b' cis'' d'' ]  |
                
% absTime = 165120 barStart = 165120
b' 8 [ d'' 16 cis'' ] d'' 8 [ cis'' 16 b' ] cis'' [ d'' e'' d'' ] cis'' [ d'' b' cis'' ]  |
%% 45
                
% absTime = 168960 barStart = 168960
< fis' a' d'' > 2 < e' a' cis'' >  |
                
% absTime = 172800 barStart = 172800
< d' fis' b' > 2 < cis' fis' a' >  |
                
% absTime = 176640 barStart = 176640
< b g d' > 2 < fis' cis' a' >  |
                
% absTime = 180480 barStart = 180480
< b d' > 2 < cis' e' >  |
                
% absTime = 184320 barStart = 184320
r4 < d' fis' a' > r < cis' e' a' >  |
%% 50
                
% absTime = 188160 barStart = 188160
r4 < b d' fis' > r < cis' fis' a' >  |
                
% absTime = 192000 barStart = 192000
r4 < b d' g' > r < a d' fis' >  |
                
% absTime = 195840 barStart = 195840
r4 < b d' g' > r < a' cis'' e'' >  |
                
% absTime = 199680 barStart = 199680
< a' fis'' > 8 [ fis' g' fis' < cis' e' > e'' fis'' e'' ]  |
                
% absTime = 203520 barStart = 203520
< b' d'' > 8 [ fis' d' b' < fis' a' > a g a ]  |
%% 55
                
% absTime = 207360 barStart = 207360
b 8 [ b' cis'' b' < fis' a' > a g a ]  |
                
% absTime = 211200 barStart = 211200
b 8 [ b' a' b' < e' cis'' > cis' b cis' ]  |
                
% absTime = 215040 barStart = 215040
d' 8 [ d'' e'' d'' ] cis'' [ cis' d' cis' ]  |
                
% absTime = 218880 barStart = 218880
b 8 [ b' a' b' ] cis'' [ cis' fis' e' ]  |
                
% absTime = 222720 barStart = 222720
d' 8 [ d'' e'' g'' ] fis'' [ fis' a' fis'' ]  |
%% 60
                
% absTime = 226560 barStart = 226560
d'' 8 [ g'' fis'' g'' ] e'' [ a' g' a' ]  |
                
% absTime = 230400 barStart = 230400
r8 [ < fis' d'' > e'' d'' ] < e' cis'' > [ cis' d' cis' ]  |
                
% absTime = 234240 barStart = 234240
d' 8 [ b' a' b' ] < a' cis'' > [ cis' fis' e' ]  |
                
% absTime = 238080 barStart = 238080
d' 8 [ d'' e'' g'' ] < d'' fis'' > [ fis' a' fis'' ]  |
                
% absTime = 241920 barStart = 241920
< b' d'' > 8 [ g'' fis'' g'' ] < cis'' e'' > [ a' g' a' ]  |
%% 65
                
% absTime = 245760 barStart = 245760
r8 [ < a' d'' fis'' > < a' d'' fis'' > < a' d'' fis'' > ] r [ < a' cis'' e'' > < a' cis'' e'' > < a' cis'' e'' > ]  |
                
% absTime = 249600 barStart = 249600
r8 [ < fis' b' d'' > < fis' b' d'' > < fis' b' d'' > ] r [ < cis'' fis'' a'' > < cis'' fis'' a'' > < cis'' fis'' a'' > ]  |
                
% absTime = 253440 barStart = 253440
r8 [ < d'' g'' b'' > < d'' g'' b'' > < d'' g'' b'' > ] r [ < d'' fis'' a'' > < d'' fis'' a'' > < d'' fis'' a'' > ]  |
                
% absTime = 257280 barStart = 257280
r8 [ < g'' b'' > < g'' b'' > < g'' b'' > ] < e'' cis''' > [ < a' cis'' > < g' cis'' > < a' cis'' > ]  |
                
% absTime = 261120 barStart = 261120
d'' 8 [ d' 16 e' ] fis' 8 [ d' cis' cis'' 16 d'' ] e'' 8 [ cis'' ]  |
%% 70
                
% absTime = 264960 barStart = 264960
b' 8 [ b 16 cis' ] d' 8 [ b cis' a' 16 g' ] fis' 8 [ e' ]  |
                
% absTime = 268800 barStart = 268800
d' 8 [ g' 16 fis' ] e' 8 [ g' fis' d' 16 e' ] fis' 8 [ a' ]  |
                
% absTime = 272640 barStart = 272640
g' 8 [ b' 16 a' ] g' 8 [ fis' e' a' 16 g' ] fis' 8 [ e' ]  |
                
% absTime = 276480 barStart = 276480
< d' fis' > 8 [ d'' 16 cis'' ] d'' 8 [ fis' < cis' a' > a' 16 b' ] cis'' 8 [ a' ]  |
                
% absTime = 280320 barStart = 280320
< d' fis' > 8 [ d'' 16 e'' ] fis'' 8 [ d'' < a' fis'' > fis'' 16 e'' ] d'' 8 [ cis'' ]  |
%% 75
                
% absTime = 284160 barStart = 284160
d'' 8 [ < d' b' > 16 a' ] < g' b' > 8 [ < e' cis'' > < fis' d'' > fis'' 16 e'' ] d'' 8 [ < a' fis'' > ]  |
                
% absTime = 288000 barStart = 288000
< b' g'' > 8 [ d'' 16 cis'' ] b' 8 [ b' < e' a' > < cis' e' > ] < cis' a' > [ < cis' a' > ]  |
                
% absTime = 291840 barStart = 291840
< d' fis' a' > 2 r4 < cis' e' a' >  |
                
% absTime = 295680 barStart = 295680
< fis b d' > 2 r4 < cis' fis' a' >  |
                
% absTime = 299520 barStart = 299520
< b d' g' > 2 < d' fis' a' >  |
%% 80
                
% absTime = 303360 barStart = 303360
< b d' g' > 4 < b d' > < e a cis' > -\startTrillSpan s4*0 \stopTrillSpan _~ < e a cis' > 8 _~ [ < e a b > 16 _~ < e a cis' > ]  |
                
% absTime = 307200 barStart = 307200
< fis a d' > 4 < fis' a' d'' > < e' a' cis'' > 2  |
                
% absTime = 311040 barStart = 311040
< d' fis' b' > 2 < cis' fis' a' >  |
                
% absTime = 314880 barStart = 314880
< b d' > 4. _~ < b e' > 8 < a d' fis' > 2  |
                
% absTime = 318720 barStart = 318720
< d' g' b' > 2 < a cis' e' > 4. _~ < a cis' e' > 8  |
%% 85
                
% absTime = 322560 barStart = 322560
< a d' fis' > 4. < d'' fis'' > 8 [ < cis'' fis'' > _~ < cis'' g'' > _~ < cis'' fis'' > _~ ] < cis'' fis'' >  |
                
% absTime = 326400 barStart = 326400
< b' d'' > 4. _~ < b' d'' > 8 [ < a' d'' > _~ < a' e'' > _~ < a' d'' > _~ ] < a' cis'' >  |
                
% absTime = 330240 barStart = 330240
< g' b' > 2 < fis' d'' >  |
                
% absTime = 334080 barStart = 334080
< g' d'' > 8 _~ [ < g' c'' > < d' b' > _~ < d' c'' > ] < d' e' a' > 4 _~ < cis' e' a' > 8 _~ [ < cis' e' a' > ]  |
                
% absTime = 337920 barStart = 337920
< d' fis' a' > 4. < fis'' a'' > 8 [ < a'' fis'' cis'' > _~ < g'' b'' cis'' > _~ < fis'' a'' cis'' > _~ ] < e'' g'' cis'' >  |
%% 90
                
% absTime = 341760 barStart = 341760
< d'' fis'' b' > 4. _~ < fis'' d'' b' > 8 [ < fis'' d'' a' > _~ < g'' e'' a' > _~ < fis'' d'' a' > _~ ] < e'' cis'' a' >  |
                
% absTime = 345600 barStart = 345600
< d'' b' > 8 [ c'' b' c'' ] < a' fis' > 4. _~ < a' fis' > 8  |
                
% absTime = 349440 barStart = 349440
< g' b' > 4 d'' < a' cis'' > 4. < g' cis'' > 8  |
                
% absTime = 353280 barStart = 353280
< fis' a' d'' > 4 _~ < fis' a' d'' > _~ < e' a' d'' > _~ < e' a' cis'' > _~  |
                
% absTime = 357120 barStart = 357120
< d' fis' cis'' > 4 _~ < d' fis' b' > _~ < cis' fis' b' > _~ < cis' fis' a' > _~  |
%% 95
                
% absTime = 360960 barStart = 360960
< b d' a' > 4 _~ < b d' g' > _~ < a d' g' > _~ < a d' fis' > _~  |
                
% absTime = 364800 barStart = 364800
< b d' fis' > 4. _~ < b d' e' > 8 < a cis' e' > 2  |
                
% absTime = 368640 barStart = 368640
< d' fis' > 4 < d'' fis'' > _~ < fis'' a' cis'' > _~ < a' cis'' e'' >  |
                
% absTime = 372480 barStart = 372480
< fis' b' d'' > 4 < d'' b'' d''' > _~ < d''' fis'' a'' > _~ < fis'' a'' c''' >  |
                
% absTime = 376320 barStart = 376320
< d'' g'' b'' > 2 < fis'' d''' > 4 _~ < fis'' a'' >  |
%% 100
                
% absTime = 380160 barStart = 380160
< d'' b'' > 2 < cis'' a'' > 4 _~ < cis'' g'' >  |
                
% absTime = 384000 barStart = 384000
< d'' fis'' > 4 < d' fis' > < cis' e' > < e'' cis'' a' > 8 _~ [ < e'' cis'' g' > ]  |
                
% absTime = 387840 barStart = 387840
< fis' b' d'' > 4 < b d' > < a cis' > < a' cis'' fis' > 8 _~ [ < a' cis'' e' > ]  |
                
% absTime = 391680 barStart = 391680
< d' g' b' > 4 < d'' g'' b'' > < d'' fis'' a'' > < d' fis' a' >  |
                
% absTime = 395520 barStart = 395520
< b d' g' > 4. < g' b' e'' > 8 < cis' fis' a' > 4 < cis' e' a' >  |
%% 105
                
% absTime = 399360 barStart = 399360
< d' fis' a' > 2 r  |
                \bar "|."
            } % Voice
        >> % Staff ends

        \context Staff = "track 2" << 
            \set Staff.instrumentName = \markup { \column { "Main gauche " } }
            \set Score.skipBars = ##t
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo

            \context Voice = "voice 2" {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1

                \time 2/2
                
% absTime = 0 barStart = 0
\clef "bass"
                \key d \major
                d 2 _1 a, _3  |
                
% absTime = 3840 barStart = 3840
b, 2 _1 fis, _3  |
                
% absTime = 7680 barStart = 7680
g, 2 _2 d, _5  |
                
% absTime = 11520 barStart = 11520
g, 2 _3 a, _2  |
%% 5
                
% absTime = 15360 barStart = 15360
d 2 a,  |
                
% absTime = 19200 barStart = 19200
b, 2 fis,  |
                
% absTime = 23040 barStart = 23040
g, 2 d,  |
                
% absTime = 26880 barStart = 26880
g, 2 a,  |
                
% absTime = 30720 barStart = 30720
d 2 a,  |
%% 10
                
% absTime = 34560 barStart = 34560
b, 2 fis,  |
                
% absTime = 38400 barStart = 38400
g, 2 d,  |
                
% absTime = 42240 barStart = 42240
g, 2 a,  |
                
% absTime = 46080 barStart = 46080
d 2 a,  |
                
% absTime = 49920 barStart = 49920
b, 2 fis,  |
%% 15
                
% absTime = 53760 barStart = 53760
g, 2 d,  |
                
% absTime = 57600 barStart = 57600
g, 2 a,  |
                
% absTime = 61440 barStart = 61440
d 2 a,  |
                
% absTime = 65280 barStart = 65280
b, 2 fis,  |
                
% absTime = 69120 barStart = 69120
g, 2 d,  |
%% 20
                
% absTime = 72960 barStart = 72960
g, 2 a,  |
                
% absTime = 76800 barStart = 76800
d 2 a,  |
                
% absTime = 80640 barStart = 80640
b, 2 fis,  |
                
% absTime = 84480 barStart = 84480
g, 2 d,  |
                
% absTime = 88320 barStart = 88320
g, 2 a,  |
%% 25
                
% absTime = 92160 barStart = 92160
d 2 a,  |
                
% absTime = 96000 barStart = 96000
b, 2 fis,  |
                
% absTime = 99840 barStart = 99840
g, 2 d,  |
                
% absTime = 103680 barStart = 103680
g, 2 a,  |
                
% absTime = 107520 barStart = 107520
d 2 a,  |
%% 30
                
% absTime = 111360 barStart = 111360
b, 2 fis,  |
                
% absTime = 115200 barStart = 115200
g, 2 d,  |
                
% absTime = 119040 barStart = 119040
g, 2 a,  |
                
% absTime = 122880 barStart = 122880
d 2 a,  |
                
% absTime = 126720 barStart = 126720
b, 2 fis,  |
%% 35
                
% absTime = 130560 barStart = 130560
g, 2 d,  |
                
% absTime = 134400 barStart = 134400
g, 2 a,  |
                
% absTime = 138240 barStart = 138240
d 2 a,  |
                
% absTime = 142080 barStart = 142080
b, 2 fis,  |
                
% absTime = 145920 barStart = 145920
g, 2 d,  |
%% 40
                
% absTime = 149760 barStart = 149760
g, 2 a,  |
                
% absTime = 153600 barStart = 153600
d 2 a,  |
                
% absTime = 157440 barStart = 157440
b, 2 fis,  |
                
% absTime = 161280 barStart = 161280
g, 2 d,  |
                
% absTime = 165120 barStart = 165120
g, 2 a,  |
%% 45
                
% absTime = 168960 barStart = 168960
d 2 a,  |
                
% absTime = 172800 barStart = 172800
b, 2 fis,  |
                
% absTime = 176640 barStart = 176640
g, 2 d,  |
                
% absTime = 180480 barStart = 180480
g, 2 a,  |
                
% absTime = 184320 barStart = 184320
d 2 a,  |
%% 50
                
% absTime = 188160 barStart = 188160
b, 2 fis,  |
                
% absTime = 192000 barStart = 192000
g, 2 d,  |
                
% absTime = 195840 barStart = 195840
g, 2 a,  |
                
% absTime = 199680 barStart = 199680
d 2 a,  |
                
% absTime = 203520 barStart = 203520
b, 2 fis,  |
%% 55
                
% absTime = 207360 barStart = 207360
g, 2 d,  |
                
% absTime = 211200 barStart = 211200
g, 2 a,  |
                
% absTime = 215040 barStart = 215040
d 2 a,  |
                
% absTime = 218880 barStart = 218880
b, 2 fis,  |
                
% absTime = 222720 barStart = 222720
g, 2 d,  |
%% 60
                
% absTime = 226560 barStart = 226560
g, 2 a,  |
                
% absTime = 230400 barStart = 230400
d 2 a,  |
                
% absTime = 234240 barStart = 234240
b, 2 fis,  |
                
% absTime = 238080 barStart = 238080
g, 2 d,  |
                
% absTime = 241920 barStart = 241920
g, 2 a,  |
%% 65
                
% absTime = 245760 barStart = 245760
d 2 a,  |
                
% absTime = 249600 barStart = 249600
b, 2 fis,  |
                
% absTime = 253440 barStart = 253440
g, 2 d,  |
                
% absTime = 257280 barStart = 257280
g, 2 a,  |
                
% absTime = 261120 barStart = 261120
d 2 a,  |
%% 70
                
% absTime = 264960 barStart = 264960
b, 2 fis,  |
                
% absTime = 268800 barStart = 268800
g, 2 d,  |
                
% absTime = 272640 barStart = 272640
g, 2 a,  |
                
% absTime = 276480 barStart = 276480
d 2 a,  |
                
% absTime = 280320 barStart = 280320
b, 2 fis,  |
%% 75
                
% absTime = 284160 barStart = 284160
g, 2 d,  |
                
% absTime = 288000 barStart = 288000
g, 2 a,  |
                
% absTime = 291840 barStart = 291840
d 2 a,  |
                
% absTime = 295680 barStart = 295680
b, 2 fis,  |
                
% absTime = 299520 barStart = 299520
g, 2 d,  |
%% 80
                
% absTime = 303360 barStart = 303360
g, 2 a,  |
                
% absTime = 307200 barStart = 307200
d 2 a,  |
                
% absTime = 311040 barStart = 311040
b, 2 fis,  |
                
% absTime = 314880 barStart = 314880
g, 2 d,  |
                
% absTime = 318720 barStart = 318720
g, 2 a,  |
%% 85
                
% absTime = 322560 barStart = 322560
d 2 a,  |
                
% absTime = 326400 barStart = 326400
b, 2 fis,  |
                
% absTime = 330240 barStart = 330240
g, 2 d,  |
                
% absTime = 334080 barStart = 334080
g, 2 a,  |
                
% absTime = 337920 barStart = 337920
d 2 a,  |
%% 90
                
% absTime = 341760 barStart = 341760
b, 2 fis,  |
                
% absTime = 345600 barStart = 345600
g, 2 d,  |
                
% absTime = 349440 barStart = 349440
g, 2 a,  |
                
% absTime = 353280 barStart = 353280
d 2 a,  |
                
% absTime = 357120 barStart = 357120
b, 2 fis,  |
%% 95
                
% absTime = 360960 barStart = 360960
g, 2 d,  |
                
% absTime = 364800 barStart = 364800
g, 2 a,  |
                
% absTime = 368640 barStart = 368640
d 2 a,  |
                
% absTime = 372480 barStart = 372480
b, 2 fis,  |
                
% absTime = 376320 barStart = 376320
g, 2 d,  |
%% 100
                
% absTime = 380160 barStart = 380160
g, 2 a,  |
                
% absTime = 384000 barStart = 384000
d 2 a,  |
                
% absTime = 387840 barStart = 387840
b, 2 fis,  |
                
% absTime = 391680 barStart = 391680
g, 2 d,  |
                
% absTime = 395520 barStart = 395520
g, 2 a,  |
%% 105
                
% absTime = 399360 barStart = 399360
< d, d > 2 r  |
                \bar "|."
            } % Voice
        >> % Staff (final) ends

    >> % notes

    \layout {
        \context { \GrandStaff \accepts "Lyrics" }
    }
} % score
