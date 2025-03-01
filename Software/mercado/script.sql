/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2014 (12.0.2269)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Express Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2017
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Standard Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/
USE [mercado_tg]
GO
/****** Object:  Table [dbo].[acesso]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[categoria]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[cod_categoria] [varchar](50) NOT NULL,
	[categ] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[cod_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[debitoscli]    Script Date: 23/04/2019 18:01:39 ******/
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
/****** Object:  Table [dbo].[dependentes]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[estoque]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estoque](
	[codigo_prod] [int] IDENTITY(1,1) NOT NULL,
	[codigo_barra] [varchar](50) NOT NULL,
	[descricao_prod] [varchar](50) NOT NULL,
	[categoria_prod] [varchar](50) NOT NULL,
	[marca_prod] [varchar](50) NOT NULL,
	[preco_custo] [decimal](18, 2) NOT NULL,
	[preco_venda] [decimal](18, 2) NOT NULL,
	[estoque_atualprod] [int] NOT NULL,
	[validade_prod] [varchar](50) NULL,
	[codprod_fornec] [int] NOT NULL,
	[data_entrada] [varchar](50) NULL,
	[codprodentrada] [int] NOT NULL,
 CONSTRAINT [PK_estoque] PRIMARY KEY CLUSTERED 
(
	[codigo_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fornecedor](
	[cod_fornecdor] [int] NOT NULL,
	[nome_fornecedor] [varchar](50) NOT NULL,
	[CNPJ] [varchar](50) NOT NULL,
	[IE] [varchar](50) NOT NULL,
	[endereco] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[telefone_fornec] [varchar](50) NOT NULL,
	[celular] [varchar](50) NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[cod_fornecdor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcas](
	[cod_marca] [varchar](50) NOT NULL,
	[nome_marcas] [varchar](50) NOT NULL,
 CONSTRAINT [PK_marcas] PRIMARY KEY CLUSTERED 
(
	[cod_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produtoentrada]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtoentrada](
	[codigo_prod] [int] IDENTITY(1,1) NOT NULL,
	[codigo_barra] [varchar](50) NOT NULL,
	[descricao_prod] [varchar](50) NOT NULL,
	[categoria_prod] [varchar](50) NOT NULL,
	[marca_prod] [varchar](50) NOT NULL,
	[preco_custo] [decimal](18, 2) NOT NULL,
	[preco_venda] [decimal](18, 2) NOT NULL,
	[estoque_atualprod] [int] NOT NULL,
	[validade_prod] [varchar](50) NULL,
	[codprod_fornec] [int] NOT NULL,
	[unidades] [int] NOT NULL,
	[data_entrada] [varchar](50) NOT NULL,
 CONSTRAINT [PK_produtoentrada] PRIMARY KEY CLUSTERED 
(
	[codigo_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produtosaida]    Script Date: 23/04/2019 18:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtosaida](
	[cod_prodsaida] [int] IDENTITY(1,1) NOT NULL,
	[quantidade_saida] [int] NULL,
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

INSERT [dbo].[acesso] ([cod_usuario], [CPF_usuario], [senha_usuario], [tipo], [nome]) VALUES (3, N'22358867870', N'123', N'ADMINISTRADOR', N'cesar')
SET IDENTITY_INSERT [dbo].[acesso] OFF
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'1', N'ALIMENTOS')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'1009', N'----------')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'2', N'CARNES,AVES E PEIXES')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'3', N'BEBIDAS')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'4', N'BEBIDAS ALCOOLICAS')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'5', N'HIIGIENE PESSOAL')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'6', N'PRODUTOS DE LIMPEZA')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'7', N'PADARIA')
INSERT [dbo].[categoria] ([cod_categoria], [categ]) VALUES (N'8', N'UTENSILIOS DO LAR')
SET IDENTITY_INSERT [dbo].[estoque] ON 

INSERT [dbo].[estoque] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [data_entrada], [codprodentrada]) VALUES (1, N'123456', N'CERVEJA GARRAFA 600ML ITAIPAVA', N'BEBIDAS ALCOOLICAS', N'ITAIPAVA', CAST(44.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 14, N'10/10/2019', 2, N'Mar 19 2019 12:00AM', 3)
INSERT [dbo].[estoque] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [data_entrada], [codprodentrada]) VALUES (2, N'5555555555555', N'OLEO VEGETAL', N'BEBIDAS', N'SOYA', CAST(6.50 AS Decimal(18, 2)), CAST(8.45 AS Decimal(18, 2)), 65, N'10/10/2019', 3, N'20/04/2019', 8)
INSERT [dbo].[estoque] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [data_entrada], [codprodentrada]) VALUES (3, N'5555555555555', N'OLEO VEGETAL', N'ALIMENTOS', N'SOYA', CAST(6.50 AS Decimal(18, 2)), CAST(8.45 AS Decimal(18, 2)), 68, N'10/02/2019', 4, N'20/04/2019', 9)
SET IDENTITY_INSERT [dbo].[estoque] OFF
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (1, N'----------', N'NENHUM', N'NENHUM', N'NENHUM', N'NENHUM', N'NENHUM', N'NENHUM', N'NENHUM', N'NENHUM')
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (2, N'SÃO LUIZ', N'12345678901234', N'45632178', N'RUA ONOFRE', N'ITAPETININGA', N'CENTRO', N'SP', N'1532751540', N'15999974852')
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (3, N'MARTINS', N'43210987654321', N'95135274', N'RUA FANTASIA', N'ITAPETININGA', N'CENTRO', N'SP', N'1568794521', N'156489751')
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (4, N'FANTASIA', N'14785236912345', N'15975365482', N'RUA FANTASIA', N'ITAPE', N'B. NUNCA', N'SP', N'122346587', N'87984659')
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (5, N'SSS', N'12345678901111', N'23235454654', N'DDDD', N'FFF', N'GGG', N'SD', N'3434354545', N'565656')
INSERT [dbo].[fornecedor] ([cod_fornecdor], [nome_fornecedor], [CNPJ], [IE], [endereco], [cidade], [bairro], [estado], [telefone_fornec], [celular]) VALUES (6, N'BBBNHHNNH', N'74185296312345', N'3243', N'SDSDS', N'2323', N'34343', N'SP', N'4567484674', N'878798')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'1', N'SKOL')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'10', N'PANCO')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'1009', N'SOYA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'1012', N'----------')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'2', N'BRAHMA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'3', N'SCHIN')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'4', N'KAISER')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'5', N'BOHEMIA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'6', N'BAVARIA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'7', N'ITAIPAVA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'8', N'ANTARCTICA')
INSERT [dbo].[marcas] ([cod_marca], [nome_marcas]) VALUES (N'9', N'SMIRNOFF')
SET IDENTITY_INSERT [dbo].[produtoentrada] ON 

INSERT [dbo].[produtoentrada] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [unidades], [data_entrada]) VALUES (1, N'123456789', N'CERVEJA GARRAFA 600ML ', N'BEBIDAS ALCOOLICAS', N'BRAHMA', CAST(5.50 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)), 13, N'10/10/2019', 2, 40, N'Jan  1 1900 12:00AM')
INSERT [dbo].[produtoentrada] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [unidades], [data_entrada]) VALUES (3, N'123456', N'CERVEJA GARRAFA 600ML ITAIPAVA', N'BEBIDAS ALCOOLICAS', N'ITAIPAVA', CAST(44.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), 12, N'10/10/2019', 2, 2, N'Mar 19 2019 12:00AM')
INSERT [dbo].[produtoentrada] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [unidades], [data_entrada]) VALUES (8, N'5555555555555', N'OLEO VEGETAL', N'BEBIDAS', N'SOYA', CAST(6.50 AS Decimal(18, 2)), CAST(8.45 AS Decimal(18, 2)), 0, N'10/10/2019', 0, 65, N'20/04/2019')
INSERT [dbo].[produtoentrada] ([codigo_prod], [codigo_barra], [descricao_prod], [categoria_prod], [marca_prod], [preco_custo], [preco_venda], [estoque_atualprod], [validade_prod], [codprod_fornec], [unidades], [data_entrada]) VALUES (9, N'5555555555555', N'OLEO VEGETAL', N'ALIMENTOS', N'SOYA', CAST(6.50 AS Decimal(18, 2)), CAST(8.45 AS Decimal(18, 2)), 65, N'10/02/2019', 4, 3, N'20/04/2019')
SET IDENTITY_INSERT [dbo].[produtoentrada] OFF
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
ALTER TABLE [dbo].[estoque]  WITH CHECK ADD  CONSTRAINT [FK_estoque_fornecedor] FOREIGN KEY([codprod_fornec])
REFERENCES [dbo].[fornecedor] ([cod_fornecdor])
GO
ALTER TABLE [dbo].[estoque] CHECK CONSTRAINT [FK_estoque_fornecedor]
GO
