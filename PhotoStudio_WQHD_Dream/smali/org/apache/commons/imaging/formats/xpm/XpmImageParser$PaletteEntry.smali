.class Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;
.super Ljava/lang/Object;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaletteEntry"
.end annotation


# instance fields
.field colorArgb:I

.field gray4LevelArgb:I

.field grayArgb:I

.field haveColor:Z

.field haveGray:Z

.field haveGray4Level:Z

.field haveMono:Z

.field index:I

.field monoArgb:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveColor:Z

    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray:Z

    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray4Level:Z

    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveMono:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;-><init>()V

    return-void
.end method


# virtual methods
.method getBestARGB()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->colorArgb:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->grayArgb:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray4Level:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->gray4LevelArgb:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveMono:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->monoArgb:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
