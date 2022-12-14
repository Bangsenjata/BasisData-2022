-- MIGRATION DOWN VERSI 3

USE Perpustakaan;

ALTER TABLE [BOOK] DROP CONSTRAINT [FK_BOOK_PublisherId];
ALTER TABLE [BOOK] DROP COLUMN [PublisherId];
ALTER TABLE [PUBLISHER] DROP CONSTRAINT [PK_PUBLISHER];
ALTER TABLE [PUBLISHER] DROP COLUMN [PublisherId];
ALTER TABLE [PUBLISHER] ADD CONSTRAINT [PK_PUBLISHER] PRIMARY KEY ([Name]);
ALTER TABLE [BOOK] ADD [PublisherName] NVARCHAR(64);
ALTER TABLE [BOOK] ADD CONSTRAINT [FK_BOOK_PublisherName] FOREIGN KEY ([PublisherName]) REFERENCES [PUBLISHER] ([Name]);