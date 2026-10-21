\version "2.24.0"

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\score {
  \new PianoStaff <<
    \new Staff { \clef treble \repeat unfold 6 { s1 \break } }
    \new Staff { \clef bass \repeat unfold 6 { s1 \break } }
  >>
  \layout {
    \context {
      \Score
      \override BarNumber.stencil = ##f
      \override TimeSignature.stencil = ##f
    }
  }
}


