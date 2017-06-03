.class public Llibcore/util/ZoneInfoDB$TzData;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TzData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfoDB$TzData$1;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1


# instance fields
.field private byteOffsets:[I

.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Llibcore/util/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ids:[Ljava/lang/String;

.field private mappedFile:Llibcore/io/MemoryMappedFile;

.field private rawUtcOffsetsCache:[I

.field private version:Ljava/lang/String;

.field private zoneTab:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Llibcore/util/ZoneInfoDB$TzData$1;

    invoke-direct {v1, p0, v5}, Llibcore/util/ZoneInfoDB$TzData$1;-><init>(Llibcore/util/ZoneInfoDB$TzData;I)V

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Llibcore/util/ZoneInfoDB$TzData;->loadData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Couldn\'t find any tzdata!"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v1, "missing"

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    const-string/jumbo v1, "# Emergency fallback data.\n"

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v3, "GMT"

    aput-object v3, v1, v2

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    new-array v1, v5, [I

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    return-void
.end method

.method private declared-synchronized getRawUtcOffsets()[I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/ZoneInfo;

    invoke-virtual {v1}, Llibcore/util/ZoneInfo;->getRawOffset()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private loadData(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Llibcore/io/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;

    move-result-object v2

    iput-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->readHeader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    return v4

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tzdata file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" was present but invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method private readHeader()V
    .locals 10

    const/4 v9, 0x6

    const/4 v7, 0x0

    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v2

    const/16 v6, 0xc

    new-array v4, v6, [B

    array-length v6, v4

    invoke-virtual {v2, v4, v7, v6}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    new-instance v3, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v7, v9, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string/jumbo v6, "tzdata"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    aget-byte v6, v4, v6

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bad tzdata magic: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v8, 0x5

    invoke-direct {v6, v4, v9, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v1

    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    invoke-direct {p0, v2, v1, v0}, Llibcore/util/ZoneInfoDB$TzData;->readIndex(Llibcore/io/BufferIterator;II)V

    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->size()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v5

    invoke-direct {p0, v2, v5, v6}, Llibcore/util/ZoneInfoDB$TzData;->readZoneTab(Llibcore/io/BufferIterator;II)V

    return-void
.end method

.method private readIndex(Llibcore/io/BufferIterator;II)V
    .locals 20

    invoke-virtual/range {p1 .. p2}, Llibcore/io/BufferIterator;->seek(I)V

    const/16 v4, 0x28

    const/4 v3, 0x4

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v8, v0, [B

    sub-int v13, p3, p2

    div-int/lit8 v6, v13, 0x34

    mul-int/lit8 v17, v6, 0x28

    move/from16 v0, v17

    new-array v9, v0, [C

    new-array v10, v6, [I

    const/4 v11, 0x0

    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v18

    aput v18, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    move-object/from16 v17, v0

    aget v18, v17, v7

    add-int v18, v18, p3

    aput v18, v17, v7

    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v16

    const/16 v17, 0x2c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    const-string/jumbo v18, "length in index file < sizeof(tzhead)"

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    :cond_0
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/BufferIterator;->skip(I)V

    array-length v15, v8

    const/4 v14, 0x0

    move v12, v11

    :goto_1
    if-ge v14, v15, :cond_1

    aget-byte v17, v8, v14

    if-nez v17, :cond_2

    :cond_1
    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    move v11, v12

    goto :goto_0

    :cond_2
    add-int/lit8 v11, v12, 0x1

    aget-byte v17, v8, v14

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v9, v12

    add-int/lit8 v14, v14, 0x1

    move v12, v11

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v9, v0, v11}, Ljava/lang/String;-><init>([CII)V

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v7, :cond_4

    const/16 v17, 0x0

    :goto_3
    aget v19, v10, v7

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v18, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v17, v7, -0x1

    aget v17, v10, v17

    goto :goto_3

    :cond_5
    return-void
.end method

.method private readZoneTab(Llibcore/io/BufferIterator;II)V
    .locals 5

    const/4 v4, 0x0

    new-array v0, p3, [B

    invoke-virtual {p1, p2}, Llibcore/io/BufferIterator;->seek(I)V

    array-length v1, v0

    invoke-virtual {p1, v0, v4, v1}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAvailableIDs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableIDs(I)[Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->getRawUtcOffsets()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getBufferIterator(Ljava/lang/String;)Llibcore/io/BufferIterator;
    .locals 3

    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v2}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v1

    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Llibcore/io/BufferIterator;->skip(I)V

    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimeZone(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/util/ZoneInfo;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/ZoneInfo;

    goto :goto_0
.end method
