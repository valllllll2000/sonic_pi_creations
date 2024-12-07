# Set the tempo
use_bpm 119

# Define the basic kick and snare pattern
live_loop :drum_beat do
  sample :bd_haus, amp: 2  # Kick drum
  sleep 1                      # Hold for 1 beat
  sample :sn_dolf, amp: 1.5  # Snare drum
  sleep 1                      # Hold for 1 beat
  sample :bd_haus, amp: 2  # Kick drum
  sleep 1                      # Hold for 1 beat
  sample :sn_dolf, amp: 1.5  # Snare drum
  sleep 1                      # Hold for 1 beat
end

# Define a simple hi-hat pattern
live_loop :hihat do
  sync :drum_beat             # Sync with the drum beat
  sample :drum_cymbal_open, amp: 0.5  # Open hi-hat on every 1/2 beat
  sleep 0.5                   # Hold for 1/2 beat
end

# Adding some extra percussion (optional)
live_loop :percussion do
  sync :drum_beat             # Sync with the drum beat
  sleep 1                      # Wait for 1 beat
  sample :drum_heavy_kick, amp: 0.5  # Extra kick sound
  sleep 1                      # Wait for 1 beat
end