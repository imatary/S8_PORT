.class Lcom/android/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifReader;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/android/gallery3d/exif/ExifTag;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ExifReader"

    const-string/jumbo v3, "Failed to read the compressed thumbnail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "ExifReader"

    const-string/jumbo v3, "Failed to read the strip bytes"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

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
