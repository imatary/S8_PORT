.class public Llibcore/io/ForwardingOs;
.super Ljava/lang/Object;
.source "ForwardingOs.java"

# interfaces
.implements Llibcore/io/Os;


# instance fields
.field protected final os:Llibcore/io/Os;


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public access(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method public chown(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    return-void
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public environ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public fchmod(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public fchown(Ljava/io/FileDescriptor;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I

    move-result v0

    return v0
.end method

.method public fcntlInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public fcntlVoid(Ljava/io/FileDescriptor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public gai_strerror(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getegid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    move-result v0

    return v0
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geteuid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    move-result v0

    return v0
.end method

.method public getgid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    move-result v0

    return v0
.end method

.method public getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getpgid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpgid(I)I

    move-result v0

    return v0
.end method

.method public getpid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public getppid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public getpwuid(I)Landroid/system/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptByte(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v0

    return-object v0
.end method

.method public gettid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public getuid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public getxattr(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public if_indextoname(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    move-result v0

    return v0
.end method

.method public isatty(Ljava/io/FileDescriptor;)Z
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public kill(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->kill(II)V

    return-void
.end method

.method public lchown(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    return-void
.end method

.method public link(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public listen(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public lseek(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public mincore(JJ[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->mincore(JJ[B)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    return-void
.end method

.method public mkfifo(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    return-void
.end method

.method public mlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->mlock(JJ)V

    return-void
.end method

.method public mmap(JJIILjava/io/FileDescriptor;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public msync(JJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->msync(JJI)V

    return-void
.end method

.method public munlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munlock(JJ)V

    return-void
.end method

.method public munmap(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munmap(JJ)V

    return-void
.end method

.method public open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public pipe2(I)[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public poll([Landroid/system/StructPollfd;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0

    return v0
.end method

.method public posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public prctl(IJJJJ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    move-result v0

    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method

.method public realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public setegid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setegid(I)V

    return-void
.end method

.method public setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public seteuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->seteuid(I)V

    return-void
.end method

.method public setgid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setgid(I)V

    return-void
.end method

.method public setpgid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setpgid(II)V

    return-void
.end method

.method public setregid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setregid(II)V

    return-void
.end method

.method public setreuid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setreuid(II)V

    return-void
.end method

.method public setsid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    move-result v0

    return v0
.end method

.method public setsockoptByte(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    return-void
.end method

.method public setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    return-void
.end method

.method public setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    return-void
.end method

.method public setsockoptInt(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    return-void
.end method

.method public setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void
.end method

.method public setuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setuid(I)V

    return-void
.end method

.method public setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public shutdown(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public socket(III)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public stat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public strerror(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public strsignal(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sysconf(I)J
    .locals 2

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public tcdrain(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public tcsendbreak(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public umask(I)I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->umask(I)I

    move-result v0

    return v0
.end method

.method public uname()Landroid/system/StructUtsname;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    return-object v0
.end method

.method public unlink(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->unlink(Ljava/lang/String;)V

    return-void
.end method

.method public unsetenv(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    return-void
.end method

.method public waitpid(ILandroid/util/MutableInt;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->waitpid(ILandroid/util/MutableInt;I)I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
