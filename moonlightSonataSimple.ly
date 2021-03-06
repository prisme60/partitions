\version "2.16.2"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    composer = "L. Van Beethoven"
    copyright = "retranscrit par Christian FOUCHER"
    subtitle = "d'après le manuscrit de Jean-Paul FOUCHER"
    title = "MOONLIGHT sonata"
    tagline = ""
}
#(set-global-staff-size 23)
#(set-default-paper-size "a4")
global = { 
    \time 4/4
    \skip 1*28  %% 1-28
}
globalTempo = {
    \tempo 4 = 60  \skip 1*28 
}
\score {
<< % common
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0

        \new PianoStaff << 
          \set PianoStaff.instrumentName = #""
          \set PianoStaff.midiInstrument = #"bright acoustic"

            \new Staff = up {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1
                \set Staff.pedalSustainStyle = #'mixed
                \tempo "Slowly and sustained" 4 = 60
            
% absTime = 0 barStart = 0
\times 2/3 { \clef "treble"
            \key d \minor
            a 8 _\markup {\dynamic {"pp"} "una corda"} _\( d' f' } \times 2/3 { a d' f' } \times 2/3 { a d' f' } \times 2/3 { a d' f' \) }  |
            
% absTime = 3840 barStart = 3840
          \times 2/3 { a 8 ^\markup {\italic "Simile"} _\( d' f' } \times 2/3 { a d' f' } \times 2/3 { a d' f' } \times 2/3 { a d' f' \) }  |
            
% absTime = 7680 barStart = 7680
\times 2/3 { bes 8 _\( d' f' } \times 2/3 { bes d' f' \) } \times 2/3 { bes _\( ees' g' } \times 2/3 { bes ees' g' \) }  |
            
% absTime = 11520 barStart = 11520
\times 2/3 { a 8 _\( cis' g' \) } \times 2/3 { a _\( d' f' \) } \times 2/3 { a _\( d' e' \) } \change Staff = "down" \times 2/3 { g _\( cis' e' \) }  |
%% 5
            
% absTime = 15360 barStart = 15360
\stemUp \times 2/3 { f 8 ^\( a d' \) } \stemNeutral \change Staff = "up" r4 r a' 8. [ a' 16 ]  |
            
% absTime = 19200 barStart = 19200
a' 2. a' 8. [ a' 16 ]  |
            
% absTime = 23040 barStart = 23040
a' 2 ^\( bes'  |
            
% absTime = 26880 barStart = 26880
a' 2 g' 4 c''  |
            
% absTime = 30720 barStart = 30720
f' 2 \) r4 c'' 8. [ c'' 16 ]  |
%% 10
            
% absTime = 34560 barStart = 34560
c'' 2. c'' 8. [ c'' 16 ]  |
            
% absTime = 38400 barStart = 38400
c'' 2 cis'' 4 \< d'' 
            % avertissement: une mesure anormalement longue a été tronquée |
            
% absTime = 42240 barStart = 42240
e'' 2 f''  |
            
% absTime = 46080 barStart = 46080
ees'' 2 \! cis'' \>  |
            
% absTime = 49920 barStart = 49920
d'' 2. \! d'' 4 \mp \< 
            % avertissement: une mesure anormalement longue a été tronquée |
%% 15
            
% absTime = 53760 barStart = 53760
ees'' 2. cis'' 4 \! \> 
            % avertissement: une mesure anormalement longue a été tronquée |
            
% absTime = 57600 barStart = 57600
d'' 2. d'' 4 \! \p |
            
% absTime = 61440 barStart = 61440
ees'' 2. cis'' 4  |
            
% absTime = 65280 barStart = 65280
d'' 2 d''  |
            
% absTime = 69120 barStart = 69120
c'' 2. c'' 4 ^\( _\markup {\italic "with expression"} |
%% 20
            
% absTime = 72960 barStart = 72960
bes' 4 \) bes' ^\( a' \) a' ^\(  |
            
% absTime = 76800 barStart = 76800
g' 2 a' 4 bes'  |
            
% absTime = 80640 barStart = 80640
a' 2 \) a' _\(  |
            
% absTime = 84480 barStart = 84480
d' 4 \) \times 2/3 { d' 8 \pp _\( f' a' \) } \times 2/3 { d' _\( f' a' } \times 2/3 { d' f' a' \) }  |
            
% absTime = 88320 barStart = 88320
\times 2/3 { e' 8 _\( g' a' } \times 2/3 { e' g' a' } \times 2/3 { e' g' a' } \times 2/3 { e' g' a' \) }  |
%% 25
            
% absTime = 92160 barStart = 92160
\times 2/3 { f' 8 _\( a d' } \times 2/3 { f' d' a \) } \times 2/3 { \clef "bass"
            r ^\( f a } \times 2/3 { d' a f \) }  |
            
% absTime = 96000 barStart = 96000
          \times 2/3 { r8 ^\( d f } \times 2/3 { a f d \) } r2 _\markup "Rall." \> 
            % avertissement: une mesure anormalement longue a été tronquée |
            
% absTime = 99840 barStart = 99840
r2 < f d' >  |
            
% absTime = 103680 barStart = 103680
< f d' > 1 -\fermata \! \ppp |
            \bar "|."
        } % Voice


            \new Staff = down {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1
                \set Staff.pedalSustainStyle = #'mixed
            
% absTime = 0 barStart = 0
\clef "bass"
            \key d \minor
            d 1 \sustainOn  |
            
% absTime = 3840 barStart = 3840
c 1 \sustainOff \sustainOn  |
            
% absTime = 7680 barStart = 7680
bes, 2 \sustainOff \sustainOn g, \sustainOff \sustainOn  |
            
% absTime = 11520 barStart = 11520
<< { \voiceOne 
    a, 2 a,
   }
  \new Voice { \voiceTwo
    %Un warning est levé car je gère le sustain avec une deuxième voix (et ne connaissantt pas le contexte, il n'aime pas le premier sustain Off, pourtant tout est bien affiché!), 
   s4 \sustainOff \sustainOn s \sustainOff \sustainOn s \sustainOff \sustainOn s \sustainOff \sustainOn
   }
>> \oneVoice  |
%% 5
            
% absTime = 15360 barStart = 15360
d, 4 \sustainOff \sustainOn \times 2/3 { d 8 ^\( f a } \times 2/3 { d f a } \times 2/3 { d \sustainOff \sustainOn f a \) }  |
            
% absTime = 19200 barStart = 19200
\times 2/3 { cis 8 ^\( \sustainOff \sustainOn e g } \times 2/3 { cis e g } \times 2/3 { cis e g } \times 2/3 { cis \sustainOff \sustainOn e g \) }  |
            
% absTime = 23040 barStart = 23040
\times 2/3 { d 8 ^\( \sustainOff \sustainOn f a } \times 2/3 { d f a \) } \times 2/3 { bes, ^\( \sustainOff \sustainOn d g } \times 2/3 { bes, d g \) }  |
            
% absTime = 26880 barStart = 26880
\times 2/3 { c 8 ^\( \sustainOff \sustainOn f a } \times 2/3 { c f a \) } \times 2/3 { c ^\( \sustainOff \sustainOn e bes } \times 2/3 { c \sustainOff \sustainOn e bes \) }  |
            
% absTime = 30720 barStart = 30720
\times 2/3 { f 8 ^\( \sustainOff \sustainOn a c' } \times 2/3 { f a c' } \times 2/3 { f a c' } \times 2/3 { f \sustainOff \sustainOn a c' \) }  |
%% 10
            
% absTime = 34560 barStart = 34560
\times 2/3 { e 8 ^\( \sustainOff \sustainOn g bes } \times 2/3 { e g bes } \times 2/3 { e g bes } \times 2/3 { e \sustainOff \sustainOn g bes \) }  |
            
% absTime = 38400 barStart = 38400
\times 2/3 { f 8 ^\( \sustainOff \sustainOn a c' } \times 2/3 { f a c' \) } \times 2/3 { e ^\( \sustainOff \sustainOn g bes } \times 2/3 { d \sustainOff \sustainOn g bes \) }  |
            
% absTime = 42240 barStart = 42240
\times 2/3 { cis 8 ^\( \sustainOff \sustainOn g a } \times 2/3 { cis g a \) } \times 2/3 { d ^\( \sustainOff \sustainOn f a } \times 2/3 { d f a \) }  |
            
% absTime = 46080 barStart = 46080
\times 2/3 { g, 8 _\( \sustainOff \sustainOn bes, ees } \times 2/3 { g, bes, ees \) } \times 2/3 { a, ^\( \sustainOff \sustainOn e g } \times 2/3 { a, e g \) }  |
            
% absTime = 49920 barStart = 49920
\times 2/3 { d 8 ^\( \sustainOff \sustainOn f a } \times 2/3 { d f a \) } \times 2/3 { d ^\( \sustainOff \sustainOn fis a } \times 2/3 { d fis a \) }  |
%% 15
            
% absTime = 53760 barStart = 53760
\times 2/3 { d 8-- ^\( \sustainOff \sustainOn g bes } \times 2/3 { g-- \sustainOff \sustainOn bes d' } \times 2/3 { bes-- \sustainOff \sustainOn d' g' } \times 2/3 { g-- \sustainOff \sustainOn bes d' \) }  |
            
% absTime = 57600 barStart = 57600
\times 2/3 { d 8 ^\( \sustainOff \sustainOn fis a } \times 2/3 { d fis a } \times 2/3 { d fis a \) } \times 2/3 { d ^\( \sustainOff \sustainOn fis a \) }  |
            
% absTime = 61440 barStart = 61440
\times 2/3 { d 8--  \sustainOff \sustainOn g bes } \times 2/3 { g-- \sustainOff \sustainOn bes d' } \times 2/3 { bes-- \sustainOff \sustainOn d' g' } \times 2/3 { g-- \sustainOff \sustainOn bes d' \) }  |
            
% absTime = 65280 barStart = 65280
\times 2/3 { d 8 ^\( \sustainOff \sustainOn fis a } \times 2/3 { d fis a \) } \times 2/3 { g ^\( \sustainOff \sustainOn bes d' } \times 2/3 { g bes d' \) }  |
            
% absTime = 69120 barStart = 69120
\times 2/3 { e 8 ^\( \sustainOff \sustainOn g bes } \times 2/3 { e g bes } \times 2/3 { e g bes \) } \times 2/3 { f ^\( \sustainOff \sustainOn a c' \) }  |
%% 20
            
% absTime = 72960 barStart = 72960
\times 2/3 { d 8 ^\( \sustainOff \sustainOn f bes \) } \times 2/3 { e ^\( \sustainOff \sustainOn g bes \) } \times 2/3 { cis ^\( \sustainOff \sustainOn e g \) } \times 2/3 { d ^\( \sustainOff \sustainOn f a \) }  |
            
% absTime = 76800 barStart = 76800
\times 2/3 { bes, 8 _\( \sustainOff \sustainOn d e } \times 2/3 { bes, d e \) } \times 2/3 { a, _\( \sustainOff \sustainOn d e \) } \times 2/3 { g, _\( \sustainOff \sustainOn d e \) }  |
            
% absTime = 80640 barStart = 80640
\times 2/3 { a, 8 _\( \sustainOff \sustainOn d f } \times 2/3 { a, \sustainOff \sustainOn d f \) } \times 2/3 { a, _\( \sustainOff \sustainOn cis g } \times 2/3 { a, \sustainOff \sustainOn cis g \) }  |
            
% absTime = 84480 barStart = 84480
\times 2/3 { d 8 ^\( \sustainOff \sustainOn f a \) } r4 r a 8. ^\p \sustainOff \sustainOn [ a 16 ]  |
            
% absTime = 88320 barStart = 88320
<< { \voiceOne 
  a 2. \sustainOff \sustainOn a 8. \sustainOff \sustainOn [a 16 ]  
   }
  \new Voice { \voiceTwo
  cis 1
   }
>> \oneVoice  |
%% 25
            
% absTime = 92160 barStart = 92160
d 2 ^\( \sustainOff \sustainOn a, 
            % avertissement: une mesure anormalement longue a été tronquée |
            
% absTime = 96000 barStart = 96000
d, 2 \) \sustainOff \sustainOn \times 2/3 { a, 8 _\( d a, } \times 2/3 { f, a, f, } 
            % avertissement: une mesure anormalement longue a été tronquée |
            
% absTime = 99840 barStart = 99840
d, 2 \) \sustainOff \sustainOn  < d, a, >  |
            
% absTime = 103680 barStart = 103680
< d, a, > 1 -\fermata  |
            \bar "|."
        } % Voice
    >> % Staff (final) ends

>> % notes

\layout {
    \context { \GrandStaff \accepts "Lyrics" }
}
\midi { }
} % score
