live_loop :flamenco_beat do
  use_bpm 80  # Adjust to your preferred tempo
  
  # Strong beat (bass or golpe sound)
  sample :drum_bass_soft, amp: 2
  sleep 0.5
  
  # Palmas (clapping sound)
  sample :perc_snap, amp: 1.5
  sleep 0.25
  
  # Light hit (like cajón slap)
  sample :drum_tom_hi_soft, amp: 1
  sleep 0.25
  
  # Rest of the compás
  sample :drum_tom_lo_soft, amp: 1.5
  sleep 0.5
  
  sample :perc_snap, amp: 1.5
  sleep 0.25
  
  sample :perc_snap, amp: 1.2
  sleep 0.25
  
  sample :drum_bass_soft, amp: 2
  sleep 0.5
  
  sample :drum_tom_lo_soft, amp: 1.5
  sleep 0.5
end
