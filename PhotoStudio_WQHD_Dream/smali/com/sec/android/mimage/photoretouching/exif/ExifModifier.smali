.class Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PEDIT_ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mOffsetBase:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/sec/android/mimage/photoretouching/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)Lcom/sec/android/mimage/photoretouching/exif/ExifParser;

    move-result-object v2

    new-instance v3, Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getTiffStartPosition()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mOffsetBase:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v0, v1

    goto :goto_0
.end method

.method private modify()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;->mTag:Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->writeTagValue(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;I)V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v0, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAt(I)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getRational(I)Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/Rational;->getNumerator()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/Rational;->getDenominator()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getBytes([B)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAt(I)J

    move-result-wide v6

    long-to-int v5, v6

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected commit()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lcom/sec/android/mimage/photoretouching/exif/ByteBufferInputStream;

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v6, v12}, Lcom/sec/android/mimage/photoretouching/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v12, 0x5

    :try_start_1
    new-array v4, v12, [Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getIfdData(I)Lcom/sec/android/mimage/photoretouching/exif/IfdData;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x0

    aget-object v12, v4, v12

    if-eqz v12, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v12, 0x1

    aget-object v12, v4, v12

    if-eqz v12, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    const/4 v12, 0x2

    aget-object v12, v4, v12

    if-eqz v12, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    const/4 v12, 0x4

    aget-object v12, v4, v12

    if-eqz v12, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    const/4 v12, 0x3

    aget-object v12, v4, v12

    if-eqz v12, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mInterface:Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;

    invoke-static {v6, v2, v12}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)Lcom/sec/android/mimage/photoretouching/exif/ExifParser;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->next()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v12, 0x5

    if-eq v1, v12, :cond_9

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getCurrentIfd()I

    move-result v12

    aget-object v0, v4, v12

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v5, v6

    :goto_2
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    :pswitch_1
    :try_start_2
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getTag()Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getTagId()S

    move-result v12

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getTag(S)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v7

    :cond_6
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v13

    if-ne v12, v13, :cond_7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getDataType()S

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eq v12, v13, :cond_8

    :cond_7
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    return v10

    :cond_8
    :try_start_3
    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v13, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getOffset()I

    move-result v14

    invoke-direct {v13, v7, v14}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier$TagOffset;-><init>(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;I)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getTagId()S

    move-result v12

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->removeTag(S)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getTagCount()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    :cond_9
    array-length v13, v4

    move v12, v10

    :goto_4
    if-ge v12, v13, :cond_b

    aget-object v3, v4, v12

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-lez v14, :cond_a

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    :try_start_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    move v10, v11

    goto :goto_3

    :catchall_1
    move-exception v10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->mTagToModified:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->addTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    return-void
.end method
