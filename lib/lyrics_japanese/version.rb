# frozen_string_literal: true

module LyricsJapanese
  VERSION = '1.0.0'
  DESCRIPTION = <<~DESC
    This is a helper script for entering Japanese lyrics into
    music scores. lyrics_japanes converts natural Japanese sentences
    into word-spacing notes for musical notes.
    example:
      "恋しちゃおう 夢 見ちゃおう 恋のダンスサイト" is converted to
      "こ い し ちゃ お う ゆ め 見 ちゃ お う こ い の ダ ン ス サ イ ト"
    This format can be directly put into the lyrics window
    of DAW software "Digital Performer" released by MOTU.
  DESC
  REPOSITORY_URL = 'https://github.com/shinyaohtani/lyrics_japanese'
end
