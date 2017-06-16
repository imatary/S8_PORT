.class Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;
.super Ljava/lang/Object;
.source "GifHeaderInfo.java"


# instance fields
.field public final backgroundColorIndex:B

.field public final colorResolution:B

.field public final globalColorTableFlag:Z

.field public final identifier1:B

.field public final identifier2:B

.field public final identifier3:B

.field public final logicalScreenHeight:I

.field public final logicalScreenWidth:I

.field public final packedFields:B

.field public final pixelAspectRatio:B

.field public final sizeOfGlobalColorTable:B

.field public final sortFlag:Z

.field public final version1:B

.field public final version2:B

.field public final version3:B


# direct methods
.method public constructor <init>(BBBBBBIIBBBZBZB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier1:B

    iput-byte p2, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier2:B

    iput-byte p3, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier3:B

    iput-byte p4, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version1:B

    iput-byte p5, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version2:B

    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version3:B

    iput p7, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    iput p8, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    iput-byte p9, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->packedFields:B

    iput-byte p10, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->backgroundColorIndex:B

    iput-byte p11, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->pixelAspectRatio:B

    iput-boolean p12, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    iput-byte p13, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->colorResolution:B

    iput-boolean p14, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sortFlag:Z

    iput-byte p15, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    return-void
.end method
