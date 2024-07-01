# Final Project: Belay (a Slack clone)

40 points

**DUE: Friday, May 24 by 5:00pm**
## Getting Start

1. Install the required dependencies:
- `pip3 install -r requirements.txt`

2. Start the Flask application:
- `flask run`

3. Start the React application:
- `cd frontend_react`
- `npm start`


## Introduction

As a capstone project for Web Development, we're going to combine the various
front-end and back-end techniques we've learned over the course to produce a
modern, database-backed single-page application. Specifically, we'll be building
our own (significantly smaller in scope) version of the popular workplace
messaging app Slack. We'll call our version
[Belay](https://en.wikipedia.org/wiki/Belaying).

## Core Behavior

- Belay lets users send and read real-time chat messages that are organized into
  rooms called Channels. Users see a list of all the channels on the server and
  can click one to enter that channel. Inside, they see all the messages posted
  to that channel by any user, and can post their own messages. All messages
  belong to a channel and all channels are visible to all users; we don't need
  to implement private rooms or direct messages.
- Any user can create a new channel by supplying a display name. Channel names
  must be unique. If you wish, you may choose to limit what characters are
  allowed in channel names.
- Like Slack, messages may be threaded as Replies in response to a message in a
  channel. Messages in the channel will display how many replies they have if
  that number is greater than zero. We don't support nested threads; messages
  either belong directly to a channel or are replies in a thread to a message
  that does, but replies can't have nested replies of their own.

