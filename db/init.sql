CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    done BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO tasks (name, done) VALUES 
('Learning Docker', false),
('Kinda Learning Docker', true),
('Always Learning Docker', false),
('Learning Go', true);