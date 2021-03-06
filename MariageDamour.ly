\version "2.16.2"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    composer = "Musique: Paul de Senneville"
    copyright = "retranscrit par Christian FOUCHER"
    title = "Mariage D'Amour"
    tagline = ""
}
#(set-global-staff-size 19)
#(set-default-paper-size "a4")
global = { 
    \time 4/4
    \skip 1*2  %% 1-2
    % \time 3/4
    \skip 4*3  %% 3-3
    % \time 4/4
    \skip 4 \skip 2 \skip 4  %% 4-4
    % \time 3/4
    \skip 2.*37  %% 5-41
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4 = 76  \skip 2.*6 
    \tempo 4 = 162  \skip 2.*36 
}
\score {
<< % common
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0

        \new PianoStaff << 
          \set PianoStaff.midiInstrument = #"bright acoustic"

          
            \new Staff = up {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1

                \once \override Staff.TimeSignature #'style = #'() \time 4/4
                
% absTime = 0 barStart = 0
\clef "treble"
                \key bes \major
                \tempo "Moderato" 4 = 76
                \set Score.markFormatter = #format-mark-box-letters
                r2 r4 r8. g'' 16  | \bar "||" \mark \markup { \musicglyph #"scripts.segno" }
                
% absTime = 3840 barStart = 3840
g'' 16 a'' a'' bes'' bes'' a'' a'' g'' g'' d'' d'' bes' bes' g' g' f''  | \bar "||"
                \once \override Staff.TimeSignature #'style = #'() \time 3/4
                
% absTime = 7680 barStart = 7680
f'' 16 ees'' ees'' d'' ees'' f'' ees'' 4.  | \bar "||"
                \time 4/4
                
% absTime = 10560 barStart = 10560
r16 ees'' ees'' f'' f'' g'' g'' a'' a'' f'' f'' c'' c'' ees'' ees'' d''  | \bar "||"
%% 5
                \once \override Staff.TimeSignature #'style = #'() \time 3/4
                
% absTime = 14400 barStart = 14400
d'' 16 c'' d'' ees'' d'' 2  | \bar "||" \mark \default

\tempo "Plus rapide" 2. = 54
                
% absTime = 17280 barStart = 17280
d'' 4 g' 8 [ bes' ] d'' [ c'' ]  |
                
% absTime = 20160 barStart = 20160
d'' 4 g' 8 [ bes' ] d'' [ c'' ]  |
                
% absTime = 23040 barStart = 23040
d'' 4 g' 8 [ bes' ] ees'' [ d'' ]  |
                
% absTime = 25920 barStart = 25920
ees'' 4 g' 8 [ bes' ] ees'' [ d'' ]  |
%% 10
                
% absTime = 28800 barStart = 28800
ees'' 4 ees'' 8 [ d'' ] ees'' [ e'' ]  |
                
% absTime = 31680 barStart = 31680
f'' 4 f'' 8 [ g'' f'' g'' ]  |
                
% absTime = 34560 barStart = 34560
d'' 2.  |
                
% absTime = 37440 barStart = 37440
d'' 4 g' 8 [ bes' d'' c'' ]  |
                
% absTime = 40320 barStart = 40320
d'' 4 g' 8 [ bes' d'' c'' ]  |
%% 15
                
% absTime = 43200 barStart = 43200
d'' 4 g' 8 [ bes' ees'' d'' ]  |
                
% absTime = 46080 barStart = 46080
ees'' 4 g' 8 [ bes' ] ees'' [ d'' ]  |
                
% absTime = 48960 barStart = 48960
ees'' 4 ees'' 8 [ d'' ees'' e'' ]  |
                
% absTime = 51840 barStart = 51840
f'' 4 f'' 8 [ g'' f'' g'' ]  |
                
% absTime = 54720 barStart = 54720
d'' 2. ^\markup \fontsize #-2 {"2ème fois lettre B"} | \bar "||"
%% 20
                
% absTime = 57600 barStart = 57600
bes'' 4. d'' 8 [ d'' ] ees''  |
                
% absTime = 60480 barStart = 60480
ees'' 4. c'' 8 [ a'' ] g''  |
                
% absTime = 63360 barStart = 63360
a'' 4. c'' 8 [ c'' ] d''  |
                
% absTime = 66240 barStart = 66240
d'' 4 bes' 8 [ bes' g'' f'' ]  |
                
% absTime = 69120 barStart = 69120
g'' 4. bes' 8 [ bes' ] c''  |
%% 25
                
% absTime = 72000 barStart = 72000
c'' 4. a' 8 [ d'' ] c''  |
                
% absTime = 74880 barStart = 74880
d'' 2.  | \bar "|:"
\mark \default
                
% absTime = 77760 barStart = 77760
bes'' 4. ^\markup \fontsize #-2 { "reprises avec oct. sup." } bes'' 8 [ bes'' ] c'''  |
                
% absTime = 80640 barStart = 80640
c''' 4. bes'' 8 [ a'' ] g''  |
                
% absTime = 83520 barStart = 83520
f'' 4. f'' 8 [ g'' ] f''  |
%% 30
                
% absTime = 86400 barStart = 86400
d'' 2.  |
                
% absTime = 89280 barStart = 89280
bes'' 4 _\markup \fontsize #-2 {"7ème fois rall."} bes'' 8 [ bes'' bes'' c''' ]  |
                
% absTime = 92160 barStart = 92160
c''' 4. bes'' 8 [ a'' ] g''  |
                
% absTime = 95040 barStart = 95040
f'' 4. f'' 8 [ g'' ] f''  | \bar "||"
                
% absTime = 97920 barStart = 97920
\set Score.repeatCommands = #'((volta "1.3.5.6.") end-repeat)
g'' 2. ^\markup {\hspace #8 \markletter #1 } |
\bar ":|"
%% 35
                
% absTime = 100800 barStart = 100800
\set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
g'' 2. _~  |
                
% absTime = 103680 barStart = 103680
g'' 2. ^\markup {\hspace #8 \markletter #0 } |
\bar ":|"
                
% absTime = 106560 barStart = 106560
\set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
g'' 2. _~  |
                
% absTime = 109440 barStart = 109440
g'' 2 g''8.\rest g'' 16 ^\markup { \musicglyph #"scripts.segno" }  |
\bar ":|"
                
% absTime = 112320 barStart = 112320
\set Score.repeatCommands = #'((volta #f) (volta "7.") end-repeat)
g'' 2. _~  |
%% 40
                
% absTime = 115200 barStart = 115200
g'' 2.  |
                
% absTime = 118080 barStart = 118080
< bes'' g''' > 2. |
                \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  \mark \markup \fontsize #-2 {"FIN"}

\set Score.repeatCommands = #'((volta #f))
            } % Voice

            \new Staff = down { 
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1

                \once \override Staff.TimeSignature #'style = #'() \time 4/4
                
% absTime = 0 barStart = 0
\clef "bass"
                \key bes \major
                g, 8 _\markup { "Gm" } [ d bes d ] bes [ d bes d ]  |
                
% absTime = 3840 barStart = 3840
g, 8 [ d ] bes [ d ] bes [ d ] bes [ g, ]  | \bar "||"
                \once \override Staff.TimeSignature #'style = #'() \time 3/4
                
% absTime = 7680 barStart = 7680
c 8 _\markup { "Cm" } [ g ] ees' [ g ] ees' [ g ]  |
                \time 4/4
                
% absTime = 10560 barStart = 10560
f, 8 _\markup { "F7" } [ c] a [ees ] a [ c] a [f, ]  |
%% 5
                \once \override Staff.TimeSignature #'style = #'() \time 3/4
                
% absTime = 14400 barStart = 14400
bes, 8 _\markup { "Bb" } [ f ] < d c' fis > 2 _\markup { "D7" }  |
                
% absTime = 17280 barStart = 17280
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 20160 barStart = 20160
g, 4 d bes  |
                
% absTime = 23040 barStart = 23040
g, 4 d bes  |
                
% absTime = 25920 barStart = 25920
c 4 _\markup { "Cm" } g ees'  |
%% 10
                
% absTime = 28800 barStart = 28800
c 4 g ees'  |
                
% absTime = 31680 barStart = 31680
f, 4 _\markup { "F7" } ees < a f >  |
                
% absTime = 34560 barStart = 34560
bes, 4 _\markup { "Bb" } < f bes > a, _\markup { "D" }  |
                
% absTime = 37440 barStart = 37440
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 40320 barStart = 40320
g, 4 d bes  |
%% 15
                
% absTime = 43200 barStart = 43200
g, 4 d bes  |
                
% absTime = 46080 barStart = 46080
c 4 _\markup { "Cm" } g ees'  |
                
% absTime = 48960 barStart = 48960
c 4 g ees'  |
                
% absTime = 51840 barStart = 51840
f, 4 _\markup { "F7" } ees < a f >  |
                
% absTime = 54720 barStart = 54720
bes, 4 _\markup { "Bb" } f a, _\markup { "D" }  |
%% 20
                
% absTime = 57600 barStart = 57600
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 60480 barStart = 60480
c 4 _\markup { "Cm" } g ees'  |
                
% absTime = 63360 barStart = 63360
f, 4 _\markup { "F7" } < ees a > f  |
                
% absTime = 66240 barStart = 66240
bes, 4 _\markup { "Bb" } f a,  |
                
% absTime = 69120 barStart = 69120
g, 4 _\markup { "Gm" } d bes  |
%% 25
                
% absTime = 72000 barStart = 72000
a, 4 _\markup { "Cm6" } ees g  |
                
% absTime = 74880 barStart = 74880
d 4 _\markup { "D" } a fis'  |
                
% absTime = 77760 barStart = 77760
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 80640 barStart = 80640
c 4 _\markup { "Cm7" } g ees'  |
                
% absTime = 83520 barStart = 83520
f, 4 _\markup { "F7" } c < a ees >  |
%% 30
                
% absTime = 86400 barStart = 86400
bes, 4 _\markup { "Bb" } f a, _\markup { "D" }  |
                
% absTime = 89280 barStart = 89280
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 92160 barStart = 92160
c 4 _\markup { "Cm" } g ees'  |
                
% absTime = 95040 barStart = 95040
f, 4 _\markup { "F" } c a  |
                
% absTime = 97920 barStart = 97920
g, 4 _\markup { "Gm" } d bes  |
%% 35
                
% absTime = 100800 barStart = 100800
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 103680 barStart = 103680
\change Staff = "up"
d' 4 g' bes'  |
                
% absTime = 106560 barStart = 106560
\change Staff = "down"
g, 4 _\markup { "Gm" } d bes  |
                
% absTime = 109440 barStart = 109440
\change Staff = "up"
d' 4 g' bes'  |
                
% absTime = 112320 barStart = 112320
\change Staff = "down"
g, 4 _\markup { "Gm" } d g  |
%% 40
                
% absTime = 115200 barStart = 115200
< bes d' > 2. ^( _~ 
                % avertissement: une mesure anormalement longue a été tronquée |
                
% absTime = 118080 barStart = 118080
< bes d' > 2. )  |
                \bar "|."
            } % Voice
        >> % Staff (final) ends

    >> % notes

    \layout { }
    
    \midi { }
    
} % score
