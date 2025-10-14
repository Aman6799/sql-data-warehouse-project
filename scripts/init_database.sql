/* 
Create Database and schemas

===============================================================

Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionaly, the script sets up three schemas eith the database: 'bronze','Silver' and 'gold'

Warning:

Running this script will drop the enitre 'DataWarehouse' database if it exists.
All data in the database will permenently deleted, proceed with caution.
adn ensure you have proper backups before running this scripts
*/



Use master;
GO

-- Drop and recreate the 'DataWarehouse' Database
If EXISTS ( Select 1 from sys.database Where name = 'DataWarehouse')
BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END:
GO

--- Create Database DataWarehouse

Create database DataWarehouse;
GO

Use DataWarehouse;

--- Create Schema's


CREATE SCHEMA bronze;
Go
CREATE SCHEMA Silver;
Go
CREATE SCHEMA Gold;
