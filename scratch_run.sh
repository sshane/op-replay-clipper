/bin/bash clip.sh \
  `# Get the route / segment id from https://connect.comma.ai and put it below` \
  "d545129f3ca90f28|2022-12-15--11-51-10" \
  `# Get a token from https://jwt.comma.ai` \
  --jwt-token "replace_this_with_that_token" \
  `# Segment IDs start from 0. e.g. fe18f736cb0d7813|2022-11-11--20-20-49--1 has a segment id of 1` \
  `# Multiply the segment number by 60 and add an offset if you want.` \
  --start-seconds 0 \
  `# It's the length of a clip. Keep it short. Or long, if you want.` \
  `# Longer clips take proportionally longer to render.` \
  --smear-amount 10 \
  --length-seconds 300 \
  `# https://ntfy.sh can be used to provide desktop notifications when a rendering is complete.` \
  `# Pick a unique topic name of your choice, and replace "ntfy_topic_of_your_choice" below with it` \
  `# Then, visit and allow desktop notifications from https://ntfy.sh/ntfy_topic_of_your_choice` \
  `# so you know when its done and get a nice notification on your desktop to come back.` \
  `# Much of the world like a superior systems of measurement. Uncomment-ize the next line to render in metric.` \
  `# --metric` \
  `# Change the output clip file name here. Any existing files will be overwritten.` \
  --output test.mp4