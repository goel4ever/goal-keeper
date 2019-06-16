INSERT INTO account_owner (name)
    VALUES
        ('Anshul'),
        ('Mansi');

INSERT INTO financial_institution (institution_code, institution_name, description)
    VALUES
        ('JOB', 'Employer'),

        ('BOA', 'Bank of America'),
        ('CHA', 'Chase Bank'),
        ('CAP', 'Capital One'),
        ('ALY', 'Ally Bank'),
        ('EMP', 'Empower Retirement'),
        ('WGW', 'Wageworks'),
        ('NYL', 'New York Life Insurance'),

        ('CTI', 'Citi Bank'),
        ('DIS', 'Discover'),
        ('HDP', 'Home Depot'),
        ('WFO', 'Wells Fargo'),
        ('EBT', 'Ebates'),
        ('KOH', 'Kohls'),

        ('RBH', 'Robinhood'),
        ('ETD', 'E Trade'),
        ('STA', 'Stash'),
        ('IBS', 'Interactive Brokers'),
        ('WEB', 'Webull Investment'),
        ('FID', 'Fidelity'),

        ('FBM', 'First Bank'),
        ('CSH', 'CASH'),
        ('BNB', 'AirBnb'),
        ('UCL', 'Upwork Client'),
        ('UCO', 'Upwork Consultant');

INSERT INTO financial_account_type (account_type_code, account_type)
    VALUES
        ('CHK', 'Checking Account'),
        ('SAV', 'Savings Account'),
        ('CRD', 'Credit Card'),
        ('LOA', 'Loan Account'),
        ('RET', 'Retirement Account'),
        ('HSA', 'Health Savings Account'),
        ('POL', 'Policy'),
        ('INV', 'Investment Account'),
        ('INC', 'Additional Income Sources');

INSERT INTO financial_account (owner_id, institution_code, account_type_code, last_four, account_nick_name, purpose)
    VALUES
        (1, 'BOA', 'CHK', 4043, 'Primary paycheck', 'Primary salary account'),
        (1, 'BOA', 'CRD', 3058, 'Better Balance - MC', 'Credit card'),
        (1, 'BOA', 'CRD', 4790, 'Better Balance - Visa', 'Credit card'),

        (1, 'CHA', 'CHK', 2757, 'Secondary paycheck', 'Secondary salary account'),

        (1, 'CAP', 'SAV', 6367, 'Joint Medical', 'Savings Goal'),
        (1, 'CAP', 'SAV', 4797, 'Vacation', 'Savings Goal'),
        (1, 'CAP', 'SAV', 5851, 'Shopping', 'Savings Goal'),
        (1, 'CAP', 'SAV', 6559, 'Vehicle Maintenance', 'Savings Goal'),
        (1, 'CAP', 'SAV', 8254, 'Home Expenses', 'Savings Goal'),
        (1, 'CAP', 'SAV', 0903, 'Policy', 'Savings Goal'),
        (1, 'CAP', 'SAV', 5351, 'Children', 'Savings Goal'),
        (1, 'CAP', 'SAV', 6063, 'Education', 'Savings Goal'),
        (1, 'CAP', 'SAV', 6193, 'Gym', 'Savings Goal'),
        (1, 'CAP', 'SAV', 6205, 'Work', 'Savings Goal'),
        (1, 'CAP', 'SAV', 5208, 'Rainy Day', 'Savings Goal'),
        (1, 'CAP', 'SAV', 5370, 'Charity', 'Savings Goal'),
        (1, 'CAP', 'SAV', 4396, 'Mansi Salary - Tax', 'Savings Goal'),
        (1, 'CAP', 'SAV', 3545, 'AirBnb', 'Savings Goal'),
        (1, 'CAP', 'CHK', 8747, 'Checking Account', 'Just in case checking account'),

        (1, 'ALY', 'SAV', 4650, 'Savings Account', 'Savings Goal'),

        (1, 'EMP', 'RET', NULL, '401k', 'Traditional and Roth 401k account - Booking Holdings'),
        (1, 'WGW', 'HSA', NULL, 'HSA Account', 'Medical savings account - Booking Holdings'),
        (1, 'NYL', 'POL', NULL, 'Custom Life Policy - Anshul', ''),
        (1, 'NYL', 'POL', NULL, 'Custom Life Policy - Vedika', ''),
        (1, 'NYL', 'POL', NULL, 'Term Insurance - Anshul', '250k - First policy'),
        (1, 'NYL', 'POL', NULL, 'Term Insurance - Anshul', '250k - Second policy'),
        (2, 'NYL', 'POL', NULL, 'Term Insurance - Mansi', '250k - First policy'),
        (2, 'NYL', 'POL', NULL, 'Term Insurance - Mansi', '250k - Second policy'),

        (1, 'CTI', 'CRD', NULL, 'American Airlines Card', 'Card for Airline miles'),
        (1, 'CTI', 'CRD', NULL, 'Costco Credit Card', 'Costco'),
        (1, 'DIS', 'CRD', NULL, 'Discover Credit Card', '1.5% cashback'),
        (1, 'HDP', 'CRD', NULL, 'Home Depot Credit Card', 'Home Depot Transactions'),
        (1, 'WFO', 'CRD', NULL, 'Bobs Furniture Credit Card', ''),
        (1, 'EBT', 'CRD', NULL, 'Ebates Credit Card', ''),
        (1, 'KOH', 'CRD', NULL, 'Kohls Charge Card', ''),

        (1, 'RBH', 'INV', NULL, 'Robinhood', 'Default Stocks investment account'),
        (1, 'ETD', 'INV', NULL, 'E Trade', '[Deprecated] - stocks investment account'),
        (1, 'STA', 'INV', NULL, 'Stash', 'Long term stock investment'),
        (1, 'IBS', 'INV', NULL, 'Interactive Brokers', 'Stocks investment account. Migrate all stock here.'),
        (1, 'WEB', 'INV', NULL, 'Webull', 'Stocks investment account'),
        (1, 'FID', 'INV', NULL, 'Fidelity', '[Deprecated] - stocks investment account'),

        (1, 'FBM', 'LOA', NULL, 'First Bank Mortgage', 'Primary home mortgage'),
        (1, 'CSH', 'SAV', NULL, 'Cash money', 'Cash in hand'),
        (1, 'BNB', 'INC', NULL, 'AirBnb Rental Income', 'Rental income from AirBnb'),
        (1, 'UCL', 'INV', NULL, 'Upwork Client Account', 'Hire freelancers'),
        (1, 'UCO', 'INC', NULL, 'Upwork Consulting', 'Income from Upwork');

INSERT INTO transaction_type (type_code, type)
    VALUES
        ('CRD', 'Credit'),
        ('DBT', 'Debit');

