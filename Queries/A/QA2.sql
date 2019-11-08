-- Mencari airports yang mengandung tipe 'military'
SELECT ap.name, ap.type FROM airports AS ap WHERE ap.type LIKE '%military%';