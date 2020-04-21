CHAR(X)         -- fixed length
VARCHAR(X)      -- max: 65,535 characters (~64KB)
TINYTEXT        -- max: 255 characters
TEXT            -- max: 64KB
MEDIUMTEXT      -- max: 16MB
LONGTEXT        -- max: 4GB

VARCHAR(50)     -- short strings (usernae/password)
VARCHAR(255)    -- medium length string (address)
TINYTEXT
MEDIUMTEXT      -- json object, csv string
LONGTEXT        -- text book, years of log files

-- English letter:              1 byte
-- European/Middle-eastern:     2 bytes
-- Asia (Japanese, Chinese):    3 bytes

-- Example: CHAR(10) => 30 bytes
