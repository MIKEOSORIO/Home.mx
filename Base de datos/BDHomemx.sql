/****** Object:  Database [dbhomemx]    Script Date: 13/12/2021 05:48:25 p. m. ******/
CREATE DATABASE [dbhomemx]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [dbhomemx] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [dbhomemx] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbhomemx] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbhomemx] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbhomemx] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbhomemx] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbhomemx] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbhomemx] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbhomemx] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbhomemx] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbhomemx] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbhomemx] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbhomemx] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbhomemx] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbhomemx] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbhomemx] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbhomemx] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [dbhomemx] SET  MULTI_USER 
GO
ALTER DATABASE [dbhomemx] SET ENCRYPTION ON
GO
ALTER DATABASE [dbhomemx] SET QUERY_STORE = ON
GO
ALTER DATABASE [dbhomemx] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 13/12/2021 05:48:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[iddireccion] [int] IDENTITY(1,1) NOT NULL,
	[calle] [text] NOT NULL,
	[cruzamiento1] [text] NOT NULL,
	[cruzamiento2] [text] NULL,
	[noExterior] [varchar](20) NOT NULL,
	[localidad] [text] NOT NULL,
	[entidadFed] [text] NOT NULL,
	[cp] [int] NOT NULL,
	[ubicacion] [text] NOT NULL,
	[auxiliar] [text] NULL,
 CONSTRAINT [PK_direccion] PRIMARY KEY CLUSTERED 
(
	[iddireccion] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imagen]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagen](
	[idimage] [int] IDENTITY(1,1) NOT NULL,
	[idpropiedad] [int] NULL,
	[auxiliar] [text] NULL,
	[image1] [text] NULL,
	[image2] [text] NULL,
	[image3] [text] NULL,
 CONSTRAINT [PK_imagen] PRIMARY KEY CLUSTERED 
(
	[idimage] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mensaje]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensaje](
	[idmensaje] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [text] NOT NULL,
	[idpropiedad] [int] NOT NULL,
	[idEmisor] [int] NULL,
	[idReceptor] [int] NULL,
	[fecha] [date] NULL,
	[status] [varchar](50) NULL,
	[auxiliar] [text] NULL,
 CONSTRAINT [PK_mensaje] PRIMARY KEY CLUSTERED 
(
	[idmensaje] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[propiedad]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[propiedad](
	[idpropiedad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [text] NOT NULL,
	[numCuartos] [int] NOT NULL,
	[espacioPersonas] [int] NOT NULL,
	[precio] [int] NOT NULL,
	[deposito] [int] NOT NULL,
	[fechaAlta] [date] NULL,
	[status] [varchar](50) NULL,
	[contrato] [varchar](50) NULL,
	[iddireccion] [int] NOT NULL,
	[idservicios] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[auxiliar] [text] NULL,
	[corta] [text] NULL,
 CONSTRAINT [PK_propiedad] PRIMARY KEY CLUSTERED 
(
	[idpropiedad] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renta]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renta](
	[idrenta] [int] IDENTITY(1,1) NOT NULL,
	[idusuario] [int] NULL,
	[idpropiedad] [int] NULL,
	[status] [varchar](30) NULL,
	[auxiliar] [text] NULL,
 CONSTRAINT [PK_renta] PRIMARY KEY CLUSTERED 
(
	[idrenta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicios](
	[idservicios] [int] IDENTITY(1,1) NOT NULL,
	[internet] [bit] NULL,
	[comida] [bit] NULL,
	[limpieza] [bit] NULL,
	[amueblada] [bit] NULL,
	[parking] [bit] NULL,
	[alberca] [bit] NULL,
	[clima] [bit] NULL,
	[terraza] [bit] NULL,
	[lavanderia] [bit] NULL,
	[auxiliar] [text] NULL,
 CONSTRAINT [PK_servicios] PRIMARY KEY CLUSTERED 
(
	[idservicios] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 13/12/2021 05:48:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[apellido] [varchar](80) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[contraseña] [varchar](16) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[auxiliar] [text] NULL,
	[idmensaje] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[imagen]  WITH CHECK ADD  CONSTRAINT [FK_imagen_propiedad] FOREIGN KEY([idpropiedad])
REFERENCES [dbo].[propiedad] ([idpropiedad])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[imagen] CHECK CONSTRAINT [FK_imagen_propiedad]
GO
ALTER TABLE [dbo].[propiedad]  WITH CHECK ADD  CONSTRAINT [FK_propiedad_direccion1] FOREIGN KEY([iddireccion])
REFERENCES [dbo].[direccion] ([iddireccion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[propiedad] CHECK CONSTRAINT [FK_propiedad_direccion1]
GO
ALTER TABLE [dbo].[propiedad]  WITH CHECK ADD  CONSTRAINT [FK_propiedad_servicios1] FOREIGN KEY([idservicios])
REFERENCES [dbo].[servicios] ([idservicios])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[propiedad] CHECK CONSTRAINT [FK_propiedad_servicios1]
GO
ALTER TABLE [dbo].[propiedad]  WITH CHECK ADD  CONSTRAINT [FK_propiedad_usuario] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[propiedad] CHECK CONSTRAINT [FK_propiedad_usuario]
GO
ALTER TABLE [dbo].[renta]  WITH CHECK ADD  CONSTRAINT [FK_renta_propiedad] FOREIGN KEY([idpropiedad])
REFERENCES [dbo].[propiedad] ([idpropiedad])
GO
ALTER TABLE [dbo].[renta] CHECK CONSTRAINT [FK_renta_propiedad]
GO
ALTER TABLE [dbo].[renta]  WITH CHECK ADD  CONSTRAINT [FK_renta_usuario1] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[renta] CHECK CONSTRAINT [FK_renta_usuario1]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_mensaje1] FOREIGN KEY([idmensaje])
REFERENCES [dbo].[mensaje] ([idmensaje])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_mensaje1]
GO
ALTER DATABASE [dbhomemx] SET  READ_WRITE 
GO
