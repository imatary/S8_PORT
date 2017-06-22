.class public final enum Lorg/apache/commons/imaging/formats/png/PngColorType;
.super Ljava/lang/Enum;
.source "PngColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/formats/png/PngColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public static final enum TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;


# instance fields
.field private final allowedBitDepths:[I

.field private final alpha:Z

.field private final greyscale:Z

.field private final samplesPerPixel:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const-string v1, "GREYSCALE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x5

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const-string v1, "TRUE_COLOR"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const-string v1, "INDEXED_COLOR"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const-string v1, "GREYSCALE_WITH_ALPHA"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    const-string v1, "TRUE_COLOR_WITH_ALPHA"

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;-><init>(Ljava/lang/String;IIZZI[I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/png/PngColorType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZI[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    iput-boolean p4, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->greyscale:Z

    iput-boolean p5, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->alpha:Z

    iput p6, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->samplesPerPixel:I

    iput-object p7, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->allowedBitDepths:[I

    return-void
.end method

.method public static getColorType(I)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .locals 5

    invoke-static {}, Lorg/apache/commons/imaging/formats/png/PngColorType;->values()[Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static getColorType(ZZ)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/PngColorType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/PngColorType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngColorType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/PngColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/PngColorType;

    return-object v0
.end method


# virtual methods
.method getSamplesPerPixel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->samplesPerPixel:I

    return v0
.end method

.method getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->value:I

    return v0
.end method

.method hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->alpha:Z

    return v0
.end method

.method isBitDepthAllowed(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->allowedBitDepths:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGreyscale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngColorType;->greyscale:Z

    return v0
.end method
