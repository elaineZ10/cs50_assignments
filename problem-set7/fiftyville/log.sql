-- Keep a log of any SQL queries you execute as you solve the mystery.
-- check the crime_scene_reports for more info
SELECT description FROM crime_scene_reports
WHERE year = 2023 AND month = 7 AND day = 28 AND street = 'Humphrey Street';

-- check out the mentioned interviews
SELECT name, transcript FROM interviews
WHERE year = 2023 AND month = 7 AND day = 28;

-- get more info from the Bakery parking lot security footage, the ATM on Leggett Street and phone_calss
-- and flights
SELECT activity, license_plate FROM bakery_security_logs
WHERE year = 2023 AND month = 7 AND day = 28 AND hour = 10 AND minute >= 15 AND minute <= 25;

SELECT people.name, people.id, people.license_plate,people.phone_number FROM people, bank_accounts, atm_transactions
WHERE people.id = bank_accounts.person_id
AND bank_accounts.account_number = atm_transactions.account_number
AND year = 2023 AND month = 7 AND day = 28 AND atm_location = 'Leggett Street'
AND transaction_type = 'withdraw';
-- the suspects are narrowed down to Bruce, Diana, Iman and Luca

SELECT name, phone_calls.duration FROM people
JOIN phone_calls ON people.phone_number = phone_calls.caller
WHERE phone_calls.year = 2023 AND phone_calls.month = 7 AND phone_calls.day = 28 AND phone_calls.duration <= 60
ORDER BY phone_calls.duration;
-- now the suspects of the thief are narrowed down to only Bruce and Diana,and they called to Robin
-- and Philip respectively

SELECT abbreviation, full_name, city FROM airports
WHERE city = 'Fiftyville';
-- CSF Fiftyville Regional Airport, Fiftyville

SELECT flights.id, full_name, city, flights.hour, flights.minute FROM airports JOIN flights
ON airports.id = flights.destination_airport_id
WHERE flights.origin_airport_id =
       (SELECT id
          FROM airports
         WHERE city = 'Fiftyville')
AND flights.year = 2023 AND flights.month = 7 AND flights.day = 29
ORDER BY flights.hour, flights.minute;
-- the first flight heading to LaGuardia Airport could be where the suspect is headed for
SELECT passengers.flight_id, name, passengers.passport_number, passengers.seat
FROM people JOIN passengers ON people.passport_number = passengers.passport_number
JOIN flights ON passengers.flight_id = flights.id
WHERE flights.year = 2023 AND flights.month = 7 AND flights.day = 29 AND flights.hour = 8
AND flights.minute = 20 ORDER BY passengers.passport_number;
-- we could conlcude that Bruce is the thief, and Robin is his accomplice
