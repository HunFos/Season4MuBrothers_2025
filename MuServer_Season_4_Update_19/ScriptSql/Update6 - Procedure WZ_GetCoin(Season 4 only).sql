
CREATE Procedure [dbo].[WZ_GetCoin]
@Account varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @Coin1 int
DECLARE @Coin2 int
DECLARE @Coin3 int

SELECT @Coin1=Cash FROM MEMB_INFO WHERE memb___id=@Account
SELECT @Coin2=Gold FROM MEMB_INFO WHERE memb___id=@Account
SELECT @Coin3=PcPoint FROM PcPointData where AccountID=@Account 

SELECT @Coin1 AS Coin1,@Coin2 AS Coin2,@Coin3 AS Coin3

SET NOCOUNT OFF
SET XACT_ABORT OFF

END
