.class Lcom/sec/android/mimage/photoretouching/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ExifReader"


# instance fields
.field private final mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifReader;->mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/sec/android/mimage/photoretouching/exif/ExifData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifReader;->mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    invoke-static {p1, v6}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)Lcom/sec/android/mimage/photoretouching/exif/ExifParser;

    move-result-object v4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v6, 0x5

    if-eq v1, v6, :cond_5

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    new-instance v6, Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getCurrentIfd()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->addIfdData(Lcom/sec/android/mimage/photoretouching/exif/IfdData;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getTag()Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->hasValue()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->registerForTagValue(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getTag()Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getDataType()S

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->readFullTagValue(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)V

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getCompressedImageSize()I

    move-result v6

    new-array v0, v6, [B

    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v6, "PEDIT_ExifReader"

    const-string v7, "Failed to read the compressed thumbnail"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getStripSize()I

    move-result v6

    new-array v0, v6, [B

    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getStripIndex()I

    move-result v6

    invoke-virtual {v2, v6, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_4
    const-string v6, "PEDIT_ExifReader"

    const-string v7, "Failed to read the strip bytes"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
