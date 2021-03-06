-- Up
CREATE TABLE `tokens` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  `user_id` INTEGER NOT NULL,
  `hash` TEXT NOT NULL UNIQUE,
  `media_hash` TEXT NOT NULL UNIQUE,
  `ip` TEXT NOT NULL,
  `user_agent` TEXT NOT NULL,
  `created_at` INTEGER NOT NULL,
  `expires_at` INTEGER NOT NULL,
  FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

-- Down
DROP TABLE `tokens`;
