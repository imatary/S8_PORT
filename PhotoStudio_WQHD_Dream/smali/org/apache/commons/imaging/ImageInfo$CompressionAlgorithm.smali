.class public final enum Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;


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

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "LZW"

    const-string v2, "LZW"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PACKBITS"

    const-string v2, "PackBits"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "JPEG"

    const-string v2, "JPEG"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "RLE"

    const/4 v2, 0x5

    const-string v3, "RLE: Run-Length Encoding"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "ADAPTIVE_RLE"

    const/4 v2, 0x6

    const-string v3, "Adaptive RLE"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PSD"

    const/4 v2, 0x7

    const-string v3, "Photoshop"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PNG_FILTER"

    const/16 v2, 0x8

    const-string v3, "PNG Filter"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_GROUP_3"

    const/16 v2, 0x9

    const-string v3, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_GROUP_4"

    const/16 v2, 0xa

    const-string v3, "CCITT Group 4"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_1D"

    const/16 v2, 0xb

    const-string v3, "CCITT 1D"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

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

    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-object v0
.end method
