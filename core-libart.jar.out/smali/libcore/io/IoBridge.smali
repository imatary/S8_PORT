.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_BLOCK_SOURCE:I = 0x17

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_JOIN_SOURCE_GROUP:I = 0x15

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14

.field public static final JAVA_MCAST_LEAVE_SOURCE_GROUP:I = 0x16

.field public static final JAVA_MCAST_UNBLOCK_SOURCE:I = 0x18


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Landroid/util/MutableInt;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/util/MutableInt;-><init>(I)V

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->FIONREAD:I

    invoke-interface {v2, p0, v3, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    iget v2, v0, Landroid/util/MutableInt;->value:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iput v2, v0, Landroid/util/MutableInt;->value:I

    :cond_0
    iget v2, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOTTY:I

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_1
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Ljava/net/BindException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static booleanFromInt(I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static booleanToInt(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-static {v2}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v2}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    throw v3

    :catch_2
    move-exception v2

    throw v2

    :catch_3
    move-exception v0

    new-instance v4, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void

    :cond_0
    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p3

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v2, v4, v6

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    const/4 v4, 0x1

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_2

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3, v1}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v1, v4

    if-gtz v1, :cond_1

    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {p0, v10}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    return-void
.end method

.method private static getGroupSourceReqOp(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown java value for setsocketopt op lookup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget v0, Landroid/system/OsConstants;->MCAST_JOIN_SOURCE_GROUP:I

    return v0

    :pswitch_1
    sget v0, Landroid/system/OsConstants;->MCAST_LEAVE_SOURCE_GROUP:I

    return v0

    :pswitch_2
    sget v0, Landroid/system/OsConstants;->MCAST_BLOCK_SOURCE:I

    return v0

    :pswitch_3
    sget v0, Landroid/system/OsConstants;->MCAST_UNBLOCK_SOURCE:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    :sswitch_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_5
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_6
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_9
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v3, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Landroid/system/StructPollfd;

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x0

    aget-object v6, v4, v6

    iput-object p0, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    sget v7, Landroid/system/OsConstants;->POLLOUT:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, v4, p4}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v5

    if-nez v5, :cond_0

    return v8

    :cond_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v8, Landroid/system/OsConstants;->SO_ERROR:I

    invoke-interface {v6, p0, v7, v8}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    if-nez v1, :cond_1

    return v9

    :cond_1
    new-instance v6, Landroid/system/ErrnoException;

    const-string/jumbo v7, "isConnected"

    invoke-direct {v6, v7, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/net/SocketException;

    const-string/jumbo v7, "Socket closed"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object v0, v3

    invoke-static {p1, p2, p3, v3}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    iget v6, v3, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    if-eqz p0, :cond_1

    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/net/PortUnreachableException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    :cond_0
    return v2

    :cond_1
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget v5, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v5, p1

    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v5, v6, :cond_1

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5, p0, p1, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v5

    iget v5, v5, Landroid/system/StructStat;->st_mode:I

    invoke-static {v5}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/system/ErrnoException;

    const-string/jumbo v6, "open"

    sget v7, Landroid/system/OsConstants;->EISDIR:I

    invoke-direct {v5, v6, v7}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    const/16 v4, 0x180

    goto :goto_0

    :cond_2
    return-object v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .locals 1

    if-eqz p0, :cond_0

    if-nez p4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    :cond_1
    return p4
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    return v1

    :catch_0
    move-exception v0

    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v2, v3, :cond_2

    return v4

    :cond_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I

    move-result v1

    :goto_1
    return v1

    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v1

    goto :goto_1
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p6, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I

    move-result v10

    :goto_1
    return v10

    :cond_1
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v10

    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_0
    move v7, v0

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_1
    return v8

    :catch_0
    move-exception v6

    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v8

    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    const/4 v9, 0x1

    :goto_0
    if-nez v9, :cond_1

    if-gtz p3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    return v10

    :catch_0
    move-exception v8

    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v10

    goto :goto_1
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v9, Ljava/net/SocketException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown socket option: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v9

    :sswitch_0
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v10, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    :sswitch_1
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_2
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_LOOP:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_3
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_TTL:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_4
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_TOS:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_5
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_6
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    instance-of v9, p2, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0xffff

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_0
    new-instance v3, Landroid/system/StructLinger;

    invoke-static {v5}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v9

    invoke-direct {v3, v9, v7}, Landroid/system/StructLinger;-><init>(II)V

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v9, p0, v10, v11, v3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    return-void

    :sswitch_8
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_9
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_a
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_b
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v8

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void

    :sswitch_d
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v11, Landroid/system/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void

    :sswitch_e
    move-object v0, p2

    check-cast v0, Landroid/system/StructGroupReq;

    iget-object v9, v0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    :goto_0
    const/16 v9, 0x13

    if-ne p1, v9, :cond_2

    sget v6, Landroid/system/OsConstants;->MCAST_JOIN_GROUP:I

    :goto_1
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v2, v6, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    return-void

    :cond_1
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_0

    :cond_2
    sget v6, Landroid/system/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_1

    :sswitch_f
    move-object v1, p2

    check-cast v1, Landroid/system/StructGroupSourceReq;

    iget-object v9, v1, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_3

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    :goto_2
    invoke-static {p1}, Llibcore/io/IoBridge;->getGroupSourceReqOp(I)I

    move-result v6

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v2, v6, v1}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    return-void

    :cond_3
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_f
        0x17 -> :sswitch_f
        0x18 -> :sswitch_f
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez p0, :cond_0

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v4, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    :cond_0
    return-object v1

    :cond_1
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_1
    return-void
.end method
