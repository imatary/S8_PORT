.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;
.super Ljava/lang/Object;
.source "ScanlineFilterAverage.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# instance fields
.field private final bytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    sub-int v2, v1, v5

    if-ltz v2, :cond_0

    aget-byte v4, p2, v2

    :cond_0
    const/4 v3, 0x0

    if-eqz p3, :cond_1

    aget-byte v3, p3, v1

    :cond_1
    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v3, 0xff

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    aget-byte v5, p1, v1

    add-int/2addr v5, v0

    rem-int/lit16 v5, v5, 0x100

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
