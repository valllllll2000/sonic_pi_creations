use_bpm 90  # Adjust BPM as needed for your playing speed

# Create a live loop for the rumba beat
live_loop :rumba do
  # Beat 1: Strong bass hit
  sample :drum_bass_soft, amp: 2
  sleep 0.5
  
  # Beat 2: Clap
  sample :perc_snap, amp: 1.5
  sleep 0.5
  
  # Beat 3: Bass hit with a syncopated feel
  sample :drum_bass_soft, amp: 1.8
  sleep 0.25
  
  # Beat 4: Two claps (syncopation)
  sample :perc_snap, amp: 1.3
  sleep 0.25
  sample :perc_snap, amp: 1.3
  sleep 0.5
  
  # Light snare or cajón slap for variation
  #sample :drum_snare_soft, amp: 1
  #sleep 0.25
end

