.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;
.super Ljava/lang/Object;
.source "ScanlineFilterSub.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# instance fields
.field private final bytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;->bytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;->bytesPerPixel:I

    sub-int v1, v0, v2

    if-ltz v1, :cond_0

    aget-byte v2, p1, v0

    aget-byte v3, p2, v1

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte v2, p1, v0

    aput-byte v2, p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method
