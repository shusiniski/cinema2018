
USE [Cinemass]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmCountries]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmCountries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_FilmCountries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmGenres]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmGenres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[GenreId] [int] NULL,
 CONSTRAINT [PK_FilmGenres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Duration] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[About] [ntext] NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halls]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Halls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PosterId] [int] NOT NULL,
	[Date] [date] NULL,
	[ActionDate] [datetime] NULL,
	[Price] [money] NULL,
	[SeatId] [int] NOT NULL,
	[Column] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posters]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NOT NULL,
	[HallId] [int] NOT NULL,
	[Price] [money] NULL,
	[Time] [time](7) NULL,
	[PrimeryDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Posters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 6/7/2018 9:34:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HallId] [int] NOT NULL,
	[Row] [nvarchar](50) NULL,
	[Columns] [int] NOT NULL,
 CONSTRAINT [PK_Seats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name]) VALUES (1, N'Azerbaijan')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (2, N'Canada')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (3, N'London')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (4, N'ABS')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (5, N'Russia')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (6, N'Italy')
INSERT [dbo].[Countries] ([Id], [Name]) VALUES (7, N'Kiev')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[FilmCountries] ON 

INSERT [dbo].[FilmCountries] ([Id], [FilmId], [CountryId]) VALUES (11, 3, 2)
SET IDENTITY_INSERT [dbo].[FilmCountries] OFF
SET IDENTITY_INSERT [dbo].[FilmGenres] ON 

INSERT [dbo].[FilmGenres] ([Id], [FilmId], [GenreId]) VALUES (4, 3, 1)
SET IDENTITY_INSERT [dbo].[FilmGenres] OFF
SET IDENTITY_INSERT [dbo].[Films] ON 

INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (3, N'Alemi cin', 2, 2018, N'Gənc qadın olan Yeliz, 25 yaşı tamam olduqdan sonra, dəhşətli yuxular görməyə başlayır. Əvvəllərdə
buna məhəl qoymasa da, bu dəhşətlər çoxaldıqca qorxuya düşür. Vəziyyət ciddiləşdikdə isə, gördükləri
ilə bağlı araşdırmaya başlayan Yeliz, ailəsi ilə bağlı gizli qalmış qorxuducu faktı öyrənir. Nə edəcəyini
bilməyən və getdikcə daha da böyük dəhşətlərə düşən Yeliz, ailə dostundan kömək istəyir. Amma əsas
məsələ ondadır ki, Yelizin düşməni bu dünyadan deyil və qız bu qorxularından xilas olmaq üçün, cinlər
aləmi ilə tanış olmalıdır.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (4, N'Qırmızı sərçə', 3, 2018, N'Dominika Eqorova, Rusiya təhlükəsizlik xidmətində insanları ağıldan çıxardan kimi fəaliyyət göstərən
“sərçə” kimi təhsil alır. Dominika öz bədənini silah kimi istifadə etməyi öyrənsə də, bu müddətdə, öz
mənlik hissini qorumaq üçün mübarizə etmişdir. Onun ilk hədəfi, xidmətin rus kəşfiyyatına ən həssas
nüfuz gətirən, Amerika Mərkəzi Kəşfiyyat İdarəsinin nümayəndəsi Neyt Naşdır.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (5, N'Dedpul 2 (Türk)', 2, 2018, N'Yeganə və təkrarolunmaz deyingən qatil geri döndü. Əvvəlkindən də daha geniş miqyaslı, daha dağıdıcı
şəkildə. Onun həyatına ölürücü tapşırıqlı supərəsgər girdiyi vaxtda, Dedpul, özü, ailəsi və əsl qəhrəman
necə olmadır kimi fikirləri düşünür. Çünki bəzən yaxşı şeylər etmək üçün, iyrənc yolları seçmək lazım
gəlir.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (6, N'Kaybedenler klübü yolda', 1, 2018, N'Kaan və Metin Olimposda, bir neçe insanın qatıldığı Kadıköy qrupu ilə əyləncəli tətildən sonra,
motosikletləri ilə İstanbula sarı yola düşürlər. Amma bu səfərin iki gözlənilməz qonağı da olacaq.
İstanbula tərəf gedərkən, həyat onlara, yolun, səfərin və münasibətlərin heç vaxt planlanıldığı kimi
getmədiyini bir kəz daha və olduqca sərt şəkildə göstərir.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (7, N'Qaçış planı 2', 3, 2018, N'Qaçışın mümkün olmadığı, yeni və ən müasir həbsxana. Bu dəfə onun dostu çətin vəziyyətdədir. O, geri
qayıdır və sübut edəcək ki, onun üçün mümkünsüz yoxdur. Cəhənnəmə xoş gəlmişsiniz!')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (8, N'Eskobar', 2, 2018, N'Pablo Eksobarın yüksəliş tarixi – onun milyardlara doğru sürətli yolu, gücü və bağışlanmaz cinayətləri.
Güclü narkobarona jurnalist aşiq olur, hansının ki, memuarları filmin əsasına düşüb.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (9, N'Mümkünsüz tapşırıq 6', 3, 2018, N'İtan Hanq və onun komandası, hətta onlara yeni qoşulmuş müttəfiqləri, yeni tapşırıq planlanan kimi
getmədiyi vaxt zamana qarşı yarışmalı olurlar.')
INSERT [dbo].[Films] ([Id], [Name], [Duration], [Year], [About]) VALUES (10, N'Ouşenin 8 rəfiqəsi', 2, 2018, N'Debbi Ouşen, Nyu-Yorkda hər il keçirilən balda inanılmaz soyğun həyata keçirmək istəyir. Bunun üçün
ona ən yaxşılardan ibarət komanda lazımdır.')
SET IDENTITY_INSERT [dbo].[Films] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Name]) VALUES (1, N'qorxu')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (2, N'dəhşət ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (3, N'triller, krimilal, komediya ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (4, N'macəra, triller ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (5, N'bioqrafiya, kriminal ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (6, N'triller, döyüş ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (7, N'triller detektiv ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (8, N'döyüş, komediya, fantastika ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (9, N'dram ')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (10, N'komediya ')
SET IDENTITY_INSERT [dbo].[Genres] OFF
SET IDENTITY_INSERT [dbo].[Halls] ON 

INSERT [dbo].[Halls] ([Id], [Name]) VALUES (1, N'3')
INSERT [dbo].[Halls] ([Id], [Name]) VALUES (2, N'2')
INSERT [dbo].[Halls] ([Id], [Name]) VALUES (3, N'1')
INSERT [dbo].[Halls] ([Id], [Name]) VALUES (4, N'14')
INSERT [dbo].[Halls] ([Id], [Name]) VALUES (5, N'11')
SET IDENTITY_INSERT [dbo].[Halls] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [PosterId], [Date], [ActionDate], [Price], [SeatId], [Column]) VALUES (1, 5, CAST(N'2018-06-07' AS Date), CAST(N'2018-06-05T00:00:00.000' AS DateTime), 10.0000, 2, 2)
INSERT [dbo].[Orders] ([Id], [PosterId], [Date], [ActionDate], [Price], [SeatId], [Column]) VALUES (4, 6, CAST(N'2018-06-10' AS Date), CAST(N'2018-06-08T00:00:00.000' AS DateTime), 5.0000, 3, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Posters] ON 

INSERT [dbo].[Posters] ([Id], [FilmId], [HallId], [Price], [Time], [PrimeryDate], [EndDate]) VALUES (5, 3, 1, 10.0000, CAST(N'20:20:00' AS Time), CAST(N'2018-06-07' AS Date), CAST(N'2018-06-09' AS Date))
INSERT [dbo].[Posters] ([Id], [FilmId], [HallId], [Price], [Time], [PrimeryDate], [EndDate]) VALUES (6, 4, 5, 5.0000, CAST(N'10:10:00' AS Time), CAST(N'2018-06-08' AS Date), CAST(N'2018-06-10' AS Date))
INSERT [dbo].[Posters] ([Id], [FilmId], [HallId], [Price], [Time], [PrimeryDate], [EndDate]) VALUES (7, 5, 4, 8.0000, CAST(N'12:00:00' AS Time), CAST(N'2018-06-09' AS Date), CAST(N'2018-06-11' AS Date))
INSERT [dbo].[Posters] ([Id], [FilmId], [HallId], [Price], [Time], [PrimeryDate], [EndDate]) VALUES (10, 6, 3, 10.0000, CAST(N'15:30:00' AS Time), CAST(N'2018-06-11' AS Date), CAST(N'2018-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[Posters] OFF
SET IDENTITY_INSERT [dbo].[Seats] ON 

INSERT [dbo].[Seats] ([Id], [HallId], [Row], [Columns]) VALUES (2, 1, N'2', 2)
INSERT [dbo].[Seats] ([Id], [HallId], [Row], [Columns]) VALUES (3, 2, N'2', 2)
INSERT [dbo].[Seats] ([Id], [HallId], [Row], [Columns]) VALUES (4, 3, N'3', 3)
INSERT [dbo].[Seats] ([Id], [HallId], [Row], [Columns]) VALUES (5, 5, N'2', 2)
SET IDENTITY_INSERT [dbo].[Seats] OFF
ALTER TABLE [dbo].[FilmCountries]  WITH CHECK ADD  CONSTRAINT [FK_FilmCountries_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[FilmCountries] CHECK CONSTRAINT [FK_FilmCountries_Countries]
GO
ALTER TABLE [dbo].[FilmCountries]  WITH CHECK ADD  CONSTRAINT [FK_FilmCountries_Films] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Films] ([Id])
GO
ALTER TABLE [dbo].[FilmCountries] CHECK CONSTRAINT [FK_FilmCountries_Films]
GO
ALTER TABLE [dbo].[FilmGenres]  WITH CHECK ADD  CONSTRAINT [FK_FilmGenres_Films] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Films] ([Id])
GO
ALTER TABLE [dbo].[FilmGenres] CHECK CONSTRAINT [FK_FilmGenres_Films]
GO
ALTER TABLE [dbo].[FilmGenres]  WITH CHECK ADD  CONSTRAINT [FK_FilmGenres_Genres] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[FilmGenres] CHECK CONSTRAINT [FK_FilmGenres_Genres]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Posters] FOREIGN KEY([PosterId])
REFERENCES [dbo].[Posters] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Posters]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Seats] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seats] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Seats]
GO
ALTER TABLE [dbo].[Posters]  WITH CHECK ADD  CONSTRAINT [FK_Posters_Films] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Films] ([Id])
GO
ALTER TABLE [dbo].[Posters] CHECK CONSTRAINT [FK_Posters_Films]
GO
ALTER TABLE [dbo].[Posters]  WITH CHECK ADD  CONSTRAINT [FK_Posters_Halls] FOREIGN KEY([HallId])
REFERENCES [dbo].[Halls] ([Id])
GO
ALTER TABLE [dbo].[Posters] CHECK CONSTRAINT [FK_Posters_Halls]
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD  CONSTRAINT [FK_Seats_Halls] FOREIGN KEY([HallId])
REFERENCES [dbo].[Halls] ([Id])
GO
ALTER TABLE [dbo].[Seats] CHECK CONSTRAINT [FK_Seats_Halls]
GO
USE [master]
GO
ALTER DATABASE [Cinemass] SET  READ_WRITE 
GO
