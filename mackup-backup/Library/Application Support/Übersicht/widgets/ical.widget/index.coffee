# A widget that displays your calendar events for today and tomorrow
# Made by David Brooks
# First time ever writing in JavaScript
# Using icalBuddy found here: http://hasseg.org/icalBuddy/

# This command shows all of your events for today and tomorrow
command: "'/usr/local/bin/icalBuddy' -sd -n eventsToday 2>/dev/null"

# the refresh frequency is 1 hour
refreshFrequency: 3600000

# text-shadow: 0 0 1px rgba(#000, 0.5)

style: """
  top: 20%
  right: 20%
  color: #fff
  font-family: Helvetica Neue
  
  div
    display: block
    font-size: 12px
    font-weight: 300
"""

renderLine: (string) -> """
  <div class='ical'>
    <div class='label'>#{string}</div>
"""

update: (output, domEl) ->
  lines = output.split('\n')
  $(domEl).html ''
  $(domEl).html 'No Events Today or Tomorrow' if output is ""
  for line in lines
  	$(domEl).append @renderLine(line)

