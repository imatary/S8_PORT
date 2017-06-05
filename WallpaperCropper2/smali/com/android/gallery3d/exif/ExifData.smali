.class Lcom/android/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/exif/IfdData;

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/gallery3d/exif/IfdData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    instance-of v0, p1, Lcom/android/gallery3d/exif/ExifData;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/android/gallery3d/exif/ExifData;

    iget-object v0, p1, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    return v3

    :cond_3
    iget-object v0, p1, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p1, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    return v4

    :cond_9
    return v3
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-object v9

    :cond_2
    return-object v3
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v5

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v5

    :cond_3
    return-object v2
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-object v5

    :cond_2
    return-object v1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 1

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v1, v1, p2

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([B)V

    new-array v0, v2, [B

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    sget-object v2, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x8

    const-string/jumbo v3, "US-ASCII"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v2, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x8

    const-string/jumbo v3, "EUC-JP"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v2, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x8

    const-string/jumbo v3, "UTF-16"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ExifData"

    const-string/jumbo v1, "Failed to decode the user comment"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
