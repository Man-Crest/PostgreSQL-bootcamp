create TABLE t_tags(
    id serial primary KEY,
    tag text UNIQUE,
    update_at TIMESTAMP DEFAULT NOW()
);

select * FROM t_tags

INSERT into t_tags (tag) VALUES
('a'), 
('b'), 
('c'), 
('d'); 

UPDATE t_tags
SET tag= NULL
WHERE id = 6

-- NOTE: ON CONFLICT DO NOTHING syntex

INSERT into t_tags (tag) 
values ('e')
ON CONFLICT (tag)
DO 
    NOTHING;

-- NOTE: ON CONFLICT DO UPDATE syntex


INSERT into t_tags (tag) 
values ('c')
ON CONFLICT (tag)
DO 
    UPDATE set 
    tag = EXCLUDED.tag,
    update_at = NOW();