.class public Lcom/sec/android/gallery3d/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String; = "BlobCache"


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private final mAdler32:Ljava/util/zip/Adler32;

.field private final mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private final mIndexHeader:[B

.field private final mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    new-instance v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    iput p5, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mVersion:I

    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/sec/android/gallery3d/common/BlobCache;->resetCache(II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeAll()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSum([B)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private checkSum([BII)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private clearHash(I)V
    .locals 6

    const/16 v5, 0x400

    new-array v2, v5, [B

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    :goto_0
    if-lez v0, :cond_0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->updateIndexHeader()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->setActiveVariables()V

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->clearHash(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->syncIndex()V

    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v12, v0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v12

    const/16 v13, 0x14

    if-eq v12, v13, :cond_0

    const-string/jumbo v12, "BlobCache"

    const-string/jumbo v13, "cannot read blob header"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/BlobCache;->readLong([BI)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    cmp-long v12, v4, v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "blob key does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_2
    const/16 v12, 0x8

    :try_start_3
    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v10

    const/16 v12, 0xc

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v3

    move/from16 v0, p2

    if-eq v3, v0, :cond_3

    const-string/jumbo v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "blob offset does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_3
    const/16 v12, 0x10

    :try_start_4
    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v7

    if-ltz v7, :cond_4

    iget v12, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    sub-int v12, v12, p2

    add-int/lit8 v12, v12, -0x14

    if-le v7, v12, :cond_5

    :cond_4
    const-string/jumbo v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid blob length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_5
    :try_start_5
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz v12, :cond_6

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    array-length v12, v12

    if-ge v12, v7, :cond_7

    :cond_6
    new-array v12, v7, [B

    move-object/from16 v0, p3

    iput-object v12, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    :cond_7
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    move-object/from16 v0, p3

    iput v7, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    if-eq v12, v7, :cond_8

    const-string/jumbo v12, "BlobCache"

    const-string/jumbo v13, "cannot read blob data"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    :try_start_6
    invoke-direct {p0, v2, v12, v7}, Lcom/sec/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v12

    if-eq v12, v10, :cond_9

    const-string/jumbo v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "blob checksum does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_7
    const-string/jumbo v12, "BlobCache"

    const-string/jumbo v13, "getBlob failed."

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v12
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/common/BlobCache;->checkSum([B)I

    move-result v1

    invoke-static {v0, v4, p1, p2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeLong([BIJ)V

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v2, 0xc

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    return-void
.end method

.method private loadIndex()Z
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v9

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-direct {p0, v6, v0, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    :cond_7
    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    :cond_9
    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    int-to-long v4, v4

    const-wide/16 v10, 0xc

    mul-long/2addr v4, v10

    const-wide/16 v10, 0x2

    mul-long/2addr v4, v10

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x42db7af0

    if-eq v0, v1, :cond_d

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x42db7af0

    if-eq v0, v1, :cond_f

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 11

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    int-to-long v8, v7

    rem-long v8, p1, v8

    long-to-int v4, v8

    if-gez v4, :cond_0

    iget v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    :cond_0
    move v5, v4

    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    iget-object v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    iget-object v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    iput v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    :goto_1
    return v6

    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    iput v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    iput v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mFileOffset:I

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    const/4 v4, 0x0

    :cond_4
    if-ne v4, v5, :cond_1

    const-string/jumbo v7, "BlobCache"

    const-string/jumbo v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static readInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readLong([BI)J
    .locals 8

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_0

    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private resetCache(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x1c

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x20

    int-to-long v4, p1

    const-wide/16 v6, 0xc

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const v1, -0x4cd8cfd0

    invoke-static {v0, v8, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    invoke-static {v0, v9, p1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0xc

    invoke-static {v0, v1, v8}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1, v8}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0x14

    invoke-static {v0, v1, v9}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0x18

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    invoke-direct {p0, v0, v8, v12}, Lcom/sec/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v12, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, -0x42db7af0

    invoke-static {v0, v8, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private setActiveVariables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iput v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    iput v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private syncAll()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->syncIndex()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private syncIndex()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateIndexHeader()V
    .locals 4

    const/16 v3, 0x1c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static writeInt([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeLong([BIJ)V
    .locals 6

    const/16 v4, 0x8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-long/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearEntry(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mBlobHeader:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mFileOffset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->syncAll()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->closeAll()V

    return-void
.end method

.method public getActiveCount()I
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-ge v2, v4, :cond_1

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v5, v2, 0xc

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    if-ne v1, v4, :cond_2

    :goto_1
    return v1

    :cond_2
    const-string/jumbo v4, "BlobCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wrong active count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentCacheSize()J
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long v0, v4, v6

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "BlobCache"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->flipRegion()V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->updateIndexHeader()V

    return-void
.end method

.method public lookup(Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v4, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sec/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/sec/android/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    iget-wide v4, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v4, v5, v3}, Lcom/sec/android/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/sec/android/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    iput v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mSlotOffset:I

    :try_start_0
    iget-wide v4, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget-object v3, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/sec/android/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    iget v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/common/BlobCache;->writeInt([BII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BlobCache"

    const-string/jumbo v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->lookup(Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/BlobCache;->mLookupRequest:Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    :cond_0
    return-object v0
.end method
