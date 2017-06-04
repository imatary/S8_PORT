.class public Lorg/puremvc/java/multicore/core/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# static fields
.field protected static instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/core/model/Model;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected multitonKey:Ljava/lang/String;

.field protected proxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/interfaces/IProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/puremvc/java/multicore/core/model/Model;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/puremvc/java/multicore/core/model/Model;->multitonKey:Ljava/lang/String;

    sget-object v0, Lorg/puremvc/java/multicore/core/model/Model;->instanceMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/model/Model;->multitonKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->proxyMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/core/model/Model;->initializeModel()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/model/Model;
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/model/Model;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/model/Model;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/puremvc/java/multicore/core/model/Model;

    invoke-direct {v0, p0}, Lorg/puremvc/java/multicore/core/model/Model;-><init>(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/puremvc/java/multicore/core/model/Model;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/core/model/Model;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeModel(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/model/Model;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/model/Model;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hasProxy(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->proxyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected initializeModel()V
    .locals 0

    return-void
.end method

.method public registerProxy(Lorg/puremvc/java/multicore/interfaces/IProxy;)V
    .locals 2

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->multitonKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/puremvc/java/multicore/interfaces/IProxy;->initializeNotifier(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->proxyMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IProxy;->getProxyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IProxy;->onRegister()V

    return-void
.end method

.method public removeProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->proxyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/interfaces/IProxy;

    return-object v0
.end method

.method public retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/model/Model;->proxyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/interfaces/IProxy;

    return-object v0
.end method
