\version "2.16.2"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    arranger = "Arrangement Hans-Günter Heurmann"
    composer = "Johann Pachelbel (1653-1706)"
    copyright = "Retranscrit par C. FOUCHER"
    subtitle = "sur une base obstinée"
    title = "CANON"
    tagline = ""
}
#(set-global-staff-size 24)
#(set-default-paper-size "a4")
global = { 
    \time 2/2
    \skip 1*105  %% 1-105
    \key d \major
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 2 = 40  \skip 1*105 
}
\score {
<< % common
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0

        \new PianoStaff << 
          \set PianoStaff.instrumentName = #"Piano"
          \set PianoStaff.midiInstrument = #"bright acoustic"
          
            \new Staff = main {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1
                \tempo "Andantino" 2 = 40
                
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
fis'' 2 ^3_\markup { \italic "espressivo" }
 e''  |
                
% absTime = 19200 barStart = 19200
d'' 2 ^1 cis'' ^2  |
                
% absTime = 23040 barStart = 23040
b' 2 a' ^2  |
                
% absTime = 26880 barStart = 26880
b' 2 ^1 cis''  |
                
% absTime = 30720 barStart = 30720
< d'' fis'' > 2 ^3^5 < cis'' e'' >  |
%% 10
                
% absTime = 34560 barStart = 34560
< b' d'' > 2 < a' cis'' > ^2^4  |
                
% absTime = 38400 barStart = 38400
< g' b' > 2 < fis' a' > ^2^3  |
                
% absTime = 42240 barStart = 42240
< g' b' > 2 ^1^4 < e' cis'' > ^1^5  |
                
% absTime = 46080 barStart = 46080
  << { \voiceOne
       s4 fis' 4 ^3 a' 4 ^5 g' 4
     }
     \new Voice
     { \voiceTwo
       d' 2 _1 \mp cis' 2 _2
     }
  >> \oneVoice |

                
% absTime = 49920 barStart = 49920
fis' 4 ^3 < b d' > ^1^2
  << { \voiceOne
       fis' 4 ^5 e' 4 ^4
     }
     \new Voice
     { \voiceTwo
       a 2 _1
     }
  >> \oneVoice |

%% 15
                
% absTime = 53760 barStart = 53760
d' 4 ^3 b 4 ^2 
  << { \voiceOne
       d' 4 ^3 a'
     }
     \new Voice
     { \voiceTwo
       a 2 _1
     }
  >> \oneVoice |
                
% absTime = 57600 barStart = 57600
g' 4 ^3 < d' b' > ^1
  << { \voiceOne
       a' 4 ^5 g' 4
     }
     \new Voice
     { \voiceTwo
       cis' 2 _2
     }
  >> \oneVoice |
                
% absTime = 61440 barStart = 61440
< d' fis' > 4 ^1^3 d' < cis' e' > ^1^2 cis'' ^5  |
                
% absTime = 65280 barStart = 65280
< b' d'' > 4 ^1^2 fis'' ^4 < fis'' a'' > ^3^5 a'  |
                
% absTime = 69120 barStart = 69120
< g' b' > 4 ^2^4 g' ^1 < fis' a' > ^2^4 fis' ^3  |
%% 20
                
% absTime = 72960 barStart = 72960
< b d' > 4 ^1^2 d''
  << { \voiceOne
       cis'' 4 ^4 ~ -\startTrillSpan cis'' 8 \stopTrillSpan b' 16 cis''
     }
     \new Voice
     { \voiceTwo
       < a' e' > 2 _2_1
     }
      \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "Key_engraver"
      alignAboveContext = #"main"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      firstClef = ##f
    }
    <<{ d'' 16 ^5 [ cis'' d'' cis'']  d'' cis'' b' cis'' } \\
      { <e' a'> 2 _2_1}>>
  >> \oneVoice |
  
       
% absTime = 76800 barStart = 76800
< fis' d'' > 8 ^2^5 \mf cis'' d'' d' ^1 cis' ^2 a' e' ^2 fis'  |
                
% absTime = 80640 barStart = 80640
d' 8 ^1 d'' ^5 cis'' ^3 b' ^1 cis'' ^2 fis'' ^3 a'' ^4 b'' ^5  |
                
% absTime = 84480 barStart = 84480
g'' 8 ^4 fis'' e'' g'' ^4 fis'' ^3 e'' d'' cis'' ^4  |
                
% absTime = 88320 barStart = 88320
b' 8 ^3 a' g' ^1 fis' ^3 e' g' ^4 fis' e'  |
%% 25
                
% absTime = 92160 barStart = 92160
d' 8 ^1 e' fis' g' a' ^5 e' ^1 a' ^4 g' ^3  |
                
% absTime = 96000 barStart = 96000
fis' 8 ^2 b' a' g' a' ^4 g' fis' e'  |
                
% absTime = 99840 barStart = 99840
d' 8 ^2 b ^1 b' ^3 cis'' d'' cis'' b' a' ^1  |
                
% absTime = 103680 barStart = 103680
g' 8 ^3 fis' e' ^1 b' ^5 a' ^4 b' ^5 a' g'  |
                
% absTime = 107520 barStart = 107520
< d' fis' > 4 ^1^2 < a' d'' fis'' > ^1^3^5 < a' cis'' e'' > 2 ^1^2^4  |
%% 30
                
% absTime = 111360 barStart = 111360
r4 < fis' b' d'' > < a' cis'' fis'' > 2  |
                
% absTime = 115200 barStart = 115200
< g'' b'' > 2 ^2^4 < fis'' a'' > ^1^2  |
                
% absTime = 119040 barStart = 119040
< g'' b'' > 2 ^2^4 < a'' cis''' > ^3^5  |
                
% absTime = 122880 barStart = 122880
< fis'' d''' > 4 ^1^5 < fis' d'' > ^2^5 < e' cis'' > 2 ^1^4  |
                
% absTime = 126720 barStart = 126720
r4 < d' b' > ^1^4 < fis' d'' > 2 ^2^5  |
%% 35
                
% absTime = 130560 barStart = 130560
  << { \voiceOne
       d'' 2. ^4 d'' 4 ^3
     }
     \new Voice
     { \voiceTwo
       b' 2 _2 a'
     }
  >> \oneVoice |
                
% absTime = 134400 barStart = 134400
  << { \voiceOne
       d'' 4 ^2 g'' e'' ^3 a''
     }
     \new Voice
     { \voiceTwo
       b' 2 _1 cis'' _2
     }
  >> \oneVoice |
                
% absTime = 138240 barStart = 138240
a'' 8 ^5 [ fis'' 16 ^2 g'' ^3 ] a'' 8 ^5 [ fis'' 16 g''] a'' ^5 [ a' ^1 b' cis'' ] d'' ^1 [ e'' fis'' g'' ]  |
                
% absTime = 142080 barStart = 142080
fis'' 8 ^3 [ d'' 16 e'' ] fis'' 8 [ fis' 16 ^2 g' ] a' [ b' a' g' ] a' [fis' g' a' ] |
                
% absTime = 145920 barStart = 145920
g' 8 ^3 [ b' 16 a' ] g' 8 [fis' 16 ^3 e' ^2 ] fis' ^3 [ e' ^2 d' ^1 e' ] fis' [ g' ^1 a' b' ]  |
%% 40
                
% absTime = 149760 barStart = 149760
g' 8 ^1 [ b' 16 a'] b' 8 [cis'' 16 ^3 d'' ^4] a' ^1 [ b' cis'' d'' ^1 ] e'' [ fis'' g'' a'' ] |
                
% absTime = 153600 barStart = 153600
fis'' 8 ^3 [ d'' 16 e'' ] fis'' 8 [e'' 16 ^2 d'' ^1] e'' ^3 [ cis'' ^2 d'' ^1 e'' ^3 ] fis'' ^4 [ e'' ^3 d'' ^1 cis'' ^2 ] |
                
% absTime = 157440 barStart = 157440
d'' 8 ^3 [ b' 16 cis'' ] d'' 8 [d' 16 ^1  e' ] fis' [ g' fis' e' ] fis' ^1 [ d'' ^5 cis'' ^4 d'' ^5 ] |
                
% absTime = 161280 barStart = 161280
b' 8 ^3 [ d'' 16 cis'' ] b' 8 [ a' 16 ^3  g' ^1 ] a' ^4 [ g' fis' g' ^1 ] a' [ b' cis'' d'' ]  |
                
% absTime = 165120 barStart = 165120
b' 8 ^2 [ d'' 16 cis'' ] d'' 8 [cis'' 16 b'] cis'' ^3 [ d'' e'' d'' ] cis'' [ d'' b' cis'' ^4 ] |
%% 45
                
% absTime = 168960 barStart = 168960
< fis' a' d'' > 2 ^1^2^5 < e' a' cis'' >  |
                
% absTime = 172800 barStart = 172800
< d' fis' b' > 2 < cis' fis' a' >  |
                
% absTime = 176640 barStart = 176640
< b g d' > 2 < fis a d' >  |
                
% absTime = 180480 barStart = 180480
< b d' > 2 < cis' e' >  |
                
% absTime = 184320 barStart = 184320
r4 < d' fis' a' > ^1^3^5 r < cis' e' a' >  |
%% 50
                
% absTime = 188160 barStart = 188160
r4 < b d' fis' > ^1^2^4 r < cis' fis' a' > ^1^3^5  |
                
% absTime = 192000 barStart = 192000
r4 < b d' g' > ^1^2^5 r < a d' fis' > ^1^3^5  |
                
% absTime = 195840 barStart = 195840
r4 < b d' g' > r < a' cis'' e'' >  |
                
% absTime = 199680 barStart = 199680
< a' fis'' > 8 ^1^5 fis' ^3 g' fis' < cis' e' > ^1^2 e'' ^5 fis'' ^4 e'' ^3  |
                
% absTime = 203520 barStart = 203520
< b' d'' > 8 ^1^2 fis' ^2 d' b' ^5 < fis' a' > ^2^4 a ^1 g ^2 a ^3  |
%% 55
                
% absTime = 207360 barStart = 207360
b 8 ^1 b' ^5 cis'' ^4 b' ^3  < fis' a' > ^1^2 a ^1 g ^2 a ^3  |
                
% absTime = 211200 barStart = 211200
b 8 ^1  b' ^5 a' ^3 b' ^4 < e' cis'' > ^1^5 cis' ^2 b cis'  |
                
% absTime = 215040 barStart = 215040
d' 8 ^1 d'' ^4 e'' d''  cis'' ^3  cis' ^1 d' ^3 cis' ^2  |
                
% absTime = 218880 barStart = 218880
b 8 b' ^5 a' ^3 b' cis'' ^5 cis' ^1 fis' ^3 e'  |
                
% absTime = 222720 barStart = 222720
d' 8 ^1 d'' ^5 e'' g'' fis'' ^4 fis' a' fis'' ^5  |
%% 60
                
% absTime = 226560 barStart = 226560
d'' 8 g'' fis'' g'' e'' a' g' a'  |
                
% absTime = 230400 barStart = 230400
r8 < fis' d'' > ^1^4 e'' d'' < e' cis'' > ^1^3 cis' ^2 d' ^3 cis'  |
                
% absTime = 234240 barStart = 234240
d' 8 ^1  b' ^5 a' ^3 b'  < a' cis'' > ^3^5 cis' fis' e'   |
                
% absTime = 238080 barStart = 238080
d' 8 d'' e'' g'' < d'' fis'' > ^2^4  fis' a' fis''  |
                
% absTime = 241920 barStart = 241920
< b' d'' > 8 ^1^2 g'' fis'' g'' < cis'' e'' > ^2^3 a' ^1 g' ^2 a' ^3  |
%% 65
                
% absTime = 245760 barStart = 245760
r8 < a' d'' fis'' > ^1^3^5 < a' d'' fis'' > < a' d'' fis'' > r < a' cis'' e'' > < a' cis'' e'' > < a' cis'' e'' >  |
                
% absTime = 249600 barStart = 249600
r8 < fis' b' d'' > < fis' b' d'' > < fis' b' d'' > r < cis'' fis'' a'' > < cis'' fis'' a'' > < cis'' fis'' a'' >  |
                
% absTime = 253440 barStart = 253440
r8 < d'' g'' b'' > < d'' g'' b'' > < d'' g'' b'' > r < d'' fis'' a'' > < d'' fis'' a'' > < d'' fis'' a'' >  |
                
% absTime = 257280 barStart = 257280
r8 < g'' b'' > ^2^4 < g'' b'' > < g'' b'' > < e'' cis''' > ^1^5 < a' cis'' > ^2^4 < g' cis'' > ^1^4 < a' cis'' >  |
                
% absTime = 261120 barStart = 261120
d'' 8 ^5 d' 16 ( e' fis' 8 ) d' cis' ^2 cis'' 16 ^3 (d'' e'' 8) cis''  |
%% 70
                
% absTime = 264960 barStart = 264960
b' 8 b 16 ^1 (cis' d' 8) b cis' ^2 a' 16 (g' fis' 8) e'  |
                
% absTime = 268800 barStart = 268800
d' 8 ^1 g' 16 (fis' e' 8) g' fis' ^3 d' 16 (e' fis' 8) a'  |
                
% absTime = 272640 barStart = 272640
g' 8 b' 16 ^5 (a' g' 8) fis' e' a' 16 (g' fis' 8) e'  |
                
% absTime = 276480 barStart = 276480
< d' fis' > 8 ->^1^2 d'' 16 ^5 (cis'' d'' 8) fis' ^2 < cis' a' > ->^1^3 a' 16 (b' cis'' 8) a'  |
                
% absTime = 280320 barStart = 280320
< d' fis' > 8 ->^1^2 d'' 16 ^2 (e'' fis'' 8) d'' ^2 < a' fis'' > ->^1^5 fis'' 16 (e'' d'' 8) cis''  |
%% 75
                
% absTime = 284160 barStart = 284160
d'' 8-> < d' b' > 16 ^1^5 (a' ^3 < g' b' > 8 ^2^4) < e' cis'' > ^1^5 < fis' d'' > ->^2^5 fis'' 16 (e'' d'' 8) < a' fis'' >  |
                
% absTime = 288000 barStart = 288000
< b' g'' > 8-> d'' 16 ^4 (cis'' b' 8) b' < e' a' >-> < cis' e' > < cis' a' > < cis' a' >  |
                
% absTime = 291840 barStart = 291840
< d' fis' a' > 2 ^1^3^5 r4 < cis' e' a' >  |
                
% absTime = 295680 barStart = 295680
< fis b d' > 2 r4 < cis' fis' a' >  |
                
% absTime = 299520 barStart = 299520
< b d' g' > 2 < d' fis' a' >  |
%% 80
                
% absTime = 303360 barStart = 303360
< b d' g' > 4 < b d' > 
  << { \voiceOne
       cis' 4 ~ -\startTrillSpan s4*0 \stopTrillSpan cis' 8 b 16 cis'
     }
     \new Voice
     { \voiceTwo
       < e a > 2
     }
  >> \oneVoice |
                
% absTime = 307200 barStart = 307200
< fis a d' > 4 < fis' a' d'' > < e' a' cis'' > 2  |
                
% absTime = 311040 barStart = 311040
< d' fis' b' > 2 < cis' fis' a' > |

% absTime = 314880 barStart = 314880
  << { \voiceOne
       d' 4. e' 8 fis' 2
     }
     \new Voice
     { \voiceTwo
        b 2 < a d'>
     }
  >> \oneVoice |
                
% absTime = 318720 barStart = 318720
< d' g' b' > 2 
  << { \voiceOne
       e' 4. e' 8
     }
     \new Voice
     { \voiceTwo
        < a cis' > 2
     }
  >> \oneVoice |
%% 85
                
% absTime = 322560 barStart = 322560
< a d' fis' > 4. \p < d'' fis'' > 8 ^2^4
  << { \voiceOne
       fis'' 8 ^4 g'' fis'' e''
     }
     \new Voice
     { \voiceTwo
        cis'' 2 _1
     }
  >> \oneVoice |
                
% absTime = 326400 barStart = 326400
  << { \voiceOne
       d'' 4. ^2 d'' 8 ^3 d'' ^4 e'' d'' cis''
     }
     \new Voice
     { \voiceTwo
        b' 2 a' _1
     }
  >> \oneVoice |
                
% absTime = 330240 barStart = 330240
< g' b' > 2 < fis' d'' >  |
                
% absTime = 334080 barStart = 334080
  << { \voiceOne
       d'' 8 ^5 c'' ^4 b' ^3 c'' ^5 a' 4. ^4 a' 8
     }
     \new Voice
     { \voiceTwo
        g' 4 _1 d' _1 < d' e' > _1_2 < cis'! e' > _1_2
     }
  >> \oneVoice |
                
% absTime = 337920 barStart = 337920
< d' fis' a' > 4. \mf < fis'' a'' > 8 ^2^4
  << { \voiceOne
       < a'' fis'' > 8 < g'' b'' > < fis'' a'' > < e'' g'' > ^1^3
     }
     \new Voice
     { \voiceTwo
        cis'' 2
     }
  >> \oneVoice |
%% 90
                
% absTime = 341760 barStart = 341760
  << { \voiceOne
       < d'' fis'' > 4. ^2^4 < fis'' d'' > 8 < fis'' d'' > ^4 < g'' e'' > < fis'' d'' > < e'' cis'' >
     }
     \new Voice
     { \voiceTwo
        b' 2 _1 a'
     }
  >> \oneVoice |

                
% absTime = 345600 barStart = 345600
< d'' b' > 8 ^2^4 c'' b' c'' ^4
  << { \voiceOne
       a' 4. ^2 a' 8
     }
     \new Voice
     { \voiceTwo
        fis' 2 _1
     }
  >> \oneVoice |
                
% absTime = 349440 barStart = 349440
< g' b' > 4 d'' < a' cis''? > 4. < g' cis'' > 8  |
                
% absTime = 353280 barStart = 353280
  << { \voiceOne
       d'' 4 ^5 d'' 2 cis'' 4 ^\markup { \finger "4-5" }  ~
     }
     \new Voice
     { \voiceTwo
        < a' fis' > 2 < e' a' >
     }
  >> \oneVoice |
                
% absTime = 357120 barStart = 357120
  << { \voiceOne
       cis'' 4 b' 2 ^\markup { \finger "4-5" }  a' 4 ^\markup { \finger "4-5" }  ~
     }
     \new Voice
     { \voiceTwo
        < d' fis' > 2 < fis' cis' >
     }
  >> \oneVoice |

%% 95
                
% absTime = 360960 barStart = 360960
  << { \voiceOne
       a' 4 g' 2 ^\markup { \finger "4-5" }  fis' 4 ~
     }
     \new Voice
     { \voiceTwo
        < b d' > 2 < a d' >
     }
  >> \oneVoice |

                
% absTime = 364800 barStart = 364800
  << { \voiceOne
       fis' 4. e' 8
     }
     \new Voice
     { \voiceTwo
       < b d' > 2
     }
  >> \oneVoice
< a cis' e' > 2  |
                
% absTime = 368640 barStart = 368640
  << { \voiceOne
       s4 \f fis'' 2 ^5 e'' 4
     }
     \new Voice
     { \voiceTwo
       < d' fis' > 4 _1_3 d'' _3 < a' cis'' > 2
     }
  >> \oneVoice |
                
% absTime = 372480 barStart = 372480
  << { \voiceOne
       s4 d''' 2 ^5 c''' 4
     }
     \new Voice
     { \voiceTwo
       < fis' b' d'' > 4 < d'' b'' > _1_3 < fis'' a'' > 2
     }
  >> \oneVoice |
                
% absTime = 376320 barStart = 376320
< d'' g'' b'' > 2
  << { \voiceOne
       d''' 4 a''
     }
     \new Voice
     { \voiceTwo
       fis'' 2
     }
  >> \oneVoice |


%% 100
                
% absTime = 380160 barStart = 380160
< d'' b'' > 2
  << { \voiceOne
       a'' 4 g''
     }
     \new Voice
     { \voiceTwo
       cis'' 2
     }
  >> \oneVoice |
                
% absTime = 384000 barStart = 384000
< d'' fis'' > 4 ^3^5 \ff < d' fis' > ^1^3 < cis' e' > ^1^2
  << { \voiceOne
       < cis'' e'' > 4 ^3^5
     }
     \new Voice
     { \voiceTwo
       a' 8 _2 g' _1
     }
  >> \oneVoice |
                
% absTime = 387840 barStart = 387840
< fis' b' d'' > 4 < b d' > ^1^3 < a cis' > ^1^2 
  << { \voiceOne
       < a' cis'' > 4 ^4^5
     }
     \new Voice
     { \voiceTwo
       fis' 8 _2 e' _1
     }
  >> \oneVoice |
                
% absTime = 391680 barStart = 391680
< d' g' b' > 4 ^1^2^4 < d'' g'' b'' > < d'' fis'' a'' > < d' fis' a' >  |
                
% absTime = 395520 barStart = 395520
< b d' g' > 4. _\markup { \italic "allargando" } < g' b' e'' > 8 < cis' e' a' > 4 < cis' e' a' >  |
%% 105
                
% absTime = 399360 barStart = 399360
< d' fis' a' > 2 ^1^3^5 r  |
                \bar "|."
            } % Voice

            \new Staff {
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
    
  \midi {  }
  \layout { }
    
} % score
