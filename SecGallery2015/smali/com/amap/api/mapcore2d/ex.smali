.class public Lcom/amap/api/mapcore2d/ex;
.super Ljava/lang/Object;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ex$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ex;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/ea;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/ea;->a(I)Lcom/amap/api/mapcore2d/ea;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ex;->b:Lcom/amap/api/mapcore2d/ea;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore2d/ex$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/ex$a;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/ex$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ex;->c:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ex$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ex$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ex;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetManger"

    const-string/jumbo v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Lcom/amap/api/mapcore2d/ex;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ex;->a(ZI)Lcom/amap/api/mapcore2d/ex;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/amap/api/mapcore2d/ex;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ex;->a(ZI)Lcom/amap/api/mapcore2d/ex;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore2d/ex;
    .locals 3

    const-class v1, Lcom/amap/api/mapcore2d/ex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ex;->a:Lcom/amap/api/mapcore2d/ex;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore2d/ex;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/ex;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore2d/ex;->a:Lcom/amap/api/mapcore2d/ex;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/ex;->a:Lcom/amap/api/mapcore2d/ex;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore2d/ex;->a:Lcom/amap/api/mapcore2d/ex;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ex;->b:Lcom/amap/api/mapcore2d/ea;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore2d/ex;->a:Lcom/amap/api/mapcore2d/ex;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ea;->a(I)Lcom/amap/api/mapcore2d/ea;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore2d/ex;->b:Lcom/amap/api/mapcore2d/ea;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ex;->b(Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->e()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->a_()[B

    move-result-object v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ex;->c(Lcom/amap/api/mapcore2d/ey;)V

    iget-object v0, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lcom/amap/api/mapcore2d/ev;

    iget v4, p1, Lcom/amap/api/mapcore2d/ey;->b:I

    iget v5, p1, Lcom/amap/api/mapcore2d/ey;->c:I

    invoke-direct {v3, v4, v5, v0, p2}, Lcom/amap/api/mapcore2d/ev;-><init>(IILjava/net/Proxy;Z)V

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lcom/amap/api/mapcore2d/ev;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v4, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-static {v4, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/amap/api/mapcore2d/ev;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[B)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/amap/api/mapcore2d/ev;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lcom/amap/api/mapcore2d/fa;
    :try_end_1
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/amap/api/mapcore2d/cz;Lcom/amap/api/mapcore2d/ez;)V
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore2d/fc;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/fc;-><init>()V

    iput-object p1, v0, Lcom/amap/api/mapcore2d/fc;->a:Lcom/amap/api/mapcore2d/cz;

    iput-object p2, v0, Lcom/amap/api/mapcore2d/fc;->b:Lcom/amap/api/mapcore2d/ez;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ex;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/cz;Lcom/amap/api/mapcore2d/ez;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/cz;Lcom/amap/api/mapcore2d/ez;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/fa;Lcom/amap/api/mapcore2d/ez;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/fa;Lcom/amap/api/mapcore2d/ez;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/fa;Lcom/amap/api/mapcore2d/ez;)V
    .locals 2

    iget-object v0, p1, Lcom/amap/api/mapcore2d/fa;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/fa;->a:[B

    invoke-interface {p2, v0, v1}, Lcom/amap/api/mapcore2d/ez;->a(Ljava/util/Map;[B)V

    new-instance v0, Lcom/amap/api/mapcore2d/fc;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/fc;-><init>()V

    iput-object p2, v0, Lcom/amap/api/mapcore2d/fc;->b:Lcom/amap/api/mapcore2d/ez;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ex;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b(Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ex;->c(Lcom/amap/api/mapcore2d/ey;)V

    iget-object v0, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/ev;

    iget v2, p1, Lcom/amap/api/mapcore2d/ey;->b:I

    iget v3, p1, Lcom/amap/api/mapcore2d/ey;->c:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore2d/ev;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/ev;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lcom/amap/api/mapcore2d/ey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ey;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/fa;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/ey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cz;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/ex;->b(Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/fa;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore2d/cz;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
