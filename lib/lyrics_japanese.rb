# frozen_string_literal: true

require 'lyrics_japanese/version'

# rubocop:disable Style/AsciiComments

# 文字列クラスにちょっとメソッド追加
class String
  def to_hiragana
    tr('ァ-ン', 'ぁ-ん')
  end

  def katakana?
    !(self =~ /\p{Katakana}|[ー－]/).nil?
  end

  # 「うたえー」を「う た え ー」に変換。
  def separate_kana(delim = ' ')
    tmp = +''
    each_char do |ch|
      tmp << ch
      tmp << delim unless ch.ascii_only?
    end
    tmp.chomp(delim)
  end

  # 「き ゃ き ゅ き ょ」を「きゃ きゅ きょ」に変換。「っ」歌うから残す
  def join_phoneme(delim = ' ')
    gsub(/#{delim}([ぁぃぅぇぉゃゅょァィゥェォャュョー－])/, '\1')
  end
end

# 日本語表記を音符の下に書く表記に変換
module LyricsJapanese
  require 'natto'
  require 'yaml'

  # 日本語表記を音符の下に書く表記に変換
  class LyricsJapanese
    @@natto = Natto::MeCab.new # rubocop:disable Style/ClassVars

    # メインメソッド
    # mecabを使って読みがなに変換。
    # 読みがなにしても文字数が変化しないなら漢字を使う
    # カタカナ語とアルファベットはそのまま出力。
    #
    def to_lyricruby(text, delim = ' ') # rubocop:disable Metrics/AbcSize
      lines = []
      text.each do |sentence|
        words = []
        @@natto.parse(sentence) do |n|
          unless n.is_eos?
            # puts "#{n.surface}\t#{n.feature}"
            rubi = n.surface
            if n.feature.split(',').length > 8 && !n.surface.katakana?
              w7 = n.feature.split(',')[7]
              rubi = w7.to_hiragana if w7.length != n.surface.length
            end
            words << rubi.separate_kana(delim).join_phoneme
          end
        end
        lines << words.join(delim)
      end
      lines
    end
  end
end
# rubocop:enable Style/AsciiComments
