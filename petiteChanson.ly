
\include "italiano.ly"

\score { \simultaneous {
  \new StaffGroup << \new TabStaff {
    <<
    {
        \time 4/4
        
        < mi'\1 do'\2 la\3 mi\4 la,\5 > 4 mi'\1 si\2 sold\3
        s2 s4 < mi,\6 si,\5 mi\4 sold\3 si\2 mi'\1 >
        s2 la4\3 do'\2
        mi'\1 mi'\1 do'\2 la\3
        s s8 < la,\5 mi\4 la\3 do'\2 mi'\1 > < la,\5 mi\4 la\3 do'\2 mi'\1 > 16 < la,\5 mi\4 la\3 do'\2 mi'\1 > < la,\5 mi\4 la\3 do'\2 mi'\1 > < la,\5 mi\4 la\3 do'\2 mi'\1 > < mi'\1 dod'\2 la\3 mi\4 la,\5 > 4
        < si,\5 sol,\6 re\4 sol\3 si\2 sol'\1 > 1
        \bar "|."

    }
    {
        \time 4/4 s1
        mi4\4 si,\5 mi,\6 s
        la,\5 mi\4 s2
        s1
        mi4\4 la,\5 s2
        s1
    }
    >>
  }
  >>
}}