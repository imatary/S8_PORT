.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    :cond_1
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer$MemoryRef;->free()V

    return-void
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .locals 1

    check-cast p0, Lsun/nio/ch/FileChannelImpl;

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public static newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .locals 6

    const/4 v4, 0x0

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_SYNC:I

    or-int/2addr v0, v1

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_SYNC:I

    or-int/2addr v0, v1

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method
