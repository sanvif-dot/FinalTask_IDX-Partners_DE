CREATE PROCEDURE summary_order_status
    @StatusID INT
AS
BEGIN
    SELECT fs.OrderID, dco.CustomerName, dp.ProductName, fs.Quantity, dso.StatusOrder
    FROM FactSalesOrder fs
    JOIN DimCustomer dco ON fs.CustomerID = dco.CustomerID
    JOIN DimProduct dp ON fs.ProductID = dp.ProductID
    JOIN DimStatusOrder dso ON fs.StatusID = dso.StatusID
    WHERE fs.StatusID = @StatusID;
END
