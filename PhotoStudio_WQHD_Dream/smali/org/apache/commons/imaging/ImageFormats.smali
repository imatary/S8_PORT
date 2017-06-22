.class public final enum Lorg/apache/commons/imaging/ImageFormats;
.super Ljava/lang/Enum;
.source "ImageFormats.java"

# interfaces
.implements Lorg/apache/commons/imaging/ImageFormat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/ImageFormats;",
        ">;",
        "Lorg/apache/commons/imaging/ImageFormat;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum BMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum DCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum GIF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICNS:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICO:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JBIG2:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PAM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PGM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PPM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum RGBE:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TGA:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TIFF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum WBMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XPM:Lorg/apache/commons/imaging/ImageFormats;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "BMP"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "DCX"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "ICNS"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "ICO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "JBIG2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "JPEG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PAM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PSD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PBM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PGM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PNM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PPM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PCX"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "PNG"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "RGBE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "TGA"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->TGA:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "TIFF"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "WBMP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "XBM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "XPM"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const/16 v0, 0x16

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormats;

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->TGA:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageFormats;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/ImageFormats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageFormats;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageFormats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageFormats;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageFormats;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
