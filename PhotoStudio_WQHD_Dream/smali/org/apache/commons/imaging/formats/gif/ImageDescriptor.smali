.class Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;
.super Lorg/apache/commons/imaging/formats/gif/GifBlock;
.source "ImageDescriptor.java"


# instance fields
.field final imageData:[B

.field final imageHeight:I

.field final imageLeftPosition:I

.field final imageTopPosition:I

.field final imageWidth:I

.field final interlaceFlag:Z

.field final localColorTable:[B

.field final localColorTableFlag:Z

.field final packedFields:B

.field final sizeOfLocalColorTable:B

.field final sortFlag:Z


# direct methods
.method constructor <init>(IIIIIBZZZB[B[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifBlock;-><init>(I)V

    iput p2, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageLeftPosition:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageTopPosition:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->packedFields:B

    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTableFlag:Z

    iput-boolean p8, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    iput-boolean p9, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->sortFlag:Z

    iput-byte p10, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->sizeOfLocalColorTable:B

    iput-object p11, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    iput-object p12, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageData:[B

    return-void
.end method
