.class final enum Lorg/apache/commons/imaging/formats/icns/IcnsType;
.super Ljava/lang/Enum;
.source "IcnsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/formats/icns/IcnsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;


# instance fields
.field private final bitsPerPixel:I

.field private final hasMask:Z

.field private final height:I

.field private final type:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x12_1BIT_IMAGE_AND_MASK"

    const/4 v2, 0x0

    const-string v3, "icm#"

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x12_4BIT_IMAGE"

    const/4 v2, 0x1

    const-string v3, "icm4"

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x12_8BIT_IMAGE"

    const/4 v2, 0x2

    const-string v3, "icm8"

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x16_8BIT_MASK"

    const/4 v2, 0x3

    const-string v3, "s8mk"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x16_1BIT_IMAGE_AND_MASK"

    const/4 v2, 0x4

    const-string v3, "ics#"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x16_4BIT_IMAGE"

    const/4 v2, 0x5

    const-string v3, "ics4"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x16_8BIT_IMAGE"

    const/4 v2, 0x6

    const-string v3, "ics8"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x16_32BIT_IMAGE"

    const/4 v2, 0x7

    const-string v3, "is32"

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_32x32_8BIT_MASK"

    const/16 v2, 0x8

    const-string v3, "l8mk"

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_32x32_1BIT_IMAGE_AND_MASK"

    const/16 v2, 0x9

    const-string v3, "ICN#"

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_32x32_4BIT_IMAGE"

    const/16 v2, 0xa

    const-string v3, "icl4"

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_32x32_8BIT_IMAGE"

    const/16 v2, 0xb

    const-string v3, "icl8"

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_32x32_32BIT_IMAGE"

    const/16 v2, 0xc

    const-string v3, "il32"

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_48x48_8BIT_MASK"

    const/16 v2, 0xd

    const-string v3, "h8mk"

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_48x48_1BIT_IMAGE_AND_MASK"

    const/16 v2, 0xe

    const-string v3, "ich#"

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_48x48_4BIT_IMAGE"

    const/16 v2, 0xf

    const-string v3, "ich4"

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_48x48_8BIT_IMAGE"

    const/16 v2, 0x10

    const-string v3, "ich8"

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_48x48_32BIT_IMAGE"

    const/16 v2, 0x11

    const-string v3, "ih32"

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_128x128_8BIT_MASK"

    const/16 v2, 0x12

    const-string v3, "t8mk"

    const/16 v4, 0x80

    const/16 v5, 0x80

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_128x128_32BIT_IMAGE"

    const/16 v2, 0x13

    const-string v3, "it32"

    const/16 v4, 0x80

    const/16 v5, 0x80

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_256x256_32BIT_ARGB_IMAGE"

    const/16 v2, 0x14

    const-string v3, "ic08"

    const/16 v4, 0x100

    const/16 v5, 0x100

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_512x512_32BIT_ARGB_IMAGE"

    const/16 v2, 0x15

    const-string v3, "ic09"

    const/16 v4, 0x200

    const/16 v5, 0x200

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v0, 0x16

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v0, 0x12

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->typeAsInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    iput p6, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return-void
.end method

.method public static describeType(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static find1BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static findAnyType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v5

    if-ne v5, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v5

    if-ne v5, p0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static findImageType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 5

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static typeAsInt(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid ICNS type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    return v0
.end method

.method public hasMask()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hasMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
