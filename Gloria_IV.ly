\version "2.18.2"
\include "english.ly"

\header {
  title = "Gloria IV"
  composer = ""
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

lyricsOne = \lyricmode {
        Glo -- _ _ ri -- a in ex -- cél -- sis De -- _ _ o
        Et _ in _ ter -- _ ra pax ho -- _ mi -- _ ni -- _ bus
        bo -- nae vo -- lun -- _ ta -- tis.
        Lau -- _  da -- mus _ te.
        Be -- ne -- _ di -- ci -- mus _ te.
        Ad -- o -- _ ra -- _ _ _ mus _ te.
        Glo -- ri -- fi - ca -- _ _ mus te. _ _ _ _ _ _ _
        Gra -- ti -- _ as a -- gi -- mus _ ti -- _ bi
        pro -- pter _ ma -- gnam _ glo -- _ ri -- _ am _ tu -- am.
        Do -- mi -- ne _ De -- _ us,
        Rex cae -- _ le -- _ stis De -- _ _ us Pa -- _ _ _ _ _ ter o -- mni -- _ po -- _ tens.
        Do -- mi -- ne _ Fi - li, u -- ni - ge - ni - te
        Je --  _ _ su Chri -- _ _ _ _ _ _ _ ste.
        Do -- mi -- ne _ De -- _ us,
        A -- gnus _ De -- _ i,
        Fi -- _ li -- us _ _ Pa -- _ _ _ _ _ _ tris.
        Qui tol -- _ lis pec -- ca -- ta _ mun -- _ di,
        mi -- se -- _ re -- _ re _ no -- bis.
        Qui tol -- _ lis pec -- ca -- ta _ mun -- _ di,
        su -- sci -- _ pe de -- pre -- ca -- ti -- o - nem _ no -- stram.
        Qui se -- _ _ des ad dex -- te -- ram Pa -- _ tris, mi -- se -- _ re -- _ re _ no -- bis
        Quo -- ni -- _ am _ tu _ so -- _ lus san -- ctus.
        Tu _ so -- _ lus Do -- _ mi -- _ nus.
        Tu so -- lus Al -- tis -- _ si -- mus,
        Je -- _ _ su Chri -- _ _ _ _ _ _ _ ste.
        Cum San -- _ _ cto Spi -- _ _ _ _ _ ri -- _ _ tu,
        in glo -- _ ri -- a De -- i _ Pa -- _ _ _ _ tris.
        A -- _ _ _ _ _ _ _ _ _ men. _
}

rightOne = {
        d'8 [e' g'] g' g' fs' g' a' fs' a' [g' fs'] fs'4 \bar "||"
        
        e'8 [a'] a' [b'] b' [d''] b'4 b'8 a'-- [g'] a' [b'] a'-- [g'] fs'4 \bar "'"
        g'8 e' d' e' [fs'] fs'4 fs'4 r8 \bar "||"
        
        fs'8 [e'] g' e' [fs'] fs'4 r8 \bar "||"
        
        e'8 e'-- [d'] e' e' e' [fs'] fs'4 r8 \bar "||"
        
        a'8 a' [b']  b' [a']  b'-- [d''] a' ([a']) fs'4 r8 \bar "||"
        
        g'8 fs' g' [a'] a' [g' e'] e' a'4 (g'8--) [ a'^\prall b' a' g'] (a'4^^ fs') r8 \bar "||"
        
        g'8 e' [fs'] fs' g' e' e'-- [d'] e' [fs'] fs'4 \bar "'"
        d'8 e' [g'] g' fs' [g'] a'-- [g'] a' [b'] a' [g'] fs'4 fs' r8 \bar "||"
        
        g'8 e' e'-- [d'] e' [fs'] fs'4 \bar "'"
        a'8 a' [fs'] g' [a'] fs'4 a'8 [g' e'] e' e'4 (g'8--) [a'^\prall b' a' g'] a' a' g'-- [fs'] e' [fs'] fs'4 r8 \bar "||"
        
        g'8 e' e'-- [d'] e' [fs'] fs'4 \bar "'"
        a'8 a' [fs'] g' [a'] g'8-- [fs'] fs'4 \bar "'"
        a'8 [g' e'] e' e'4 (g'8--) [ a'^\prall b' a' g' a'] (a') fs'4 r8 \bar "||"
        
        g'8 e' e'-- [d'] e' [fs'] fs'4 \bar "'"
        a'8 a' [b'] b' [d''] b'4 \bar "'"
        b'8 [a' g'] a'4 a'8 [b'] b' [a' g'] a'4^^ (b'8) a' [g'] (fs'4) r8 \bar "||"
        
        g'8 e' [fs'] fs' fs' g' e'-- [d'] e' [fs'] fs'4 \bar "'"
        a' a'8-- [g'] a' [b'] a'-- [g'] fs'4 fs' r8 \bar "||"
        
        g'8 e' [fs'] fs' fs' g' e'-- [d'] e' [fs'] fs'4 \bar "'"
        d'8 e' [g'] g'4 fs'8 g' a' g' a' [b'] a' [g'] fs'4 fs' r8 \bar "||"
        
        a'8 a' [b' d''] b'4 a'8 b' a' g' a' [b'] b'4 \bar "'"
        b'8 a'-- [g'] a' [b'] a'8-- [g'] fs'4 fs' r8 \bar "||"
        
        g'8 fs' [e'] e' [fs'] e'-- [d'] e' e' [fs'] fs'4 fs' r8 \bar "||"
        
        a'8 [g'] a' [b'] a' g' [fs'] e' [fs'] fs'4 r8 \bar "||"
        
        fs'8 g' e' d' e' e' [fs'] fs'4 a'8 [ g' e'] e' e'4 (g'8--) [a'^\prall b' a' g' a'] (a') fs'4 r8 \bar "||"
         
        a'8 a' [g' e'] e' e'4 (g'8--) [a'^\prall b' a' g'] a' [g' fs'] fs'4 \bar "'"
        d'8 e' [g'] g' g' g' fs' [e'] fs' [e' d' e' fs'] e'4 r8 \bar "||"
        
        e' (a'^^) (g'--) [a'^\prall b' a' g'] a' [g' fs'] e'4 (fs')\bar "||"
}

\score {
  <<
    % common
    % Force offset of colliding notes in chords:
    \override Score.NoteColumn #'force-hshift = #1.0
    % Allow fingerings inside the staff (configured from export options):
    \override Score.Fingering #'staff-padding = #'()

    \context Staff = "track 1" <<
      \set Staff.instrumentName = \markup { \center-column { "s " } }
      \set Staff.midiInstrument = "church organ"
      \set Score.skipBars = ##t
      \set Staff.printKeyCancellation = ##f
      \cadenzaOn % pas de mesure
      \key g \major

      \context Voice = "voice 2" {
        \override Voice.TextScript #'padding = #2.0
        \override MultiMeasureRest #'expand-limit = 1
        \override Stem #'direction = #UP % queue
        \override Slur #'direction = #UP % liaison
        \override Staff.TimeSignature #'stencil = ##f 

         \rightOne
        
      } % Voice
      \new Lyrics \with {alignBelowContext="track 1"} \lyricsto "voice 2" \lyricmode {
        \override LyricText #'self-alignment-X = #LEFT
        \set ignoreMelismata = ##t
        \lyricsOne
        \unset ignoreMelismata
      } % Lyrics 1
    >>
  >>


  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
