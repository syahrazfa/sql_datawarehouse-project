-- =====================================================
-- Tokopedia Traffic → Revenue Diagnosis
-- Database Initialization Script
-- =====================================================
--
-- PURPOSE:
-- This script creates the PostgreSQL database required
-- for the Tokopedia decision-grade data warehouse.
--
-- It must be executed ONCE by an administrator before
-- running any warehouse schema or data modeling scripts.
--
-- This file is NOT part of the warehouse logic layer.
-- It exists only to provision the database environment.
--
-- WARNING:
--  - This script requires superuser / database-admin rights.
--  - It should NEVER be included in automated warehouse
--    rebuild pipelines.
--  - Running this script on an existing production database
--    may cause irreversible data loss.
--
-- =====================================================

-- Check whether the database is already exist or not, if not then create database
DO $$
BEGIN
   IF NOT EXISTS (
      SELECT 1 FROM pg_database WHERE datname = 'tokopedia_dw'
   ) THEN
      CREATE DATABASE tokopedia_dw;
   END IF;
END$$;


-- Bronze: Raw reality capture
CREATE SCHEMA IF NOT EXISTS bronze;

-- Silver: Clean, normalized business truth
CREATE SCHEMA IF NOT EXISTS silver;

-- Gold: Decision-grade capital allocation layer
CREATE SCHEMA IF NOT EXISTS gold;
