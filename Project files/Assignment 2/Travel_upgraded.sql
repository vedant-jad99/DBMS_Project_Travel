use mydb;
desc Transactions;

-- Inserting values in the database. Here tax is derived attribute
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time) values (1, "Online", 100, "9999-12-31 23:59:59");
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time) values (2, "Online", 300, "2000-12-31 23:59:59");
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time) values (3, "Offline", 512, "2002-12-31 23:59:59");

-- This will violate primary key constraint
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time) values (1, "Online", 100, "9999-12-31 23:59:59");

-- This will violate not null constraint
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time) values (4, "Online", 311, null);

-- Violate the default key constraint
insert into Transactions (transactions_id, Transaction_mode, Amount, Date_time, Tax) values (3, "Offline", 512, "2002-12-31 23:59:59", 92.16);

-- Inserting values in the dependent table first to check foreign key constraints. This query will fail.
insert into Customers_has_Tickets (Customers_Customer_id, Tickets_Ticket_uid) values (1, 2);

select * from Transactions
