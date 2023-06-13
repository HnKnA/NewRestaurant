IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetRoles] (
        [Id] uniqueidentifier NOT NULL,
        [Name] nvarchar(256) NULL,
        [NormalizedName] nvarchar(256) NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoles] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [CUSTOMER] (
        [Id] uniqueidentifier NOT NULL,
        [UserName] nvarchar(256) NULL,
        [NormalizedUserName] nvarchar(256) NULL,
        [Email] nvarchar(256) NULL,
        [NormalizedEmail] nvarchar(256) NULL,
        [EmailConfirmed] bit NOT NULL,
        [PasswordHash] nvarchar(max) NULL,
        [SecurityStamp] nvarchar(max) NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        [PhoneNumber] nvarchar(max) NULL,
        [PhoneNumberConfirmed] bit NOT NULL,
        [TwoFactorEnabled] bit NOT NULL,
        [LockoutEnd] datetimeoffset NULL,
        [LockoutEnabled] bit NOT NULL,
        [AccessFailedCount] int NOT NULL,
        [FullName] nvarchar(200) NOT NULL,
        [Gender] bit NOT NULL,
        [Birthday] datetime2 NOT NULL,
        [VIP] bit NOT NULL,
        CONSTRAINT [PK_CUSTOMER] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [FOOD] (
        [Id] int NOT NULL IDENTITY,
        [Name] nvarchar(200) NOT NULL,
        [UnitPrice] int NOT NULL,
        [Category] nvarchar(max) NOT NULL,
        [Description] nvarchar(max) NULL DEFAULT N'None.',
        [ImageURL] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_FOOD] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [TABLE] (
        [Id] int NOT NULL IDENTITY,
        [Name] nvarchar(30) NOT NULL,
        [PeopleCount] int NOT NULL,
        CONSTRAINT [PK_TABLE] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetRoleClaims] (
        [Id] int NOT NULL IDENTITY,
        [RoleId] uniqueidentifier NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetUserClaims] (
        [Id] int NOT NULL IDENTITY,
        [UserId] uniqueidentifier NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetUserClaims_CUSTOMER_UserId] FOREIGN KEY ([UserId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetUserLogins] (
        [LoginProvider] nvarchar(450) NOT NULL,
        [ProviderKey] nvarchar(450) NOT NULL,
        [ProviderDisplayName] nvarchar(max) NULL,
        [UserId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey]),
        CONSTRAINT [FK_AspNetUserLogins_CUSTOMER_UserId] FOREIGN KEY ([UserId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetUserRoles] (
        [UserId] uniqueidentifier NOT NULL,
        [RoleId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY ([UserId], [RoleId]),
        CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_AspNetUserRoles_CUSTOMER_UserId] FOREIGN KEY ([UserId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [AspNetUserTokens] (
        [UserId] uniqueidentifier NOT NULL,
        [LoginProvider] nvarchar(450) NOT NULL,
        [Name] nvarchar(450) NOT NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY ([UserId], [LoginProvider], [Name]),
        CONSTRAINT [FK_AspNetUserTokens_CUSTOMER_UserId] FOREIGN KEY ([UserId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [BILL] (
        [Id] uniqueidentifier NOT NULL,
        [CustomerId] uniqueidentifier NOT NULL,
        [Total] int NOT NULL,
        [PaymentMethod] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        CONSTRAINT [PK_BILL] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_BILL_CUSTOMER_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [ODER_TABLE] (
        [Id] int NOT NULL IDENTITY,
        [CustomerId] uniqueidentifier NOT NULL,
        [TableId] int NOT NULL,
        [From] datetime2 NOT NULL,
        [To] datetime2 NOT NULL,
        CONSTRAINT [PK_ODER_TABLE] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ODER_TABLE_CUSTOMER_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [CUSTOMER] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ODER_TABLE_TABLE_TableId] FOREIGN KEY ([TableId]) REFERENCES [TABLE] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE TABLE [BILL_DETAIL] (
        [BillId] uniqueidentifier NOT NULL,
        [FoodId] int NOT NULL,
        [UnitPrice] int NOT NULL,
        [Quantity] int NOT NULL,
        [Price] int NOT NULL,
        CONSTRAINT [PK_BILL_DETAIL] PRIMARY KEY ([BillId], [FoodId]),
        CONSTRAINT [FK_BILL_DETAIL_BILL_BillId] FOREIGN KEY ([BillId]) REFERENCES [BILL] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_BILL_DETAIL_FOOD_FoodId] FOREIGN KEY ([FoodId]) REFERENCES [FOOD] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims] ([RoleId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE UNIQUE INDEX [RoleNameIndex] ON [AspNetRoles] ([NormalizedName]) WHERE [NormalizedName] IS NOT NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims] ([UserId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins] ([UserId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles] ([RoleId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_BILL_CustomerId] ON [BILL] ([CustomerId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_BILL_DETAIL_FoodId] ON [BILL_DETAIL] ([FoodId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [EmailIndex] ON [CUSTOMER] ([NormalizedEmail]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE UNIQUE INDEX [UserNameIndex] ON [CUSTOMER] ([NormalizedUserName]) WHERE [NormalizedUserName] IS NOT NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_ODER_TABLE_CustomerId] ON [ODER_TABLE] ([CustomerId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    CREATE INDEX [IX_ODER_TABLE_TableId] ON [ODER_TABLE] ([TableId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211101000920_CreateDatabase')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20211101000920_CreateDatabase', N'3.1.4');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230613122019_tuan')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20230613122019_tuan', N'3.1.4');
END;

GO

