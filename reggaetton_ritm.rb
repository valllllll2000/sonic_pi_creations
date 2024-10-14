# Welcome to Sonic Pi

use_bpm 98  # Set the tempo to 98 BPM

# Chorus Melody: "Dale poder, que se lo ganó"
define :chorus do
  play :a4, release: 0.5  # A4 quarter note
  sleep 0.5
  play :a4, release: 0.5  # A4 quarter note
  sleep 0.5
  play :c5, release: 0.5  # C5 quarter note
  sleep 0.5
  play :d5, release: 0.5  # D5 quarter note
  sleep 0.5
  play :e5, release: 1  # E5 half note
  sleep 1
end

# Verse Melody: "Mírala, brilla, con su propia luz"
define :verse do
  play :c5, release: 0.25  # C5 eighth note
  sleep 0.25
  play :d5, release: 0.25  # D5 eighth note
  sleep 0.25
  play :e5, release: 0.5  # E5 quarter note
  sleep 0.5
  sleep 0.25  # Rest eighth note
  play :c5, release: 0.25  # C5 eighth note
  sleep 0.25
  sleep 0.25  # Rest eighth note
  play :a4, release: 0.25  # A4 eighth note
  sleep 0.25
end

# Pre-Chorus Melody: "No le digas qué vestir, ella manda aquí"
define :pre_chorus do
  play :a4, release: 0.5  # A4 quarter note
  sleep 0.5
  play :c5, release: 0.25  # C5 eighth note
  sleep 0.25
  play :e5, release: 0.25  # E5 eighth note
  sleep 0.25
  play :g5, release: 0.5  # G5 quarter note
  sleep 0.5
end

# Bridge Melody: "Con la cabeza alta, va caminando"
define :bridge do
  play :f5, release: 0.5  # F5 quarter note
  sleep 0.5
  play :g5, release: 0.5  # G5 quarter note
  sleep 0.5
  play :a5, release: 1  # A5 half note
  sleep 1
end

# Reggaeton Beat (Dembow pattern)
define :dembow_beat do
  sample :bd_haus, amp: 0.2  # Kick drum
  sleep 0.5
  sample :sn_dolf, amp: 0.1  # Snare
  sleep 0.25
  sample :bd_haus, amp: 0.2  # Kick drum
  sleep 0.25
  sample :bd_haus, amp: 0.2  # Kick drum
  sleep 0.25
  sample :sn_dolf, amp: 0.1  # Snare
  sleep 0.5
end

# Play the song structure
live_loop :reggaeton_song do
  in_thread do
    loop do
      dembow_beat
    end
  end
  chorus
  sleep 1
  verse
  sleep 1
  pre_chorus
  sleep 1
  bridge
  sleep 2
end