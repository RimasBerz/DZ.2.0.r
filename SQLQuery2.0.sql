DECLARE @P1 int = 0, @P2 int = 20

DECLARE @P int, @res nvarchar(50) = ''

WHILE @P1 < @P2
BEGIN
    SET @res += CHAR(RAND() * 26 + 65)
    SET @P1 += 1
END

PRINT @res
--2
DECLARE @R int = 25,
@V int = 1;
WITH ct AS
( SELECT TOP (@R)
ROW_NUMBER()
OVER(
ORDER BY (
SELECT 0))
AS [Num]
FROM sys.columns
ORDER BY Num
)
SELECT @V *= [NUM]
FROM ct

SELECT @V

--3
DECLARE @N1 int = 3, 
@N2 int = 100

WHILE @N1 < @N2
BEGIN 
  DECLARE @start int = 2, 
  @end int = @N1 / 2,
  @simple int = 1
  WHILE @start <= @end
  BEGIN 
    IF @N1 % @start = 0
    BEGIN 
      SET @simple = 0
      BREAK
    END 
    SET @start += 1
  END
  IF @simple = 1
    PRINT @N1
  SET @N1 += 1
END

--4
DECLARE @G1 int = 3, 
@G2 int = 999999

WHILE @G1 < @G2
BEGIN 
  DECLARE @S int = 2, 
  @S2 int = (@G1 % 10000 - @G1 % 1000 ) / 1000 +  (@G1 % 100000 - @G1 % 10000 ) / 10000 + (@G1 % 1000000 - @G1 % 100000 ) / 100000,
  @S4 int = @G1 % 10 + (@G1 % 100 - @G1 % 10)  / 10  + (@G1 % 1000 - @G1 % 100 ) / 100,
  @S3 int = 1
  WHILE @S <= @G2
  BEGIN 
    IF @S2 = @S4
    BEGIN 
      SET @S3 = 0
      BREAK
    END 
    SET @S += 1
  END
  IF @S3 = 1
    PRINT @G1
  SET @G1 += 1
END