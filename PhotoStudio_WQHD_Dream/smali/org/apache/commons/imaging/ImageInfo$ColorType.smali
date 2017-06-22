.class public final enum Lorg/apache/commons/imaging/ImageInfo$ColorType;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "BW"

    const-string v2, "Black and White"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "GRAYSCALE"

    const-string v2, "Grayscale"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "RGB"

    const-string v2, "RGB"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "CMYK"

    const-string v2, "CMYK"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCbCr"

    const-string v2, "YCbCr"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCCK"

    const/4 v2, 0x5

    const-string v3, "YCCK"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCC"

    const/4 v2, 0x6

    const-string v3, "YCC"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const-string v3, "Other"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-object v0
.end method
