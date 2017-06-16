.class Lorg/apache/commons/imaging/formats/psd/ImageResourceType;
.super Ljava/lang/Object;
.source "ImageResourceType.java"


# static fields
.field private static final TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final from:I

.field public final to:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x57

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3e8

    const-string v4, "Number of channels, rows, columns, depth, and mode."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3e9

    const-string v4, "Optional. Macintosh print manager print info record"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3eb

    const-string v4, "Indexed color table."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3ed

    const-string v4, "ResolutionInfo structure"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3ee

    const-string v4, "Names of the alpha channels as a series of Pascal strings."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3ef

    const-string v4, "DisplayInfo structure"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f0

    const-string v4, "Optional. The caption as a Pascal string."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f1

    const-string v4, "Border information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f2

    const-string v4, "Background color"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f3

    const-string v4, "Print flags (labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption)"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f4

    const-string v4, "Grayscale and multichannel halftoning information."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f5

    const-string v4, "Color halftoning information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f6

    const-string v4, "Duotone halftoning information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f7

    const-string v4, "Grayscale and multichannel transfer function"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f8

    const-string v4, "Color transfer functions"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3f9

    const-string v4, "Duotone transfer functions"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3fa

    const-string v4, "Duotone image information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3fb

    const-string v4, "Effective black and white values for the dot range."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3fc

    const-string v4, "Obsolete"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3fd

    const-string v4, "EPS options"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3fe

    const-string v4, "Quick Mask information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x3ff

    const-string v4, "Obsolete"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x400

    const-string v4, "Layer state information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x401

    const-string v4, "Working path (not saved)"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x402

    const-string v4, "Layers group information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x403

    const-string v4, "Obsolete"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x404

    const-string v4, "IPTC-NAA record"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x405

    const-string v4, "Image mode for raw format files"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x406

    const-string v4, "JPEG quality"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x408

    const-string v4, "Grid and guides information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x409

    const-string v4, "Thumbnail resource"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40a

    const-string v4, "Copyright flag"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40b

    const-string v4, "URL"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40c

    const-string v4, "Thumbnail resource"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40d

    const-string v4, "Global lighting angle for effects layer"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40e

    const-string v4, "Color samplers resource"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x40f

    const-string v4, "ICC Profile"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x410

    const-string v4, "Watermark"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x411

    const-string v4, "ICC Untagged. Disables any assumed profile handling when opening the file"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x412

    const-string v4, "Effects visible. global flag to show/hide all the effects layer. Only present when they are hidden."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x413

    const-string v4, "Spot Halftone"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x414

    const-string v4, "Document specific IDs"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x415

    const-string v4, "Unicode Alpha Names"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x416

    const-string v4, "Indexed Color Table Count. Number of colors in table that are actually defined"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x417

    const-string v4, "Transparency Index. Index of transparent color, if any"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x419

    const-string v4, "Global Altitude"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x41a

    const-string v4, "Slices"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x41b

    const-string v4, "Workflow URL"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x41c

    const-string v4, "Jump To XPEP"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x41d

    const-string v4, "Alpha Identifiers"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x41e

    const-string v4, "URL List"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x421

    const-string v4, "Version Info"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x422

    const-string v4, "EXIF data 1"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x423

    const-string v4, "EXIF data 3"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x424

    const-string v4, "XMP metadata"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x425

    const-string v4, "Caption digest"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x426

    const-string v4, "Print scale"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x428

    const-string v4, "Pixel Aspect Ratio"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x429

    const-string v4, "Layer Comps"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x42a

    const-string v4, "Alternate Duotone Colors"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x42b

    const-string v4, "Alternate Spot Colors"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x42d

    const-string v4, "Layer Selection ID(s)"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x42e

    const-string v4, "HDR Toning information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x42f

    const-string v4, "Print info"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x430

    const-string v4, "Layer Group(s) Enabled ID"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x431

    const-string v4, "Color samplers resource"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x432

    const-string v4, "Measurement Scale"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x433

    const-string v4, "Timeline Information"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x434

    const-string v4, "Sheet Disclosure"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x435

    const-string v4, "DisplayInfo structure to support floating point colors"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x436

    const-string v4, "Onion Skins"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x438

    const-string v4, "Count Information. Information about the count in the document."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43a

    const-string v4, "Print Information. Information about the current print settings in the document. The color management options."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43b

    const-string v4, "Print Style. Information about the current print style in the document. The printing marks, labels, ornaments, etc."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43c

    const-string v4, "Macintosh NSPrintInfo. Variable OS specific info for Macintosh. NSPrintInfo."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43d

    const-string v4, "Windows DEVMODE. Variable OS specific info for Windows. DEVMODE."

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43e

    const-string v4, "Auto Save File Path"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x43f

    const-string v4, "Auto Save Format"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x440

    const-string v4, "Path Selection State. Information about the current path selection state"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x7d0

    const/16 v4, 0xbb6

    const-string v5, "Path Information (saved paths)."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0xbb7

    const-string v4, "Name of clipping path"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0xbb8

    const-string v4, "Origin Path Info"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0xfa0

    const/16 v4, 0x1387

    const-string v5, "Plug-In resource(s). Resources added by a plug-in"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x1b58

    const-string v4, "Image Ready variables. XML representation of variables definition"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x1b59

    const-string v4, "Image Ready data sets"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x1f40

    const-string v4, "Lightroom workflow, if present the document is in the middle of a Lightroom workflow"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v3, 0x2710

    const-string v4, "Print flags information (center crop marks, bleed width value, bleed width scale)"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    if-gt v4, p0, :cond_0

    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    if-gt p0, v4, :cond_0

    iget-object v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "Unknown"

    goto :goto_1
.end method
