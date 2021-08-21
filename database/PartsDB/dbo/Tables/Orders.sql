﻿CREATE TABLE [dbo].[Orders] (
    [OrderId]    INT             IDENTITY (1, 1) NOT NULL,
    [OrderDate]  DATETIME        NOT NULL,
    [Username]   NVARCHAR (MAX)  NOT NULL,
    [Name]       NVARCHAR (160)  NOT NULL,
    [Address]    NVARCHAR (70)   NOT NULL,
    [City]       NVARCHAR (40)   NOT NULL,
    [State]      NVARCHAR (40)   NOT NULL,
    [PostalCode] NVARCHAR (10)   NOT NULL,
    [Country]    NVARCHAR (40)   NOT NULL,
    [Phone]      NVARCHAR (24)   NOT NULL,
    [Email]      NVARCHAR (MAX)  NOT NULL,
    [Total]      DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED ([OrderId] ASC)
);


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[Username]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Credentials');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[Address]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Contact Info');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[City]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Contact Info');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[PostalCode]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Contact Info');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[Phone]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Contact Info');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[Orders].[Email]
    WITH (LABEL = 'Confidential', INFORMATION_TYPE = 'Contact Info');

