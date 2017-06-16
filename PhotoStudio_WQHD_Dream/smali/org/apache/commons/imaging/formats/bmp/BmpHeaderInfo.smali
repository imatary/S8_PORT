.class Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
.super Ljava/lang/Object;
.source "BmpHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;,
        Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;
    }
.end annotation


# instance fields
.field public final alphaMask:I

.field public final bitmapDataOffset:I

.field public final bitmapDataSize:I

.field public final bitmapHeaderSize:I

.field public final bitsPerPixel:I

.field public final blueMask:I

.field public final colorSpace:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

.field public final colorSpaceType:I

.field public final colorsImportant:I

.field public final colorsUsed:I

.field public final compression:I

.field public final fileSize:I

.field public final gammaBlue:I

.field public final gammaGreen:I

.field public final gammaRed:I

.field public final greenMask:I

.field public final hResolution:I

.field public final height:I

.field public final identifier1:B

.field public final identifier2:B

.field public final intent:I

.field public final planes:I

.field public final profileData:I

.field public final profileSize:I

.field public final redMask:I

.field public final reserved:I

.field public final reservedV5:I

.field public final vResolution:I

.field public final width:I


# direct methods
.method public constructor <init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;IIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    iput-byte p2, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    iput p3, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->fileSize:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->reserved:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    iput p6, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    iput p7, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iput p8, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    iput p9, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->planes:I

    iput p10, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    iput p11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    iput p12, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataSize:I

    iput p13, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    iput p14, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    move/from16 v0, p15

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v0, p16

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsImportant:I

    move/from16 v0, p17

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->redMask:I

    move/from16 v0, p18

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->greenMask:I

    move/from16 v0, p19

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->blueMask:I

    move/from16 v0, p20

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->alphaMask:I

    move/from16 v0, p21

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorSpaceType:I

    move-object/from16 v0, p22

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorSpace:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    move/from16 v0, p23

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaRed:I

    move/from16 v0, p24

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaGreen:I

    move/from16 v0, p25

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaBlue:I

    move/from16 v0, p26

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->intent:I

    move/from16 v0, p27

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->profileData:I

    move/from16 v0, p28

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->profileSize:I

    move/from16 v0, p29

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->reservedV5:I

    return-void
.end method
