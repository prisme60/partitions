\version "2.16.2"
\include "english.ly"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)
\header {
    copyright = "Copyright (c) Christian FOUCHER"
    subtitle = "En dehors du temps pascal"
    title = "Les dimanches à l'aspersion de l'eau bénite"
    tagline = "On omet Gloria Patri Le Dimanche de la Passion et le Dimanche des Rameaux."
}
#(set-global-staff-size 19)
#(set-default-paper-size "a4")
global = { 
    \skip 1*20 
}
globalTempo = {
    \tempo 4 = 100  
}
\score {
  \new ChoirStaff <<
        \set ChoirStaff.instrumentName = \markup { \column { "Ant 7." } }

        \new Staff = "CLEF_SOL" <<
            \new Voice = "voix" {
                \cadenzaOn  % pas de mesure                
                \clef "treble"
                \key g \major
                \override Stem #'direction = #UP % queue
                \override Slur #'direction = #UP % liaison
                
                d'8 [e'] g' [ fs' e'] fs' [g'] a'4  \bar "'"
                b'8^-- [c''\mordent d''] d'' [c''] b' [a'] b'  
                a'8^-- [g'] fs' [g'] a' [g' e'] fs'  
                d'8 [e' d'] d'4 r8 \bar "|"
                
                d' [e'] g'8 [fs' e'] fs' [g'] a'4 \bar "'"
                a'8^-- [b'8\mordent c'' b' a'] g' [fs'] e' g' 
                fs'8 [g'] a' [g' e'] fs' d' 
                [e'8 d'] d'4 r8 \bar "||"
                
                d'8 [g' fs'] g' [a'] a' a' a' [c''] 

                b'8 b' [a'] a'4 (b') r8  \bar "|"
                
                a'8 [fs'] g' [a'] a' \breve
                a'8^-- [b'\mordent c''] a'  
                g'8 g' ([g' g']) e'4 (d') r8 \bar "||"
                d'8 [g' fs'] g' [a'] a' \breve
                a'4 a'8 a' a' [c''] b' b' b' [a'] a'4 b' r8 \bar "|"
                a'8 [fs'] g' [a'] a' \breve a'4 \bar "'"
                a'8 a' [c''] b' b' [a'] a'4 (b') r8 \bar "|"
                a'8 [fs'] g' [a'] a' a' a' a' a'^-- [b'\mordent c''] a' g' g' ([g' g']) e'4 (d'4) 
                \bar "|."
            } % Voice
            
            \new Lyrics \with { alignAboveContext = "CLEF_SOL" } \lyricsto "voix" {
                    A -- spér -- ges me, Do -- mi -- ne, hys -- so -- po, et mun -- da -- bor:
                    la -- va -- bis me, et su -- per ni -- vem de al -- ba -- bor. Mi -- se -- ré -- re
                    me -- i, De -- us, se -- cun -- dum_magnam_miseri -- cor di -- am tu -- am.
                    Glo -- ri -- a_Patri,_et_Fili -- o, et Spi -- ri -- tu -- i San -- cto : Si -- cut e_rat_in_principi -- o,
                    et nunc, et sem -- per, et in sae -- cu -- la sae -- cu -- lo -- rum. A -- men
            }
                       
            \new Voice = "sol_accomp" {
                \cadenzaOn  % pas de mesure                
                \clef "treble"
                \key g \major
                \override Stem #'direction = #DOWN % queue
                \override Slur #'direction = #DOWN % liaison
                
                b 4 (b4.) (b4) d'4 (d'4.) d'4 e'4. b1 a2.
                b4 (b4.) (b4) d' e' (e'4.) b1 (b4) (a4.) (a)
                
                d'4. (d'2) e'4. (e'4) d'2 (d'8) (d'2) (d'\breve) e'4. (e'4) b4. a2 (a8)
                
                d'4. (d'4) (d'\breve) (d'4) (d'4) e'2. d'2 (d'8) (d'2) (d'\breve) (d'4.)
                e'4. (e'4) d'2 (d'8) (d'1) e'4. (e'4) b4. a2
            } % Voice
        >> % Staff (final) ends
        
        \new Staff = "CLEF_FA" <<
            \new Voice = "fa_haut" {
                \cadenzaOn  % pas de mesure                
                \clef "bass"
                \key g \major
                \override Stem #'direction = #UP % queue
                \override Slur #'direction = #UP % liaison
                
                g4 (g4.) (g4) fs4 g4. (g4) (g4.) (g1) (g4.) fs4.
                g4 (g4.) (g4) (fs4) (g4) (g4.) (g1) (g4) (g4.) fs4.
                g4. (g4) fs4 g4. (g4) (g2) (g8) fs2 (fs\breve) g4. (g4) e4. fs2 (fs8)
                g4. (g4) fs\breve (fs4) (fs4) g2. (g2) (g8) fs2 (fs\breve) (fs4.)
                g4. (g4) (g2) (g8) fs1 g4. (g4) e4. fs2             
            } % Voice
            
            \new Voice = "fa_bas" {
                \cadenzaOn  % pas de mesure
                \clef "bass"
                \key g \major
                \override Stem #'direction = #DOWN % queue
                \override Slur #'direction = #DOWN % liaison
                
                s4 e4. (e4) d4 g,4. b,4 c4. e2 c2 d4. s4.
                s4 e4. (e4) d4 c4 (c4.) e2. c2 d2.
                b4. (b4) d4 c4. (c4) g,2 (g,8) d2 (d\breve) c4. (c4) (c4.) d2 (d8)
                b,4. (b,4) d\breve (d4) (d4) c2. g,2 (g,8) d2 (d\breve) (d4.)
                c4. (c4) g,2 (g,8) d1 c4. (c4) (c4.) d2
            } % Voice
        >> % Staff (final) ends
    >> % notes

    \layout {
    }

    \midi {
    } 
} % score
