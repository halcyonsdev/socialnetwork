-- =========================================
-- Description: Create the ratings table
-- Author: Halcyon
-- Version: V1.0.0
-- =========================================

CREATE TABLE IF NOT EXISTS ratings (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    created_at TIMESTAMP NOT NULL,
    is_like BOOLEAN NOT NULL,
    owner_email VARCHAR(100) NOT NULL,
    post_id BIGINT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(id)
)