.class public final enum Lorg/apache/commons/imaging/formats/png/ChunkType;
.super Ljava/lang/Enum;
.source "ChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/formats/png/ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;


# instance fields
.field final array:[B

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "IHDR"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "PLTE"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "IDAT"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "IEND"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "tRNS"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "cHRM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "gAMA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "iCCP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "sBIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "sRGB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "tEXt"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "zTXt"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "iTXt"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "bKGD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "hIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "pHYs"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "sPLT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "tIME"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/16 v0, 0x12

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/ChunkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/ChunkType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    aget-char v2, v0, v2

    const/4 v3, 0x1

    aget-char v3, v0, v3

    const/4 v4, 0x2

    aget-char v4, v0, v4

    const/4 v5, 0x3

    aget-char v5, v0, v5

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->charsToQuad(CCCC)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/ChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object v0
.end method
