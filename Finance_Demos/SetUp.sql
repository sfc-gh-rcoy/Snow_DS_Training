
-- DATABASE AND SCHEMA SETUP
-- If you already have a DB and Schema you feel comfortable using just set them otherwise create new ones
USE DATABASE FSI_DEMO_DB;
USE SCHEMA FSI_DEMO_DB.QRI;

-- =====================================================
-- TABLE 1: PORTFOLIO_HOLDINGS
-- =====================================================
CREATE OR REPLACE TABLE PORTFOLIO_HOLDINGS (
    HOLDING_ID INT AUTOINCREMENT,
    FUND_NAME VARCHAR(100),
    TICKER VARCHAR(10),
    COMPANY_NAME VARCHAR(200),
    SECTOR VARCHAR(100),
    SHARES_HELD NUMBER(18,2),
    AVG_COST_BASIS NUMBER(18,4),
    CURRENT_PRICE NUMBER(18,4),
    MARKET_VALUE NUMBER(18,2),
    WEIGHT_PCT NUMBER(8,4),
    UNREALIZED_PNL NUMBER(18,2),
    AS_OF_DATE DATE
);

INSERT INTO PORTFOLIO_HOLDINGS (FUND_NAME, TICKER, COMPANY_NAME, SECTOR, SHARES_HELD, AVG_COST_BASIS, CURRENT_PRICE, MARKET_VALUE, WEIGHT_PCT, UNREALIZED_PNL, AS_OF_DATE)
VALUES
-- ADVANCED US EQUITY FUND (~50 holdings)
('Advanced US Equity Fund', 'AAPL', 'Apple Inc', 'Technology', 125000, 142.50, 178.25, 22281250, 5.20, 4468750, '2026-03-03'),
('Advanced US Equity Fund', 'NVDA', 'NVIDIA Corp', 'Technology', 18500, 425.00, 875.50, 16196750, 4.80, 8334250, '2026-03-03'),
('Advanced US Equity Fund', 'MSFT', 'Microsoft Corp', 'Technology', 42000, 285.00, 415.75, 17461500, 4.50, 5491500, '2026-03-03'),
('Advanced US Equity Fund', 'UNH', 'UnitedHealth Group', 'Healthcare', 25000, 425.00, 545.20, 13630000, 3.90, 3005000, '2026-03-03'),
('Advanced US Equity Fund', 'JPM', 'JPMorgan Chase', 'Financials', 68000, 135.00, 198.45, 13494600, 3.50, 4314600, '2026-03-03'),
('Advanced US Equity Fund', 'LLY', 'Eli Lilly', 'Healthcare', 15500, 520.00, 785.30, 12172150, 3.20, 4112150, '2026-03-03'),
('Advanced US Equity Fund', 'GOOGL', 'Alphabet Inc', 'Technology', 72000, 105.00, 165.80, 11937600, 3.10, 4377600, '2026-03-03'),
('Advanced US Equity Fund', 'AMZN', 'Amazon.com Inc', 'Consumer Discretionary', 58000, 125.00, 195.45, 11336100, 2.95, 4085100, '2026-03-03'),
('Advanced US Equity Fund', 'META', 'Meta Platforms Inc', 'Technology', 22000, 285.00, 515.20, 11334400, 2.90, 5064400, '2026-03-03'),
('Advanced US Equity Fund', 'V', 'Visa Inc', 'Financials', 38000, 215.00, 285.60, 10852800, 2.80, 2682800, '2026-03-03'),
('Advanced US Equity Fund', 'MA', 'Mastercard Inc', 'Financials', 22500, 365.00, 478.90, 10775250, 2.75, 2562750, '2026-03-03'),
('Advanced US Equity Fund', 'HD', 'Home Depot', 'Consumer Discretionary', 28000, 295.00, 365.40, 10231200, 2.65, 1971200, '2026-03-03'),
('Advanced US Equity Fund', 'PG', 'Procter & Gamble', 'Consumer Staples', 62000, 138.00, 162.85, 10096700, 2.60, 1540700, '2026-03-03'),
('Advanced US Equity Fund', 'MRK', 'Merck & Co', 'Healthcare', 78000, 98.00, 128.45, 10019100, 2.55, 2375100, '2026-03-03'),
('Advanced US Equity Fund', 'ABBV', 'AbbVie Inc', 'Healthcare', 55000, 145.00, 178.90, 9839500, 2.50, 1864500, '2026-03-03'),
('Advanced US Equity Fund', 'AVGO', 'Broadcom Inc', 'Technology', 7200, 985.00, 1325.50, 9543600, 2.45, 2451600, '2026-03-03'),
('Advanced US Equity Fund', 'COST', 'Costco Wholesale', 'Consumer Staples', 12500, 545.00, 745.80, 9322500, 2.40, 2510000, '2026-03-03'),
('Advanced US Equity Fund', 'CVX', 'Chevron Corp', 'Energy', 58000, 145.00, 158.25, 9178500, 2.35, 768500, '2026-03-03'),
('Advanced US Equity Fund', 'WMT', 'Walmart Inc', 'Consumer Staples', 135000, 52.00, 67.85, 9159750, 2.30, 2139750, '2026-03-03'),
('Advanced US Equity Fund', 'CRM', 'Salesforce Inc', 'Technology', 32000, 225.00, 285.40, 9132800, 2.25, 1932800, '2026-03-03'),
('Advanced US Equity Fund', 'TMO', 'Thermo Fisher Scientific', 'Healthcare', 16000, 485.00, 565.20, 9043200, 2.20, 1283200, '2026-03-03'),
('Advanced US Equity Fund', 'ACN', 'Accenture plc', 'Technology', 28000, 285.00, 318.50, 8918000, 2.15, 938000, '2026-03-03'),
('Advanced US Equity Fund', 'AMD', 'Advanced Micro Devices', 'Technology', 52000, 125.00, 168.45, 8759400, 2.10, 2259400, '2026-03-03'),
('Advanced US Equity Fund', 'NEE', 'NextEra Energy', 'Utilities', 115000, 62.00, 75.80, 8717000, 2.05, 1587000, '2026-03-03'),
('Advanced US Equity Fund', 'LIN', 'Linde plc', 'Materials', 19500, 385.00, 445.20, 8681400, 2.00, 1173900, '2026-03-03'),
('Advanced US Equity Fund', 'ADBE', 'Adobe Inc', 'Technology', 16500, 445.00, 525.30, 8667450, 1.95, 1325550, '2026-03-03'),
('Advanced US Equity Fund', 'ORCL', 'Oracle Corp', 'Technology', 62000, 105.00, 138.75, 8602500, 1.90, 2092500, '2026-03-03'),
('Advanced US Equity Fund', 'NKE', 'Nike Inc', 'Consumer Discretionary', 82000, 88.00, 102.45, 8400900, 1.85, 1184900, '2026-03-03'),
('Advanced US Equity Fund', 'PEP', 'PepsiCo Inc', 'Consumer Staples', 52000, 145.00, 162.35, 8442200, 1.80, 902200, '2026-03-03'),
('Advanced US Equity Fund', 'KO', 'Coca-Cola Co', 'Consumer Staples', 135000, 55.00, 62.15, 8390250, 1.75, 965250, '2026-03-03'),
('Advanced US Equity Fund', 'CSCO', 'Cisco Systems', 'Technology', 165000, 42.00, 52.85, 8720250, 1.70, 1790250, '2026-03-03'),
('Advanced US Equity Fund', 'ABT', 'Abbott Laboratories', 'Healthcare', 72000, 98.00, 115.45, 8312400, 1.65, 1256400, '2026-03-03'),
('Advanced US Equity Fund', 'INTC', 'Intel Corp', 'Technology', 185000, 32.00, 42.85, 7927250, 1.60, 2007250, '2026-03-03'),
('Advanced US Equity Fund', 'DIS', 'Walt Disney Co', 'Communication Services', 72000, 95.00, 112.50, 8100000, 1.55, 1260000, '2026-03-03'),
('Advanced US Equity Fund', 'VZ', 'Verizon Communications', 'Communication Services', 185000, 38.00, 42.85, 7927250, 1.50, 897250, '2026-03-03'),
('Advanced US Equity Fund', 'DHR', 'Danaher Corp', 'Healthcare', 32000, 225.00, 248.65, 7956800, 1.45, 756800, '2026-03-03'),
('Advanced US Equity Fund', 'CMCSA', 'Comcast Corp', 'Communication Services', 195000, 38.00, 42.15, 8219250, 1.40, 809250, '2026-03-03'),
('Advanced US Equity Fund', 'TXN', 'Texas Instruments', 'Technology', 42000, 155.00, 185.40, 7786800, 1.35, 1276800, '2026-03-03'),
('Advanced US Equity Fund', 'QCOM', 'Qualcomm Inc', 'Technology', 45000, 125.00, 168.25, 7571250, 1.30, 1946250, '2026-03-03'),
('Advanced US Equity Fund', 'PM', 'Philip Morris Intl', 'Consumer Staples', 72000, 92.00, 105.85, 7621200, 1.25, 997200, '2026-03-03'),
('Advanced US Equity Fund', 'HON', 'Honeywell Intl', 'Industrials', 38000, 185.00, 198.45, 7541100, 1.20, 511100, '2026-03-03'),
('Advanced US Equity Fund', 'UNP', 'Union Pacific', 'Industrials', 32000, 215.00, 232.80, 7449600, 1.15, 569600, '2026-03-03'),
('Advanced US Equity Fund', 'LOW', 'Lowes Companies', 'Consumer Discretionary', 32000, 195.00, 228.45, 7310400, 1.10, 1070400, '2026-03-03'),
('Advanced US Equity Fund', 'GS', 'Goldman Sachs', 'Financials', 16500, 385.00, 445.20, 7345800, 1.05, 993300, '2026-03-03'),
('Advanced US Equity Fund', 'CAT', 'Caterpillar Inc', 'Industrials', 22000, 285.00, 325.60, 7163200, 1.00, 893200, '2026-03-03'),
('Advanced US Equity Fund', 'BA', 'Boeing Co', 'Industrials', 35000, 185.00, 198.75, 6956250, 0.95, 481250, '2026-03-03'),
('Advanced US Equity Fund', 'SPGI', 'S&P Global Inc', 'Financials', 15500, 385.00, 445.80, 6909900, 0.90, 942400, '2026-03-03'),
('Advanced US Equity Fund', 'AXP', 'American Express', 'Financials', 28000, 175.00, 245.30, 6868400, 0.85, 1968400, '2026-03-03'),
('Advanced US Equity Fund', 'BLK', 'BlackRock Inc', 'Financials', 8200, 725.00, 825.45, 6768690, 0.80, 823690, '2026-03-03'),
('Advanced US Equity Fund', 'ISRG', 'Intuitive Surgical', 'Healthcare', 15000, 385.00, 445.20, 6678000, 0.75, 903000, '2026-03-03'),

-- ABSOLUTE INCOME FUND (~50 holdings)
('Absolute Income Fund', 'TLT', 'iShares 20+ Year Treasury ETF', 'Fixed Income', 425000, 92.00, 98.45, 41841250, 8.50, 2741250, '2026-03-03'),
('Absolute Income Fund', 'HYG', 'iShares iBoxx High Yield Corp Bond ETF', 'Fixed Income', 385000, 75.00, 78.85, 30357250, 6.20, 1482250, '2026-03-03'),
('Absolute Income Fund', 'LQD', 'iShares iBoxx Investment Grade Corp Bond ETF', 'Fixed Income', 265000, 108.00, 112.45, 29799250, 5.80, 1179250, '2026-03-03'),
('Absolute Income Fund', 'AGG', 'iShares Core US Aggregate Bond ETF', 'Fixed Income', 285000, 98.00, 101.25, 28856250, 5.50, 926250, '2026-03-03'),
('Absolute Income Fund', 'BND', 'Vanguard Total Bond Market ETF', 'Fixed Income', 345000, 72.00, 75.45, 26030250, 5.20, 1190250, '2026-03-03'),
('Absolute Income Fund', 'VZ', 'Verizon Communications', 'Communication Services', 485000, 38.00, 42.85, 20782250, 4.10, 2352250, '2026-03-03'),
('Absolute Income Fund', 'PFE', 'Pfizer Inc', 'Healthcare', 685000, 26.00, 28.45, 19488250, 3.80, 1678250, '2026-03-03'),
('Absolute Income Fund', 'XOM', 'Exxon Mobil', 'Energy', 165000, 98.00, 108.25, 17861250, 3.50, 1691250, '2026-03-03'),
('Absolute Income Fund', 'T', 'AT&T Inc', 'Communication Services', 985000, 16.00, 18.25, 17976250, 3.40, 2216250, '2026-03-03'),
('Absolute Income Fund', 'MO', 'Altria Group', 'Consumer Staples', 385000, 42.00, 45.85, 17652250, 3.30, 1482250, '2026-03-03'),
('Absolute Income Fund', 'EMB', 'iShares JP Morgan USD Emerging Markets Bond ETF', 'Fixed Income', 195000, 82.00, 86.45, 16857750, 3.20, 867750, '2026-03-03'),
('Absolute Income Fund', 'JNK', 'SPDR Bloomberg High Yield Bond ETF', 'Fixed Income', 185000, 88.00, 92.15, 17047750, 3.10, 768250, '2026-03-03'),
('Absolute Income Fund', 'VCIT', 'Vanguard Intermediate-Term Corporate Bond ETF', 'Fixed Income', 195000, 78.00, 82.45, 16077750, 3.00, 867750, '2026-03-03'),
('Absolute Income Fund', 'IBM', 'International Business Machines', 'Technology', 92000, 145.00, 168.75, 15525000, 2.90, 2185000, '2026-03-03'),
('Absolute Income Fund', 'CVX', 'Chevron Corp', 'Energy', 95000, 145.00, 158.25, 15033750, 2.80, 1258750, '2026-03-03'),
('Absolute Income Fund', 'PM', 'Philip Morris Intl', 'Consumer Staples', 142000, 92.00, 105.85, 15030700, 2.70, 1966700, '2026-03-03'),
('Absolute Income Fund', 'JPM', 'JPMorgan Chase', 'Financials', 72000, 135.00, 198.45, 14288400, 2.60, 4568400, '2026-03-03'),
('Absolute Income Fund', 'SCHP', 'Schwab US TIPS ETF', 'Fixed Income', 265000, 52.00, 54.25, 14376250, 2.50, 596250, '2026-03-03'),
('Absolute Income Fund', 'KO', 'Coca-Cola Co', 'Consumer Staples', 225000, 55.00, 62.15, 13983750, 2.40, 1608750, '2026-03-03'),
('Absolute Income Fund', 'PEP', 'PepsiCo Inc', 'Consumer Staples', 85000, 145.00, 162.35, 13799750, 2.30, 1474750, '2026-03-03'),
('Absolute Income Fund', 'MBB', 'iShares MBS ETF', 'Fixed Income', 145000, 92.00, 94.85, 13753250, 2.20, 413250, '2026-03-03'),
('Absolute Income Fund', 'GOVT', 'iShares US Treasury Bond ETF', 'Fixed Income', 585000, 22.00, 23.15, 13542750, 2.10, 672750, '2026-03-03'),
('Absolute Income Fund', 'KMB', 'Kimberly-Clark', 'Consumer Staples', 102000, 125.00, 132.45, 13509900, 2.00, 759900, '2026-03-03'),
('Absolute Income Fund', 'SO', 'Southern Company', 'Utilities', 185000, 68.00, 72.85, 13477250, 1.90, 897250, '2026-03-03'),
('Absolute Income Fund', 'DUK', 'Duke Energy', 'Utilities', 135000, 92.00, 98.45, 13290750, 1.80, 870750, '2026-03-03'),
('Absolute Income Fund', 'MMM', 'Minnesota Mining & Mfg', 'Industrials', 125000, 98.00, 105.75, 13218750, 1.70, 968750, '2026-03-03'),
('Absolute Income Fund', 'PG', 'Procter & Gamble', 'Consumer Staples', 78000, 138.00, 162.85, 12702300, 1.60, 1938300, '2026-03-03'),
('Absolute Income Fund', 'CL', 'Colgate-Palmolive', 'Consumer Staples', 145000, 78.00, 85.45, 12390250, 1.50, 1080250, '2026-03-03'),
('Absolute Income Fund', 'GIS', 'General Mills', 'Consumer Staples', 185000, 62.00, 65.85, 12182250, 1.40, 712250, '2026-03-03'),
('Absolute Income Fund', 'WBA', 'Walgreens Boots Alliance', 'Healthcare', 585000, 18.00, 20.45, 11963250, 1.35, 1433250, '2026-03-03'),
('Absolute Income Fund', 'ED', 'Consolidated Edison', 'Utilities', 125000, 88.00, 92.85, 11606250, 1.30, 606250, '2026-03-03'),
('Absolute Income Fund', 'D', 'Dominion Energy', 'Utilities', 225000, 48.00, 52.15, 11733750, 1.25, 933750, '2026-03-03'),
('Absolute Income Fund', 'AEP', 'American Electric Power', 'Utilities', 125000, 82.00, 88.45, 11056250, 1.20, 806250, '2026-03-03'),
('Absolute Income Fund', 'XEL', 'Xcel Energy', 'Utilities', 175000, 58.00, 62.45, 10928750, 1.15, 778750, '2026-03-03'),
('Absolute Income Fund', 'PPL', 'PPL Corp', 'Utilities', 365000, 28.00, 29.85, 10895250, 1.10, 675250, '2026-03-03'),
('Absolute Income Fund', 'WEC', 'WEC Energy Group', 'Utilities', 125000, 82.00, 86.45, 10806250, 1.05, 556250, '2026-03-03'),
('Absolute Income Fund', 'ES', 'Eversource Energy', 'Utilities', 165000, 58.00, 62.85, 10370250, 1.00, 800250, '2026-03-03'),
('Absolute Income Fund', 'EIX', 'Edison International', 'Utilities', 145000, 65.00, 68.45, 9925250, 0.95, 500250, '2026-03-03'),
('Absolute Income Fund', 'FE', 'FirstEnergy Corp', 'Utilities', 245000, 38.00, 40.25, 9861250, 0.90, 551250, '2026-03-03'),
('Absolute Income Fund', 'AWK', 'American Water Works', 'Utilities', 72000, 128.00, 132.85, 9565200, 0.85, 349200, '2026-03-03'),
('Absolute Income Fund', 'NI', 'NiSource Inc', 'Utilities', 325000, 28.00, 29.15, 9473750, 0.80, 373750, '2026-03-03'),
('Absolute Income Fund', 'ATO', 'Atmos Energy', 'Utilities', 72000, 118.00, 125.45, 9032400, 0.75, 536400, '2026-03-03'),
('Absolute Income Fund', 'SRE', 'Sempra', 'Utilities', 115000, 72.00, 76.85, 8837750, 0.70, 557750, '2026-03-03'),
('Absolute Income Fund', 'CNP', 'CenterPoint Energy', 'Utilities', 285000, 28.00, 30.15, 8592750, 0.65, 612750, '2026-03-03'),
('Absolute Income Fund', 'CMS', 'CMS Energy', 'Utilities', 132000, 58.00, 62.85, 8296200, 0.60, 640200, '2026-03-03'),
('Absolute Income Fund', 'DTE', 'DTE Energy', 'Utilities', 68000, 108.00, 115.45, 7850600, 0.55, 506600, '2026-03-03'),
('Absolute Income Fund', 'PNW', 'Pinnacle West Capital', 'Utilities', 92000, 78.00, 82.45, 7585400, 0.50, 409400, '2026-03-03'),
('Absolute Income Fund', 'OGE', 'OGE Energy', 'Utilities', 185000, 38.00, 40.25, 7446250, 0.45, 416250, '2026-03-03'),
('Absolute Income Fund', 'NRG', 'NRG Energy', 'Utilities', 85000, 78.00, 85.45, 7263250, 0.40, 633250, '2026-03-03'),
('Absolute Income Fund', 'AES', 'AES Corp', 'Utilities', 425000, 15.00, 16.85, 7161250, 0.35, 786250, '2026-03-03');


-- =====================================================
-- TABLE 2: FUND_PERFORMANCE (2 years of daily data)
-- =====================================================
CREATE OR REPLACE TABLE FUND_PERFORMANCE (
    PERF_DATE DATE,
    FUND_NAME VARCHAR(100),
    DAILY_RETURN_PCT NUMBER(10,6),
    MTD_RETURN_PCT NUMBER(10,6),
    YTD_RETURN_PCT NUMBER(10,6),
    AUM_MILLIONS NUMBER(18,2),
    BENCHMARK VARCHAR(50),
    BENCHMARK_RETURN_PCT NUMBER(10,6),
    ACTIVE_RETURN_PCT NUMBER(10,6)
);

-- Generate 2 years of daily performance data using recursive CTE
INSERT INTO FUND_PERFORMANCE
WITH RECURSIVE date_series AS (
    SELECT DATEADD(year, -2, CURRENT_DATE()) AS dt
    UNION ALL
    SELECT DATEADD(day, 1, dt)
    FROM date_series
    WHERE dt < CURRENT_DATE() - 1
),
equity_data AS (
    SELECT 
        dt AS PERF_DATE,
        'Advanced US Equity Fund' AS FUND_NAME,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 4 - 2, 6) AS DAILY_RETURN_PCT,
        'S&P 500' AS BENCHMARK
    FROM date_series
    WHERE DAYOFWEEK(dt) NOT IN (0, 6)
),
income_data AS (
    SELECT 
        dt AS PERF_DATE,
        'Absolute Income Fund' AS FUND_NAME,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 1.5 - 0.75, 6) AS DAILY_RETURN_PCT,
        'Bloomberg US Aggregate' AS BENCHMARK
    FROM date_series
    WHERE DAYOFWEEK(dt) NOT IN (0, 6)
),
combined AS (
    SELECT * FROM equity_data
    UNION ALL
    SELECT * FROM income_data
)
SELECT 
    PERF_DATE,
    FUND_NAME,
    DAILY_RETURN_PCT,
    ROUND(DAILY_RETURN_PCT * (1 + (RANDOM() / 9223372036854775807::FLOAT) * 3), 6) AS MTD_RETURN_PCT,
    ROUND(DAILY_RETURN_PCT * (1 + (RANDOM() / 9223372036854775807::FLOAT) * 15), 6) AS YTD_RETURN_PCT,
    CASE WHEN FUND_NAME = 'Advanced US Equity Fund' 
         THEN ROUND(4250 + (RANDOM() / 9223372036854775807::FLOAT) * 500, 2)
         ELSE ROUND(5100 + (RANDOM() / 9223372036854775807::FLOAT) * 400, 2)
    END AS AUM_MILLIONS,
    BENCHMARK,
    ROUND(DAILY_RETURN_PCT + (RANDOM() / 9223372036854775807::FLOAT) * 0.5 - 0.25, 6) AS BENCHMARK_RETURN_PCT,
    ROUND((RANDOM() / 9223372036854775807::FLOAT) * 0.5 - 0.25, 6) AS ACTIVE_RETURN_PCT
FROM combined;


-- =====================================================
-- TABLE 3: QUANT_SIGNALS (~500 stocks, 6 months weekly)
-- =====================================================
CREATE OR REPLACE TABLE QUANT_SIGNALS (
    SIGNAL_DATE DATE,
    TICKER VARCHAR(10),
    COMPANY_NAME VARCHAR(200),
    SECTOR VARCHAR(100),
    MOMENTUM_SCORE NUMBER(8,4),
    VALUE_SCORE NUMBER(8,4),
    QUALITY_SCORE NUMBER(8,4),
    SENTIMENT_SCORE NUMBER(8,4),
    VOLATILITY_SCORE NUMBER(8,4),
    COMPOSITE_ALPHA_SCORE NUMBER(8,4),
    COMPOSITE_RANK INT,
    SIGNAL_CHANGE VARCHAR(20),
    PREVIOUS_RANK INT
);

-- Stock universe (100 large caps for demo - would be 500 in production)
INSERT INTO QUANT_SIGNALS
WITH RECURSIVE weeks AS (
    SELECT DATE_TRUNC('week', DATEADD(month, -6, CURRENT_DATE())) AS wk
    UNION ALL
    SELECT DATEADD(week, 1, wk)
    FROM weeks
    WHERE wk < DATE_TRUNC('week', CURRENT_DATE())
),
stocks AS (
    SELECT * FROM (VALUES
        ('AAPL', 'Apple Inc', 'Technology'),
        ('NVDA', 'NVIDIA Corp', 'Technology'),
        ('MSFT', 'Microsoft Corp', 'Technology'),
        ('GOOGL', 'Alphabet Inc', 'Technology'),
        ('AMZN', 'Amazon.com Inc', 'Consumer Discretionary'),
        ('META', 'Meta Platforms Inc', 'Technology'),
        ('TSLA', 'Tesla Inc', 'Consumer Discretionary'),
        ('BRK.B', 'Berkshire Hathaway', 'Financials'),
        ('UNH', 'UnitedHealth Group', 'Healthcare'),
        ('JNJ', 'Johnson & Johnson', 'Healthcare'),
        ('JPM', 'JPMorgan Chase', 'Financials'),
        ('V', 'Visa Inc', 'Financials'),
        ('XOM', 'Exxon Mobil', 'Energy'),
        ('PG', 'Procter & Gamble', 'Consumer Staples'),
        ('MA', 'Mastercard Inc', 'Financials'),
        ('HD', 'Home Depot', 'Consumer Discretionary'),
        ('CVX', 'Chevron Corp', 'Energy'),
        ('LLY', 'Eli Lilly', 'Healthcare'),
        ('MRK', 'Merck & Co', 'Healthcare'),
        ('ABBV', 'AbbVie Inc', 'Healthcare'),
        ('PEP', 'PepsiCo Inc', 'Consumer Staples'),
        ('KO', 'Coca-Cola Co', 'Consumer Staples'),
        ('AVGO', 'Broadcom Inc', 'Technology'),
        ('COST', 'Costco Wholesale', 'Consumer Staples'),
        ('TMO', 'Thermo Fisher Scientific', 'Healthcare'),
        ('MCD', 'McDonalds Corp', 'Consumer Discretionary'),
        ('WMT', 'Walmart Inc', 'Consumer Staples'),
        ('CSCO', 'Cisco Systems', 'Technology'),
        ('ACN', 'Accenture plc', 'Technology'),
        ('ABT', 'Abbott Laboratories', 'Healthcare'),
        ('DHR', 'Danaher Corp', 'Healthcare'),
        ('LIN', 'Linde plc', 'Materials'),
        ('NEE', 'NextEra Energy', 'Utilities'),
        ('VZ', 'Verizon Communications', 'Communication Services'),
        ('ADBE', 'Adobe Inc', 'Technology'),
        ('TXN', 'Texas Instruments', 'Technology'),
        ('CRM', 'Salesforce Inc', 'Technology'),
        ('AMD', 'Advanced Micro Devices', 'Technology'),
        ('PM', 'Philip Morris Intl', 'Consumer Staples'),
        ('NKE', 'Nike Inc', 'Consumer Discretionary'),
        ('RTX', 'RTX Corp', 'Industrials'),
        ('QCOM', 'Qualcomm Inc', 'Technology'),
        ('UNP', 'Union Pacific', 'Industrials'),
        ('HON', 'Honeywell Intl', 'Industrials'),
        ('LOW', 'Lowes Companies', 'Consumer Discretionary'),
        ('INTC', 'Intel Corp', 'Technology'),
        ('ORCL', 'Oracle Corp', 'Technology'),
        ('IBM', 'International Business Machines', 'Technology'),
        ('SPGI', 'S&P Global Inc', 'Financials'),
        ('CAT', 'Caterpillar Inc', 'Industrials'),
        ('GS', 'Goldman Sachs', 'Financials'),
        ('BA', 'Boeing Co', 'Industrials'),
        ('AXP', 'American Express', 'Financials'),
        ('BLK', 'BlackRock Inc', 'Financials'),
        ('ISRG', 'Intuitive Surgical', 'Healthcare'),
        ('MDLZ', 'Mondelez International', 'Consumer Staples'),
        ('GILD', 'Gilead Sciences', 'Healthcare'),
        ('ADI', 'Analog Devices', 'Technology'),
        ('SYK', 'Stryker Corp', 'Healthcare'),
        ('ADP', 'Automatic Data Processing', 'Technology'),
        ('BKNG', 'Booking Holdings', 'Consumer Discretionary'),
        ('MMC', 'Marsh & McLennan', 'Financials'),
        ('VRTX', 'Vertex Pharmaceuticals', 'Healthcare'),
        ('TJX', 'TJX Companies', 'Consumer Discretionary'),
        ('REGN', 'Regeneron Pharmaceuticals', 'Healthcare'),
        ('CB', 'Chubb Ltd', 'Financials'),
        ('LRCX', 'Lam Research', 'Technology'),
        ('PGR', 'Progressive Corp', 'Financials'),
        ('SBUX', 'Starbucks Corp', 'Consumer Discretionary'),
        ('MU', 'Micron Technology', 'Technology'),
        ('CI', 'Cigna Group', 'Healthcare'),
        ('KLAC', 'KLA Corp', 'Technology'),
        ('BSX', 'Boston Scientific', 'Healthcare'),
        ('SO', 'Southern Company', 'Utilities'),
        ('DUK', 'Duke Energy', 'Utilities'),
        ('ICE', 'Intercontinental Exchange', 'Financials'),
        ('CME', 'CME Group', 'Financials'),
        ('SCHW', 'Charles Schwab', 'Financials'),
        ('ZTS', 'Zoetis Inc', 'Healthcare'),
        ('SNPS', 'Synopsys Inc', 'Technology'),
        ('CDNS', 'Cadence Design Systems', 'Technology'),
        ('PLD', 'Prologis Inc', 'Real Estate'),
        ('AON', 'Aon plc', 'Financials'),
        ('ITW', 'Illinois Tool Works', 'Industrials'),
        ('MCO', 'Moodys Corp', 'Financials'),
        ('SHW', 'Sherwin-Williams', 'Materials'),
        ('EQIX', 'Equinix Inc', 'Real Estate'),
        ('APD', 'Air Products & Chemicals', 'Materials'),
        ('FCX', 'Freeport-McMoRan', 'Materials'),
        ('CL', 'Colgate-Palmolive', 'Consumer Staples'),
        ('EOG', 'EOG Resources', 'Energy'),
        ('EMR', 'Emerson Electric', 'Industrials'),
        ('ORLY', 'OReilly Automotive', 'Consumer Discretionary'),
        ('WM', 'Waste Management', 'Industrials'),
        ('GD', 'General Dynamics', 'Industrials'),
        ('MSI', 'Motorola Solutions', 'Technology'),
        ('PNC', 'PNC Financial Services', 'Financials'),
        ('USB', 'US Bancorp', 'Financials'),
        ('TGT', 'Target Corp', 'Consumer Discretionary'),
        ('AZO', 'AutoZone Inc', 'Consumer Discretionary')
    ) AS t(ticker, company_name, sector)
),
base_signals AS (
    SELECT 
        wk AS SIGNAL_DATE,
        s.ticker,
        s.company_name,
        s.sector,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 6 - 3, 4) AS MOMENTUM_SCORE,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 6 - 3, 4) AS VALUE_SCORE,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 6 - 3, 4) AS QUALITY_SCORE,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 6 - 3, 4) AS SENTIMENT_SCORE,
        ROUND((RANDOM() / 9223372036854775807::FLOAT) * 6 - 3, 4) AS VOLATILITY_SCORE
    FROM weeks w
    CROSS JOIN stocks s
)
SELECT 
    SIGNAL_DATE,
    ticker,
    company_name,
    sector,
    MOMENTUM_SCORE,
    VALUE_SCORE,
    QUALITY_SCORE,
    SENTIMENT_SCORE,
    VOLATILITY_SCORE,
    ROUND((MOMENTUM_SCORE * 0.25 + VALUE_SCORE * 0.20 + QUALITY_SCORE * 0.25 + SENTIMENT_SCORE * 0.15 + VOLATILITY_SCORE * 0.15), 4) AS COMPOSITE_ALPHA_SCORE,
    ROW_NUMBER() OVER (PARTITION BY SIGNAL_DATE ORDER BY (MOMENTUM_SCORE * 0.25 + VALUE_SCORE * 0.20 + QUALITY_SCORE * 0.25 + SENTIMENT_SCORE * 0.15 + VOLATILITY_SCORE * 0.15) DESC) AS COMPOSITE_RANK,
    CASE 
        WHEN (RANDOM() / 9223372036854775807::FLOAT) < 0.15 THEN 'UPGRADE'
        WHEN (RANDOM() / 9223372036854775807::FLOAT) > 0.85 THEN 'DOWNGRADE'
        ELSE 'NO_CHANGE'
    END AS SIGNAL_CHANGE,
    FLOOR((RANDOM() / 9223372036854775807::FLOAT) * 100 + 1)::INT AS PREVIOUS_RANK
FROM base_signals;


-- =====================================================
-- TABLE 4: TRADE_HISTORY
-- =====================================================
CREATE OR REPLACE TABLE TRADE_HISTORY (
    TRADE_ID INT AUTOINCREMENT,
    TRADE_DATE DATE,
    FUND_NAME VARCHAR(100),
    TICKER VARCHAR(10),
    COMPANY_NAME VARCHAR(200),
    SIDE VARCHAR(4),
    SHARES NUMBER(18,2),
    PRICE NUMBER(18,4),
    NOTIONAL_VALUE NUMBER(18,2),
    TRADE_REASON VARCHAR(500)
);

INSERT INTO TRADE_HISTORY (TRADE_DATE, FUND_NAME, TICKER, COMPANY_NAME, SIDE, SHARES, PRICE, NOTIONAL_VALUE, TRADE_REASON)
VALUES
-- Recent trades for Advanced US Equity Fund
('2026-03-03', 'Advanced US Equity Fund', 'NVDA', 'NVIDIA Corp', 'BUY', 2500, 872.45, 2181125, 'Alpha signal upgrade to rank #3 from #12; momentum/quality crossover'),
('2026-03-03', 'Advanced US Equity Fund', 'AMD', 'Advanced Micro Devices', 'BUY', 8000, 167.85, 1342800, 'Sector rotation into semiconductors; improved sentiment score'),
('2026-02-28', 'Advanced US Equity Fund', 'INTC', 'Intel Corp', 'SELL', 25000, 43.25, 1081250, 'Risk reduction; downgrade on quality score deterioration'),
('2026-02-28', 'Advanced US Equity Fund', 'META', 'Meta Platforms Inc', 'BUY', 1500, 512.80, 769200, 'Rebalance to target weight; strong momentum continuation'),
('2026-02-27', 'Advanced US Equity Fund', 'AAPL', 'Apple Inc', 'BUY', 5000, 176.45, 882250, 'Monthly rebalance; trimming underweight'),
('2026-02-26', 'Advanced US Equity Fund', 'TSLA', 'Tesla Inc', 'SELL', 12000, 185.30, 2223600, 'Taking profits after 30% run; valuation stretched'),
('2026-02-25', 'Advanced US Equity Fund', 'LLY', 'Eli Lilly', 'BUY', 3000, 782.50, 2347500, 'Conviction increase post Q4 earnings beat'),
('2026-02-24', 'Advanced US Equity Fund', 'GOOGL', 'Alphabet Inc', 'BUY', 8000, 164.25, 1314000, 'Increasing position on AI monetization thesis'),
('2026-02-21', 'Advanced US Equity Fund', 'BA', 'Boeing Co', 'SELL', 8000, 195.45, 1563600, 'Quality concerns; manufacturing issues persisting'),
('2026-02-20', 'Advanced US Equity Fund', 'AVGO', 'Broadcom Inc', 'BUY', 1200, 1318.75, 1582500, 'AI infrastructure play; upgraded to rank #8'),
('2026-02-19', 'Advanced US Equity Fund', 'CRM', 'Salesforce Inc', 'BUY', 4500, 283.60, 1276200, 'Enterprise software recovery; improved margins'),
('2026-02-18', 'Advanced US Equity Fund', 'UNH', 'UnitedHealth Group', 'SELL', 2000, 542.30, 1084600, 'Trimming healthcare overweight'),
('2026-02-14', 'Advanced US Equity Fund', 'COST', 'Costco Wholesale', 'BUY', 2500, 742.15, 1855375, 'Defensive rotation; membership growth acceleration'),
('2026-02-13', 'Advanced US Equity Fund', 'JPM', 'JPMorgan Chase', 'BUY', 6000, 196.80, 1180800, 'Financials sector upgrade; NII tailwinds'),
('2026-02-12', 'Advanced US Equity Fund', 'NEE', 'NextEra Energy', 'SELL', 15000, 74.25, 1113750, 'Utilities underweight; rate sensitivity concerns'),
('2026-02-11', 'Advanced US Equity Fund', 'MSFT', 'Microsoft Corp', 'BUY', 3500, 412.85, 1444975, 'Azure growth reacceleration; copilot monetization'),
('2026-02-10', 'Advanced US Equity Fund', 'V', 'Visa Inc', 'BUY', 4000, 284.20, 1136800, 'Cross-border volumes recovering; improving sentiment'),
('2026-02-07', 'Advanced US Equity Fund', 'DIS', 'Walt Disney Co', 'SELL', 12000, 115.30, 1383600, 'Streaming profitability uncertainty; downgrade'),
('2026-02-06', 'Advanced US Equity Fund', 'QCOM', 'Qualcomm Inc', 'BUY', 7000, 165.40, 1157800, 'Mobile recovery; auto segment growth'),
('2026-02-05', 'Advanced US Equity Fund', 'HD', 'Home Depot', 'SELL', 3500, 368.25, 1288875, 'Housing market slowdown; reducing exposure'),

-- Recent trades for Absolute Income Fund
('2026-03-03', 'Absolute Income Fund', 'TLT', 'iShares 20+ Year Treasury ETF', 'BUY', 35000, 97.85, 3424750, 'Duration extension on rate cut expectations'),
('2026-03-03', 'Absolute Income Fund', 'HYG', 'iShares iBoxx High Yield Corp Bond ETF', 'SELL', 15000, 78.45, 1176750, 'Credit spread tightening; taking profits'),
('2026-02-28', 'Absolute Income Fund', 'LQD', 'iShares iBoxx Investment Grade Corp Bond ETF', 'BUY', 20000, 111.85, 2237000, 'IG credit allocation increase; spread pickup'),
('2026-02-27', 'Absolute Income Fund', 'VZ', 'Verizon Communications', 'BUY', 45000, 42.35, 1905750, 'Dividend yield 6.5%; stable cash flows'),
('2026-02-26', 'Absolute Income Fund', 'EMB', 'iShares JP Morgan USD Emerging Markets Bond ETF', 'SELL', 8000, 85.90, 687200, 'EM risk reduction; dollar strength concerns'),
('2026-02-25', 'Absolute Income Fund', 'PM', 'Philip Morris Intl', 'BUY', 12000, 104.75, 1257000, 'Defensive yield; smoke-free product growth'),
('2026-02-24', 'Absolute Income Fund', 'SO', 'Southern Company', 'BUY', 18000, 72.25, 1300500, 'Utility dividend yield; regulated earnings'),
('2026-02-21', 'Absolute Income Fund', 'SCHP', 'Schwab US TIPS ETF', 'BUY', 25000, 53.85, 1346250, 'Inflation protection; real yield attractive'),
('2026-02-20', 'Absolute Income Fund', 'T', 'AT&T Inc', 'SELL', 85000, 18.45, 1568250, 'Trimming telecom; dividend sustainability concerns'),
('2026-02-19', 'Absolute Income Fund', 'KO', 'Coca-Cola Co', 'BUY', 22000, 61.85, 1360700, 'Dividend aristocrat; pricing power intact'),
('2026-02-18', 'Absolute Income Fund', 'MBB', 'iShares MBS ETF', 'BUY', 18000, 94.35, 1698300, 'Agency MBS allocation; prepay risk declining'),
('2026-02-14', 'Absolute Income Fund', 'XOM', 'Exxon Mobil', 'BUY', 8500, 107.45, 913325, 'Energy dividend; cash generation strong'),
('2026-02-13', 'Absolute Income Fund', 'DUK', 'Duke Energy', 'BUY', 14000, 97.85, 1369900, 'Utility sector rotation; rate base growth'),
('2026-02-12', 'Absolute Income Fund', 'JNK', 'SPDR Bloomberg High Yield Bond ETF', 'SELL', 12000, 91.75, 1101000, 'Credit de-risking; spread compression limited'),
('2026-02-11', 'Absolute Income Fund', 'PG', 'Procter & Gamble', 'BUY', 7500, 161.25, 1209375, 'Consumer staples; dividend growth track record'),
('2026-02-10', 'Absolute Income Fund', 'JPM', 'JPMorgan Chase', 'BUY', 5500, 197.25, 1084875, 'Bank dividend; strong capital return'),
('2026-02-07', 'Absolute Income Fund', 'MO', 'Altria Group', 'BUY', 28000, 45.35, 1269800, 'High yield tobacco; smoke-free transition'),
('2026-02-06', 'Absolute Income Fund', 'ED', 'Consolidated Edison', 'BUY', 12500, 92.15, 1151875, 'Regulated utility; predictable income'),
('2026-02-05', 'Absolute Income Fund', 'AGG', 'iShares Core US Aggregate Bond ETF', 'BUY', 15000, 100.85, 1512750, 'Core bond allocation; duration neutral'),
('2026-02-04', 'Absolute Income Fund', 'PFE', 'Pfizer Inc', 'BUY', 55000, 28.15, 1548250, 'Pharma dividend; post-COVID normalization');
