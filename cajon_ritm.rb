live_loop :cajon_beat do
  use_bpm 120  # Adjust BPM as needed
  
  # Simulating bass hit (slap on the lower part of the cajón)
  sample :drum_bass_soft, amp: 2
  sleep 0.5
  
  # Simulating tone hit (higher slap sound)
  sample :drum_tom_lo, amp: 1.5
  sleep 0.25
  
  # Adding a clap or slap for variation
  sample :perc_snap, amp: 1.2
  sleep 0.25
  
  # Additional tone for variety
  sample :drum_tom_lo, amp: 1
  sleep 0.5
end
