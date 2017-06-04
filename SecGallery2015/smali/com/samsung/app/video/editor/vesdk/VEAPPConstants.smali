.class public Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;
.super Ljava/lang/Object;
.source "VEAPPConstants.java"


# static fields
.field public static AUTOEDIT_MODE_AUTO:I

.field public static EXPORT_RESOLUTIONS:[[I

.field public static HD_BITRATE:I

.field public static MINIMUM_MEDIA_DURATION_NEEDED:I

.field public static SLOW_MOTION_SPEED_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->MINIMUM_MEDIA_DURATION_NEEDED:I

    const/16 v0, 0x1f40

    sput v0, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->HD_BITRATE:I

    const/16 v0, 0x32

    sput v0, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->AUTOEDIT_MODE_AUTO:I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "None"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1/2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1/4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1/8"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "32"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->SLOW_MOTION_SPEED_STRINGS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0xb0
        0x90
    .end array-data

    :array_1
    .array-data 4
        0x140
        0xf0
    .end array-data

    :array_2
    .array-data 4
        0x280
        0x1e0
    .end array-data

    :array_3
    .array-data 4
        0x2d0
        0x1e0
    .end array-data

    :array_4
    .array-data 4
        0x500
        0x2d0
    .end array-data

    :array_5
    .array-data 4
        0x780
        0x438
    .end array-data

    :array_6
    .array-data 4
        0xf00
        0x870
    .end array-data

    :array_7
    .array-data 4
        0x280
        0x168
    .end array-data

    :array_8
    .array-data 4
        0xa00
        0x5a0
    .end array-data

    :array_9
    .array-data 4
        0x500
        0x280
    .end array-data

    :array_a
    .array-data 4
        0x780
        0x3c0
    .end array-data

    :array_b
    .array-data 4
        0xa00
        0x500
    .end array-data

    :array_c
    .array-data 4
        0xb40
        0x5a0
    .end array-data

    :array_d
    .array-data 4
        0xf00
        0x780
    .end array-data

    :array_e
    .array-data 4
        0x1000
        0x800
    .end array-data

    :array_f
    .array-data 4
        0x1000
        0x870
    .end array-data
.end method

.method public static getVideoBitRate(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x118

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1388

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1388

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1f40

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x32c8

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x4b0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x4650

    goto :goto_0

    :pswitch_8
    const v0, 0x88b8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x1f40

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x32c8

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x4650

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x61a8

    goto :goto_0

    :pswitch_d
    const v0, 0x88b8

    goto :goto_0

    :pswitch_e
    const v0, 0x88b8

    goto :goto_0

    :pswitch_f
    const v0, 0x88b8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
