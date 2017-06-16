.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;
.super Ljava/lang/Object;
.source "ScanlineFilterPaeth.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# instance fields
.field private final bytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->bytesPerPixel:I

    return-void
.end method

.method private paethPredictor(III)I
    .locals 5

    add-int v4, p1, p2

    sub-int v0, v4, p3

    sub-int v4, v0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v4, v0, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    :goto_0
    return p1

    :cond_0
    if-gt v2, v3, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    goto :goto_0
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_3

    const/4 v2, 0x0

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->bytesPerPixel:I

    sub-int v4, v1, v6

    if-ltz v4, :cond_0

    aget-byte v2, p2, v4

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    aget-byte v0, p3, v1

    :cond_1
    const/4 v5, 0x0

    if-ltz v4, :cond_2

    if-eqz p3, :cond_2

    aget-byte v5, p3, v4

    :cond_2
    and-int/lit16 v6, v2, 0xff

    and-int/lit16 v7, v0, 0xff

    and-int/lit16 v8, v5, 0xff

    invoke-direct {p0, v6, v7, v8}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;->paethPredictor(III)I

    move-result v3

    aget-byte v6, p1, v1

    add-int/2addr v6, v3

    rem-int/lit16 v6, v6, 0x100

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
