USE [mercado_tg]
GO
/****** Object:  Table [dbo].[acesso]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acesso](
	[cod_usuario] [int] IDENTITY(1,1) NOT NULL,
	[CPF_usuario] [varchar](50) NOT NULL,
	[senha_usuario] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_acesso] PRIMARY KEY CLUSTERED 
(
	[cod_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[cod_categoria] [int] IDENTITY(1,1) NOT NULL,
	[categ] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[cod_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[codigo_cli] [int] IDENTITY(1,1) NOT NULL,
	[nome_cli] [varchar](50) NOT NULL,
	[datanasc_cli] [date] NOT NULL,
	[sexo_cli] [varchar](10) NOT NULL,
	[telefone_cli] [varchar](20) NULL,
	[celular_cli] [varchar](20) NULL,
	[RG_cli] [varchar](20) NOT NULL,
	[CPF_cli] [varchar](20) NOT NULL,
	[endereco_cli] [varchar](50) NOT NULL,
	[cidade_cli] [varchar](20) NOT NULL,
	[bairro_cli] [varchar](20) NOT NULL,
	[numero_cli] [int] NOT NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[codigo_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debitoscli]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[debitoscli](
	[cod_debito] [int] IDENTITY(1,1) NOT NULL,
	[valordeb] [decimal](18, 2) NOT NULL,
	[datadeb] [timestamp] NOT NULL,
	[cod_clideb] [int] NOT NULL,
	[detalhe_vendacli] [int] NOT NULL,
 CONSTRAINT [PK_debitoscli] PRIMARY KEY CLUSTERED 
(
	[cod_debito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dependentes]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dependentes](
	[cod_dependentes] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cod_clidp] [int] NOT NULL,
 CONSTRAINT [PK_dependentes] PRIMARY KEY CLUSTERED 
(
	[cod_dependentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedor](
	[cod_fornecdor] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[CNPJ] [varchar](50) NULL,
	[IE] [varchar](50) NULL,
	[endereco] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[telefone_fornec] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
	[CPF_fornec] [varchar](50) NULL,
	[RG_fornec] [varchar](50) NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[cod_fornecdor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[marcas](
	[cod_marca] [int] IDENTITY(1,1) NOT NULL,
	[nome_marcas] [varchar](50) NOT NULL,
	[cod_categ_marcas] [int] NULL,
 CONSTRAINT [PK_marcas] PRIMARY KEY CLUSTERED 
(
	[cod_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[produtoentrada]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[produtoentrada](
	[codigo_prod] [int] IDENTITY(1,1) NOT NULL,
	[codigo_barra] [int] NOT NULL,
	[descricao_prod] [varchar](50) NOT NULL,
	[categoria_prod] [int] NOT NULL,
	[marca_prod] [int] NOT NULL,
	[preco_custo] [decimal](18, 2) NOT NULL,
	[preco_venda] [decimal](18, 2) NOT NULL,
	[estoque_atualprod] [varchar](50) NOT NULL,
	[validade_prod] [varchar](50) NULL,
	[codprod_fornec] [int] NOT NULL,
	[unidades] [int] NULL,
	[peso] [decimal](18, 2) NULL,
	[data_entrada] [timestamp] NOT NULL,
 CONSTRAINT [PK_produtoentrada] PRIMARY KEY CLUSTERED 
(
	[codigo_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[produtosaida]    Script Date: 26/01/2019 21:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtosaida](
	[cod_prodsaida] [int] IDENTITY(1,1) NOT NULL,
	[quantidade_saida] [int] NULL,
	[peso_saida] [decimal](18, 2) NULL,
	[cod_prod_entrada] [int] NOT NULL,
	[data_saida] [timestamp] NOT NULL,
	[rank] [int] NOT NULL,
 CONSTRAINT [PK_produtosaida] PRIMARY KEY CLUSTERED 
(
	[cod_prodsaida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[acesso] ON 

INSERT [dbo].[acesso] ([cod_usuario], [CPF_usuario], [senha_usuario], [tipo], [nome]) VALUES (3, N'22358867870', N'321', N'ADMINISTRADOR', N'cesar')
SET IDENTITY_INSERT [dbo].[acesso] OFF
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (1, N'alimentos')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (2, N'carnes_aves_peixes')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (3, N'bebidas')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (4, N'bebidas alcoolicas')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (5, N'higiene pessoal')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (6, N'produtos de limpeza')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (7, N'padaria')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (8, N'utensilios para o lar')
SET IDENTITY_INSERT [dbo].[categoria] OFF
SET IDENTITY_INSERT [dbo].[marcas] ON 

INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (1, N'Skol', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (2, N'Brahma', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (3, N'Schin', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (4, N'Kaiser', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (5, N'Bohemia', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (6, N'Bavaria', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (7, N'Itaipava', 4)
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas], [cod_categ_marcas]) VALUES (8, N'Antarctica', 4)
SET IDENTITY_INSERT [dbo].[marcas] OFF
ALTER TABLE [dbo].[debitoscli]  WITH CHECK ADD  CONSTRAINT [FK_debitoscli_clientes] FOREIGN KEY([cod_clideb])
REFERENCES [dbo].[clientes] ([codigo_cli])
GO
ALTER TABLE [dbo].[debitoscli] CHECK CONSTRAINT [FK_debitoscli_clientes]
GO
ALTER TABLE [dbo].[dependentes]  WITH CHECK ADD  CONSTRAINT [FK_dependentes_clientes] FOREIGN KEY([cod_clidp])
REFERENCES [dbo].[clientes] ([codigo_cli])
GO
ALTER TABLE [dbo].[dependentes] CHECK CONSTRAINT [FK_dependentes_clientes]
GO
ALTER TABLE [dbo].[marcas]  WITH CHECK ADD  CONSTRAINT [FK_marcas_categoria] FOREIGN KEY([cod_categ_marcas])
REFERENCES [dbo].[categoria] ([cod_categoria])
GO
ALTER TABLE [dbo].[marcas] CHECK CONSTRAINT [FK_marcas_categoria]
GO
ALTER TABLE [dbo].[produtoentrada]  WITH CHECK ADD  CONSTRAINT [FK_produtoentrada_fornecedor] FOREIGN KEY([codprod_fornec])
REFERENCES [dbo].[fornecedor] ([cod_fornecdor])
GO
ALTER TABLE [dbo].[produtoentrada] CHECK CONSTRAINT [FK_produtoentrada_fornecedor]
GO
ALTER TABLE [dbo].[produtoentrada]  WITH CHECK ADD  CONSTRAINT [FK_produtoentrada_marcas] FOREIGN KEY([marca_prod])
REFERENCES [dbo].[marcas] ([cod_marca])
GO
ALTER TABLE [dbo].[produtoentrada] CHECK CONSTRAINT [FK_produtoentrada_marcas]
GO
ALTER TABLE [dbo].[produtoentrada]  WITH CHECK ADD  CONSTRAINT [FK_produtoentrada_produtoentrada] FOREIGN KEY([categoria_prod])
REFERENCES [dbo].[categoria] ([cod_categoria])
GO
ALTER TABLE [dbo].[produtoentrada] CHECK CONSTRAINT [FK_produtoentrada_produtoentrada]
GO
