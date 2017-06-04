.class public Lcom/sec/android/gallery3d/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExif([B)Lcom/sec/android/gallery3d/exif/ExifInterface;
    .locals 4

    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryExif"

    const-string/jumbo v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getOrientation(Lcom/sec/android/gallery3d/exif/ExifInterface;)I
    .locals 2

    sget v1, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    goto :goto_0
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 14

    if-nez p0, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/16 v11, 0x8

    new-array v0, v11, [B

    const/4 v5, 0x0

    :cond_1
    :goto_1
    const/4 v11, 0x2

    invoke-static {p0, v0, v11}, Lcom/sec/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v7, v11, 0xff

    const/16 v11, 0xff

    if-eq v7, v11, :cond_1

    const/16 v11, 0xd8

    if-eq v7, v11, :cond_1

    const/4 v11, 0x1

    if-eq v7, v11, :cond_1

    const/16 v11, 0xd9

    if-eq v7, v11, :cond_2

    const/16 v11, 0xda

    if-ne v7, v11, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x2

    invoke-static {p0, v0, v11}, Lcom/sec/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v5

    const/4 v11, 0x2

    if-ge v5, v11, :cond_5

    const-string/jumbo v11, "GalleryExif"

    const-string/jumbo v12, "Invalid length"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, -0x2

    const/16 v11, 0xe1

    if-ne v7, v11, :cond_8

    const/4 v11, 0x6

    if-lt v5, v11, :cond_8

    const/4 v11, 0x6

    invoke-static {p0, v0, v11}, Lcom/sec/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v5, -0x6

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    const v12, 0x45786966

    if-ne v11, v12, :cond_8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    const/16 v11, 0x8

    if-le v5, v11, :cond_f

    const/4 v8, 0x0

    new-array v4, v5, [B

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    int-to-long v12, v5

    :try_start_0
    invoke-virtual {p0, v12, v13}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static {v4, v8, v11, v12}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x49492a00    # 823968.0f

    if-eq v10, v11, :cond_a

    const v11, 0x4d4d002a    # 2.14958752E8f

    if-eq v10, v11, :cond_a

    const-string/jumbo v11, "GalleryExif"

    const-string/jumbo v12, "Invalid byte order"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const v11, 0x49492a00    # 823968.0f

    if-ne v10, v11, :cond_c

    const/4 v6, 0x1

    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-static {v4, v11, v12, v6}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v11

    add-int/lit8 v1, v11, 0x2

    const/16 v11, 0xa

    if-lt v1, v11, :cond_b

    if-le v1, v5, :cond_d

    :cond_b
    const-string/jumbo v11, "GalleryExif"

    const-string/jumbo v12, "Invalid offset"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto :goto_2

    :cond_d
    add-int/2addr v8, v1

    sub-int/2addr v5, v1

    add-int/lit8 v11, v8, -0x2

    const/4 v12, 0x2

    invoke-static {v4, v11, v12, v6}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v1

    move v2, v1

    :goto_3
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_f

    const/16 v11, 0xc

    if-lt v5, v11, :cond_f

    const/4 v11, 0x2

    invoke-static {v4, v8, v11, v6}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v10

    const/16 v11, 0x112

    if-ne v10, v11, :cond_e

    add-int/lit8 v11, v8, 0x8

    const/4 v12, 0x2

    invoke-static {v4, v11, v12, v6}, Lcom/sec/android/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v11, "GalleryExif"

    const-string/jumbo v12, "Unsupported orientation"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_2
    const/16 v11, 0xb4

    goto/16 :goto_0

    :pswitch_3
    const/16 v11, 0x5a

    goto/16 :goto_0

    :pswitch_4
    const/16 v11, 0x10e

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v5, v5, -0xc

    move v2, v1

    goto :goto_3

    :cond_f
    const-string/jumbo v11, "GalleryExif"

    const-string/jumbo v12, "Orientation not found"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([B)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/data/Exif;->getExif([B)Lcom/sec/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Exif;->getOrientation(Lcom/sec/android/gallery3d/exif/ExifInterface;)I

    move-result v1

    goto :goto_0
.end method

.method private static pack([BIIZ)I
    .locals 5

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    const/4 v1, -0x1

    :cond_0
    const/4 v2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-lez v0, :cond_1

    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    add-int/2addr p1, v1

    move v0, p2

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static read(Ljava/io/InputStream;[BI)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
