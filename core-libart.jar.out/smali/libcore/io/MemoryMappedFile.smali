.class public final Llibcore/io/MemoryMappedFile;
.super Ljava/lang/Object;
.source "MemoryMappedFile.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private address:J

.field private final size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llibcore/io/MemoryMappedFile;->address:J

    iput-wide p3, p0, Llibcore/io/MemoryMappedFile;->size:J

    return-void
.end method

.method public static mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-interface {v0, p0, v1, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v8

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v8}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    sget v7, Landroid/system/OsConstants;->MAP_SHARED:I

    move-wide v9, v2

    invoke-interface/range {v1 .. v10}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v12

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v8}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    new-instance v0, Llibcore/io/MemoryMappedFile;

    invoke-direct {v0, v12, v13, v4, v5}, Llibcore/io/MemoryMappedFile;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public bigEndianIterator()Llibcore/io/BufferIterator;
    .locals 6

    new-instance v1, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    long-to-int v4, v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Llibcore/io/NioBufferIterator;-><init>(JIZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    invoke-interface {v0, v2, v3, v4, v5}, Llibcore/io/Os;->munmap(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public littleEndianIterator()Llibcore/io/BufferIterator;
    .locals 6

    new-instance v1, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    long-to-int v4, v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Llibcore/io/NioBufferIterator;-><init>(JIZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->size:J

    return-wide v0
.end method
