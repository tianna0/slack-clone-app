-- sqlite3 belay.db < /Users/tian_xin/Documents/GitHub/final-project-belay-tianna0/db/migrations/20240521_013730_belay_schema.sql

CREATE TABLE IF NOT EXISTS reactions (
    id INTEGER PRIMARY KEY,
    emoji TEXT NOT NULL,
    message_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (message_id) REFERENCES messages(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS seen_messages (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    channel_id INTEGER NOT NULL,
    latest_message_id INTEGER NOT NULL,
    time_seen TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (channel_id) REFERENCES channels(id),
    FOREIGN KEY (latest_message_id) REFERENCES messages(id)
);