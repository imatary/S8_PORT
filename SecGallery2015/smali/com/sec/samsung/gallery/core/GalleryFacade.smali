.class public Lcom/sec/samsung/gallery/core/GalleryFacade;
.super Lorg/puremvc/java/multicore/patterns/facade/Facade;
.source "GalleryFacade.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryFacade"

.field private static final mCommandMap:Lcom/sec/samsung/gallery/core/CommandMap;

.field private static final mProxyMap:Lcom/sec/samsung/gallery/core/ProxyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/core/CommandMap;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/core/CommandMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/core/GalleryFacade;->mCommandMap:Lcom/sec/samsung/gallery/core/CommandMap;

    new-instance v0, Lcom/sec/samsung/gallery/core/ProxyMap;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/core/ProxyMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/core/GalleryFacade;->mProxyMap:Lcom/sec/samsung/gallery/core/ProxyMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->initializeFacade()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/core/GalleryFacade;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 3

    const-class v2, Lcom/sec/samsung/gallery/core/GalleryFacade;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/core/GalleryFacade;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/core/GalleryFacade;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/samsung/gallery/core/GalleryFacade;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized removeCore(Landroid/content/Context;)V
    .locals 3

    const-class v2, Lcom/sec/samsung/gallery/core/GalleryFacade;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->removeCore(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->hasProxy(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/core/GalleryFacade;->mProxyMap:Lcom/sec/samsung/gallery/core/ProxyMap;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/core/ProxyMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/core/GalleryFacade;->mProxyMap:Lcom/sec/samsung/gallery/core/ProxyMap;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/core/ProxyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/puremvc/java/multicore/interfaces/IProxy;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->registerProxy(Lorg/puremvc/java/multicore/interfaces/IProxy;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    invoke-super {p0, p1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GalleryFacade"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    const-string/jumbo v3, "GalleryFacade"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized sendNotification(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->hasCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    sget-object v3, Lcom/sec/samsung/gallery/core/GalleryFacade;->mCommandMap:Lcom/sec/samsung/gallery/core/CommandMap;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/core/CommandMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/core/GalleryFacade;->mCommandMap:Lcom/sec/samsung/gallery/core/CommandMap;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/core/CommandMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/puremvc/java/multicore/interfaces/ICommand;

    invoke-virtual {p0, p1, v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "GalleryFacade"

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_1
    move-exception v3

    move-object v1, v3

    :goto_2
    :try_start_5
    const-string/jumbo v3, "GalleryFacade"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, v3

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v1, v3

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v1, v3

    goto :goto_2
.end method
