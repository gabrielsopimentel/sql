CREATE TABLE [tb_produtos] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	descricao varchar(510),
	console varchar(255) NOT NULL,
	quantidade int,
	preco decimal(8,2) NOT NULL,
	foto varchar(5000) NOT NULL,
	categoria_id bigint NOT NULL,
	usuario_id bigint NOT NULL,
  CONSTRAINT [PK_TB_PRODUTOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_categorias] (
	id bigint NOT NULL,
	tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_CATEGORIAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	usuario varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	foto varchar(5000),
	dataNascimento date NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_produtos] WITH CHECK ADD CONSTRAINT [tb_produtos_fk0] FOREIGN KEY ([categoria_id]) REFERENCES [tb_categorias]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_produtos] CHECK CONSTRAINT [tb_produtos_fk0]
GO
ALTER TABLE [tb_produtos] WITH CHECK ADD CONSTRAINT [tb_produtos_fk1] FOREIGN KEY ([usuario_id]) REFERENCES [tb_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_produtos] CHECK CONSTRAINT [tb_produtos_fk1]
GO



