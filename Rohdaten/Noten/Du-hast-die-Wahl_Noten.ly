\layout {
%  #(set! paper-alist (cons '("mein Format" . (cons (* 28 cm) (* 20 cm))) paper-alist))
%  #(set-default-paper-size "mein Format")
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\paper {
 oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
}
\header{
  title = "Du hast die Wahl"
 subtitle = "Bundeslagerlied 2022"
 
composer = "Text: Anastasia Schönfeld und Chrissi Brüggemann" 
arranger = "Melodie: Singekreis Mitteldeutschland"
}

Akkorde = \chords { \time 4/4  \set chordNameLowercaseMinor = ##t  \germanChords
 g1 s1 c1 s1
 d1 s1 e1:7 s1
 c s1 g1 d1 e1:m s1
 s g d g s c g s c s e:m c s g

}


\score {
\new ChoirStaff <<
      \Akkorde

    \new Staff {
      \new Voice = "melody" {
\relative c' {\key c\major  \time 4/4
           \repeat volta 2 { g'4. g8 g4 a 4 b a4 g fis4 g4. g8 g4 a4 g4  r2
            g8 g a4 a a4. a8 a4 a d c b4. b8 b4 c b4 r2
            b8 b c4 c c8 c4. d4 c r4  c8 c c2 b a d b r2 } \alternative{{r2. b8 a8 \break}{r2. b8 b}}

       b2 r8 b8 b b d d2 r8 d8 c b4 b r4 b8 b b2 r4 b8 b c8 c4. d4 e d2 b4( c4)  b2 r8 b8 b8 b8 c2. c8 c c4( d c) g b2 r8
       b8 b b c4. d8 c4. d8 c2 r8 c8 c b g2 r2 \bar"|."
         
       
}
      }
    }
    \new Lyrics = "firstVerse" \lyricsto "melody" { <<
      {
      
\large \set stanza = #"1."Auf -- ge -- regt auf mei -- ner Rei -- se, Kribbeln in mei -- nem Bauch,
ma -- che ich mich auf den Weg und weiß, die an -- der'n füh -- len's auch.
Ich ent -- dec -- ke die Ge -- sich -- ter, sie er -- wi -- dern mei -- nen Blick. Und so
   }

\new Lyrics = "zweite"
        \with { alignBelowContext = #"firstVerse" } {
	  \set associatedVoice = "melody" \set stanza = "" \large 
	  fah -- ren wir als Freun -- de, al -- le mit dem -- sel -- ben Ziel
	  durch das gan -- ze Land zu ei -- nem Ort, doch wis -- sen noch nicht viel
	  von den an -- der'n, die dort war -- ten, was be -- wegt und was ge -- schieht.
                                                    } >>
                                                
\set stanza = #"Refrain:" Hey hey hey, wir geh'n zu -- sam -- men in die Zu -- kunft!
Hey hey hey, wir er -- schaf -- fen uns' -- rer Träu -- me Weg. 
Wo geht es hin? In die neu -- e Stadt.
Du hast die Wahl, drum ge -- he nun den ers -- ten Schritt!


    }
>>
%\midi{ }
}
