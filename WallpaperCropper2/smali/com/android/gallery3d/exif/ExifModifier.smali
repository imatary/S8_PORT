.class Lcom/android/gallery3d/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/android/gallery3d/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    iput-object p2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/android/gallery3d/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v0

    new-instance v2, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    iget v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifParser;->getTiffStartPosition()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private modify()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    iget v0, v0, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/exif/ExifModifier;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/android/gallery3d/exif/ExifTag;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([B)V

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    nop

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/android/gallery3d/exif/ByteBufferInputStream;

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x5

    :try_start_1
    new-array v6, v0, [Lcom/android/gallery3d/exif/IfdData;

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v6, v4

    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_b

    move v0, v5

    :goto_0
    const/4 v4, 0x1

    aget-object v4, v6, v4

    if-eqz v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/4 v4, 0x2

    aget-object v4, v6, v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v4, 0x4

    aget-object v4, v6, v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    const/4 v4, 0x3

    aget-object v4, v6, v4

    if-eqz v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {v1, v0, v4}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v0

    move v4, v0

    move-object v0, v2

    :goto_1
    const/4 v8, 0x5

    if-eq v4, v8, :cond_8

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v4

    goto :goto_1

    :pswitch_0
    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v0

    aget-object v0, v6, v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :pswitch_1
    :try_start_2
    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v8

    if-eqz v0, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v10

    if-ne v9, v10, :cond_5

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v9

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eq v9, v10, :cond_7

    :cond_5
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v3

    :cond_6
    move-object v4, v2

    goto :goto_4

    :cond_7
    :try_start_3
    iget-object v9, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v10, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v11

    invoke-direct {v10, v4, v11}, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;-><init>(Lcom/android/gallery3d/exif/ExifTag;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v7}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_2

    :cond_8
    array-length v2, v6

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_a

    aget-object v4, v6, v0

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-lez v4, :cond_9

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    :try_start_4
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_b
    move v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    return-void
.end method
