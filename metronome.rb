use_bpm 90  # desired BPM

# Define the metronome live loop
live_loop :metronome do
  sample :drum_bass_soft, amp: 0.5
  sleep 1  # Wait for 1 second (1 beat)
end