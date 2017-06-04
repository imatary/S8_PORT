.class Lcom/sec/android/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field private static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_ERROR:I = 0x6

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final EXIF_HEADER_TAIL:S = 0x0s

.field private static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field private static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field private static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
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

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/sec/android/gallery3d/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

.field private mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    sget v0, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/sec/android/gallery3d/exif/ExifInterface;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    iput v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    iput v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-nez p1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v4, "Null argument inputStream to ExifParser"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mInterface:Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    new-instance v1, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v1, p1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    iput p2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->parseTiffHeader()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    long-to-int v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    iput v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    invoke-direct {p0, v6, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    long-to-int v1, v2

    add-int/lit8 v1, v1, -0x8

    :try_start_0
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/exif/ExifParser;->read([B)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    const-string/jumbo v1, "ExifParser"

    const-string/jumbo v4, "OutOfMemoryError at ExifParser.."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ExifParser"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mInterface:Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/sec/android/gallery3d/exif/ExifTag;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v2, v3, :cond_3

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v8}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v8, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    :cond_3
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v2, v3, :cond_4

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v9, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    :cond_4
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v2, v3, :cond_5

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v7, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    :cond_5
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v2, v3, :cond_6

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    :cond_6
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v2, v3, :cond_7

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0

    :cond_7
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v2, v3, :cond_9

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v6}, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sec/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    sget-short v3, Lcom/sec/android/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v2, v3, :cond_0

    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/sec/android/gallery3d/exif/ExifInterface;)Lcom/sec/android/gallery3d/exif/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sec/android/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/sec/android/gallery3d/exif/ExifInterface;)Lcom/sec/android/gallery3d/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sec/android/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;

    const-string/jumbo v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;

    const-string/jumbo v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readRational()Lcom/sec/android/gallery3d/exif/Rational;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    new-instance v2, Lcom/sec/android/gallery3d/exif/Rational;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method private readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/sec/android/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private readTag()Lcom/sec/android/gallery3d/exif/ExifTag;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    invoke-static {v2}, Lcom/sec/android/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v3, Lcom/sec/android/gallery3d/exif/ExifInterface;->MAX_COMPONENT_COUNT:I

    int-to-long v4, v3

    cmp-long v3, v10, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/exif/ExifTag;

    long-to-int v3, v10

    iget v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    long-to-int v5, v10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    const/4 v3, 0x4

    if-le v7, v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v12, v4

    if-lez v3, :cond_3

    new-instance v3, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;

    const-string/jumbo v4, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfd0Position:I

    int-to-long v4, v3

    cmp-long v3, v12, v4

    if-gez v3, :cond_4

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    if-eqz v3, :cond_4

    long-to-int v3, v10

    new-array v6, v3, [B

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    long-to-int v9, v10

    invoke-static {v3, v4, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([B)Z

    goto :goto_0

    :cond_4
    long-to-int v3, v12

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->hasDefinedCount()Z

    move-result v8

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/sec/android/gallery3d/exif/ExifTag;)V

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v4, v7, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    iget-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/exif/ExifTag;->setOffset(I)V

    goto/16 :goto_0
.end method

.method private readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private readUnsignedRational()Lcom/sec/android/gallery3d/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    new-instance v4, Lcom/sec/android/gallery3d/exif/Rational;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/sec/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method private readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private registerCompressedImage(J)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_0

    new-instance v5, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;

    const-string/jumbo v6, "Invalid JPEG format"

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    :goto_0
    const/16 v6, -0x27

    if-eq v4, v6, :cond_1

    invoke-static {v4}, Lcom/sec/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v3

    const/16 v6, -0x1f

    if-ne v4, v6, :cond_2

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    add-int/lit8 v3, v3, -0x6

    const v6, 0x45786966

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iput v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mApp1End:I

    iget v5, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mApp1End:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 v5, 0x1

    :cond_1
    :goto_1
    return v5

    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    int-to-long v6, v6

    add-int/lit8 v8, v3, -0x2

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    :cond_3
    const-string/jumbo v6, "ExifParser"

    const-string/jumbo v7, "Invalid JPEG format."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    goto :goto_0
.end method

.method private skipTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getCurrentIfd()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getTag()Lcom/sec/android/gallery3d/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    iget-boolean v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v9, :cond_0

    const/4 v9, 0x5

    :goto_0
    return v9

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v6

    iget v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v1, v9, v10

    if-ge v6, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readTag()Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    if-nez v9, :cond_1

    const/4 v9, 0x6

    goto :goto_0

    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sec/android/gallery3d/exif/ExifTag;)V

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    if-ne v6, v1, :cond_5

    iget v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    invoke-direct {p0, v9, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v9, v3, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v9, :cond_b

    move-object v9, v3

    check-cast v9, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v9, v9, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    iget v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v9, v9, 0xc

    iget v10, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mApp1End:I

    if-le v9, v10, :cond_9

    const-string/jumbo v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid size of IFD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x5

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x4

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int v7, v9, v10

    :cond_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_8

    const-string/jumbo v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid size of link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    const-string/jumbo v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to skip to data at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", the file may be broken."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    check-cast v3, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    iget-boolean v9, v3, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    :cond_b
    instance-of v9, v3, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v9, :cond_c

    check-cast v3, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    iput-object v3, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mImageEvent:Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    iget v9, v9, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    :cond_c
    move-object v8, v3

    check-cast v8, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;

    iget-object v9, v8, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/sec/android/gallery3d/exif/ExifTag;

    iput-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/sec/android/gallery3d/exif/ExifTag;)V

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sec/android/gallery3d/exif/ExifTag;)V

    :cond_d
    iget-boolean v9, v8, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_e
    const/4 v9, 0x5

    goto/16 :goto_0
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/sec/android/gallery3d/exif/ExifTag;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x7

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v5

    iget-object v8, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Lcom/sec/android/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v8, :cond_2

    const-string/jumbo v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    const-string/jumbo v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid thumbnail offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_2
    instance-of v8, v2, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v8, :cond_4

    const-string/jumbo v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ifd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;

    iget v10, v2, Lcom/sec/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v5, v8, v9

    const-string/jumbo v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid size of tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " setting count to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/exif/ExifTag;->forceSetComponentCount(I)V

    goto :goto_0

    :cond_4
    instance-of v8, v2, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tag value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;

    iget-object v10, v2, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v0, v8, [B

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/exif/ExifParser;->read([B)I

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [J

    const/4 v3, 0x0

    array-length v4, v7

    :goto_3
    if-ge v3, v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/sec/android/gallery3d/exif/Rational;

    const/4 v3, 0x0

    array-length v4, v7

    :goto_4
    if-ge v3, v4, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([Lcom/sec/android/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    const/4 v3, 0x0

    array-length v4, v7

    :goto_5
    if-ge v3, v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    const/4 v3, 0x0

    array-length v4, v7

    :goto_6
    if-ge v3, v4, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readLong()I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/sec/android/gallery3d/exif/Rational;

    const/4 v3, 0x0

    array-length v4, v7

    :goto_7
    if-ge v3, v4, :cond_9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readRational()Lcom/sec/android/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/exif/ExifTag;->setValue([Lcom/sec/android/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected registerForTagValue(Lcom/sec/android/gallery3d/exif/ExifTag;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/sec/android/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sec/android/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v6, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTiffStream:Lcom/sec/android/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readTag()Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    iget-object v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mTag:Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sec/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/exif/ExifParser;->skipTo(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-direct {p0, v6, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method
