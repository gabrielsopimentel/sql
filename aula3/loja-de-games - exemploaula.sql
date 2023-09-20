-- Trecho adicionado Manualmente
CREATE DATABASE db_games;
GO

USE db_games;
GO

-- Fim do trecho
CREATE TABLE [tb_categorias] (
	Id bigint NOT NULL,
	Tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_CATEGORIAS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	Id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000),
	DataNascimento date NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_produtos] (
	Id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Descricao varchar(500),
	Console varchar(255) NOT NULL,
	Quantidade int,
	Preco decimal(8,2) NOT NULL,
	Foto varchar(5000) NOT NULL,
	CategoriaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_TB_PRODUTOS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO


ALTER TABLE [tb_produtos] WITH CHECK ADD CONSTRAINT [tb_produtos_fk0] FOREIGN KEY ([CategoriaId]) REFERENCES [tb_categorias]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_produtos] CHECK CONSTRAINT [tb_produtos_fk0]
GO
ALTER TABLE [tb_produtos] WITH CHECK ADD CONSTRAINT [tb_produtos_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [tb_usuarios]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_produtos] CHECK CONSTRAINT [tb_produtos_fk1]
GO