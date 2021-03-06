\version "2.16.2"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    composer = "Anonyme"
    copyright = "C. FOUCHER"
    subtitle = "transcription TAB"
    title = "JEUX INTERDITS"
}
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

global = {
  \key e \minor
}

globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 8 = 180
}

upperOne = {
  \time 9/8
  \voiceOne
  \key e \minor
  
  b' 4. b' b'  |
                
% absTime = 4320 barStart = 4320
b' 4. a' g'  |
                
% absTime = 8640 barStart = 8640
g' 4. fis' e'  |
                
% absTime = 12960 barStart = 12960
e' 4. g' b'  |
%% 5
                
% absTime = 17280 barStart = 17280
e'' 4. e'' e''  |
                
% absTime = 21600 barStart = 21600
e'' 4. d'' c''  |
                
% absTime = 25920 barStart = 25920
c'' 4. b' a'  |
                
% absTime = 30240 barStart = 30240
a' 4. b' c''  |
                
% absTime = 34560 barStart = 34560
b' 4. c'' b'  |
%% 10
                
% absTime = 38880 barStart = 38880
dis'' 4. c'' b'  |
                
% absTime = 43200 barStart = 43200
b' 4. a' g'  |
                
% absTime = 47520 barStart = 47520
g' 4. fis' e'  |
                
% absTime = 51840 barStart = 51840
fis' 4. fis' fis'  |
                
% absTime = 56160 barStart = 56160
fis' 4. g' fis'  |
%% 15
                
% absTime = 60480 barStart = 60480
e' 4. e' e'  |
                
% absTime = 64800 barStart = 64800
s4. s s  |
}

upper = {
  \time 9/8
  \voiceTwo
  \stemUp
  \key e \minor
  \override TupletNumber #'stencil = ##f
  \override StringNumber #'stencil = ##f
b' 8 [ b g ] b' [ b g ] b' [ b g ]  |
                
% absTime = 4320 barStart = 4320
b' 8 [ b g ] a' [ b g ] g' [ b g ]  |
                
% absTime = 8640 barStart = 8640
g' 8 [ b g ] fis' [ b g ] e' [ b g ]  |
                
% absTime = 12960 barStart = 12960
e' 8 [ b g ] g' [ b g ] b' [ b g ]  |
%% 5
                
% absTime = 17280 barStart = 17280
e'' 8 [ b g ] e'' [ b g ] e'' [ b g ]  |
                
% absTime = 21600 barStart = 21600
e'' 8 [ b g ] d'' [ b g ] c'' [ b g ]  |
                
% absTime = 25920 barStart = 25920
c'' 8 ^\markup \fret-diagram #"f:1;c:1-3-5;6-o;5-x;4-x;3-5-1;2-5-1;1-8-5;"
      [ e'\2 c'\3 ] b' [ e'\2 c'\3 ] a' [ e'\2 c'\3 ]  |
                
% absTime = 30240 barStart = 30240
a' 8 [ e'\2 c'\3 ]  b' [ e'\2 c'\3 ] c'' [ e'\2 c'\3 ]  |
                
% absTime = 34560 barStart = 34560
b' 8 ^\markup \fret-diagram #"f:1;c:1-6-7;6-7-1;5-x;4-x;3-8-2;2-7-1;1-7-1;"
     [ fis'\2 dis'\3 ] c'' [ fis'\2 dis'\3 ] b' [ fis'\2 dis'\3 ]  |
%% 10
                
% absTime = 38880 barStart = 38880
dis'' 8 [ fis'\2 dis'\3 ] c'' [ fis'\2 dis'\3 ] b' [ fis'\2 dis'\3 ]  |
                
% absTime = 43200 barStart = 43200
b' 8 [ b g ] a' [ b g ] g' [ b g ]  |
                
% absTime = 47520 barStart = 47520
g' 8 [ b g ] fis' [ b g ] e' [ b g ]  |
                
% absTime = 51840 barStart = 51840
fis' 8 ^\markup \fret-diagram #"f:1;6-x;5-2-1;4-o;3-2-2;2-o;1-2-3;" ^\markup {"Sim7"}
       [ b a ] fis' [ b a ] fis' [ b a ]  |
                
% absTime = 56160 barStart = 56160
fis' 8 [ b a ] g' [ b a ] fis' [ b a ]  |
%% 15
                
% absTime = 60480 barStart = 60480
e' 8 [ b g ] e' [ b g ] e' [ b g ]  |
                
% absTime = 64800 barStart = 64800        \tempo "Andantino" 2 = 40
\times 3/2 { e' 2. } |
}

lower = {
  \time 9/8
  \voiceThree
  \key e \minor
  \stemDown
  \override TupletNumber #'stencil = ##f
  \override StringNumber #'stencil = ##f
\times 3/2 { e, 2.\6 } |
                
% absTime = 4320 barStart = 4320
\times 3/2 { e, 2. } |
                
% absTime = 8640 barStart = 8640
\times 3/2 { e, 2. } |
                
% absTime = 12960 barStart = 12960
\times 3/2 { e, 2. } |
%% 5
                
% absTime = 17280 barStart = 17280
\times 3/2 { e, 2. } |
                
% absTime = 21600 barStart = 21600
\times 3/2 { e, 2. } |
                
% absTime = 25920 barStart = 25920
\times 3/2 { a, 2. } |
                
% absTime = 30240 barStart = 30240
\times 3/2 { a, 2. } |
                
% absTime = 34560 barStart = 34560
\times 3/2 { b, 2.\6 } |
%% 10
                
% absTime = 38880 barStart = 38880
\times 3/2 { b, 2.\6 } |
                
% absTime = 43200 barStart = 43200
\times 3/2 { e, 2. } |
                
% absTime = 47520 barStart = 47520
\times 3/2 { e, 2. } |
                
% absTime = 51840 barStart = 51840
\times 3/2 { b, 2. } |
                
% absTime = 56160 barStart = 56160
\times 3/2 { b, 2. } |
%% 15
                
% absTime = 60480 barStart = 60480
e 4. b, g, |
                
% absTime = 64800 barStart = 64800
\times 3/2 { e, 2. } |
}

\score {
<< % common
    \new StaffGroup = "tab with traditional" <<
      \set StaffGroup.midiInstrument = #"acoustic guitar (nylon)"
       \new Staff = "guitar traditional" <<
         \clef "treble_8"
         \tempo 8 = 240
         \context Voice = "upper" \upper
         \context Voice = "lower" \lower
       >>
      \new TabStaff = "guitar tab" <<
        \context TabVoice = "upper" \upper
        \context TabVoice = "lower" \lower
      >>
    >>
>> % notes

    \midi { }
    \layout { }
} % score
