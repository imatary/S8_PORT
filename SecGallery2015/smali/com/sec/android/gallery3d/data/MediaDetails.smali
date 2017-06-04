.class public Lcom/sec/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MediaDetails$DetailIndexComparator;,
        Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_ALBUM_NAME:I = 0x5

.field public static final INDEX_APERTURE:I = 0x66

.field public static final INDEX_AVAILABLE_USE:I = 0x12d

.field public static final INDEX_DATEMODIFIEDTIME:I = 0x12

.field public static final INDEX_DATETIME:I = 0x4

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DRM_DES:I = 0x12c

.field public static final INDEX_DURATION:I = 0x11

.field public static final INDEX_EXPOSURE_TIME:I = 0x67

.field public static final INDEX_EXPOSURE_VALUE:I = 0x6d

.field public static final INDEX_FLASH:I = 0x6a

.field public static final INDEX_FOCAL_LENGTH:I = 0x65

.field public static final INDEX_FORWARD_LOCK:I = 0x135

.field public static final INDEX_HEIGHT:I = 0xd

.field public static final INDEX_ISO:I = 0x68

.field public static final INDEX_LATITUDE:I = 0xa

.field public static final INDEX_LICENSE_AVAILABLE_TIME:I = 0x12f

.field public static final INDEX_LICENSE_EXPIRY_TIME:I = 0x130

.field public static final INDEX_LICENSE_ORIGINAL_INTERVAL:I = 0x132

.field public static final INDEX_LICENSE_START_TIME:I = 0x131

.field public static final INDEX_LICENSE_TYPE:I = 0x12e

.field public static final INDEX_LOCATION:I = 0x9

.field public static final INDEX_LONGITUDE:I = 0xb

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MAX_REPEAT_COUNT:I = 0x133

.field public static final INDEX_MIMETYPE:I = 0x3

.field public static final INDEX_MODEL:I = 0x6b

.field public static final INDEX_ORIENTATION:I = 0x10

.field public static final INDEX_PATH:I = 0x1f4

.field public static final INDEX_REMAINING_REPEAT_COUNT:I = 0x134

.field public static final INDEX_RESOLUTION:I = 0xf

.field public static final INDEX_SHUTTER_SPEED:I = 0x6c

.field public static final INDEX_SIZE:I = 0xe

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_URL_DOMAIN:I = 0x13

.field public static final INDEX_WHITE_BALANCE:I = 0x69

.field public static final INDEX_WIDTH:I = 0xc

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private final mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/sec/android/gallery3d/data/MediaDetails$DetailIndexComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails$DetailIndexComparator;-><init>(Lcom/sec/android/gallery3d/data/MediaDetails$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    return-void
.end method

.method public static extractExifInfo(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x65

    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x6a

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x6b

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x66

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x68

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x69

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    const/16 v5, 0x67

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x6d

    invoke-static {p0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V

    :cond_0
    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v2

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const v4, 0x7f0a0493

    invoke-direct {p0, v7, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->setUnit(II)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "MediaDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not find file to read exif: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "MediaDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not read exif from file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static setExifData(Lcom/sec/android/gallery3d/data/MediaDetails;Lcom/sec/android/gallery3d/exif/ExifTag;I)V
    .locals 10

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_4

    :cond_0
    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v2

    const/16 v5, 0x67

    if-ne p2, v5, :cond_3

    const-wide v6, 0x3fd6666666666666L    # 0.35

    cmpg-double v5, v2, v6

    if-gtz v5, :cond_3

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    const/16 v5, 0x6a

    if-ne p2, v5, :cond_6

    if-eqz v4, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;-><init>(ILcom/sec/android/gallery3d/data/MediaDetails$1;)V

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Nan"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p2, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private setUnit(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeDetail(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceDetail(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
