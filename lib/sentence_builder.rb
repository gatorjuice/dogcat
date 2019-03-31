require 'random-word'
require 'espeak'
require 'lolize'

class SentenceBuilder

  def speak
    speech = ESpeak::Speech.new(sentence, speed: rand(80..150), pitch: rand(1..99))
    colorizer = Lolize::Colorizer.new
    system('clear')
    colorizer.write speech.text
    speech.speak
  end

  private

  def sentence
    "#{subject} #{article} #{adjective} and #{adjective} #{noun}, " \
    "#{second_phrase_start} #{article} #{noun} has #{adjective} #{noun}"
  end

  def subject
    subjects.sample
  end

  def article
    %w(the a).sample
  end

  def second_phrase_start
    second_phrase_starts.sample
  end

  def noun
    RandomWord.nouns.next.gsub('_', ' ')
  end

  def adjective
    RandomWord.adjs.next.gsub('_', ' ')
  end

  def subjects
    [
      'I love',
      'I want',
      'where is',
      'please help me find',
      'cats love',
      'dogs love',
      'so many lusting after',
      'my mother hates',
      'my father wanted',
      'my cousin takes',
      'all of my friends prefer',
      'your favorite part of living is',
      'I can feel'
    ]
  end

  def second_phrase_starts
    [
      'becaws',
      'unless',
      'assuming',
      'however',
      'whenever',
      'since',
      'where as'
    ]
  end
end
