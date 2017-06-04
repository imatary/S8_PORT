.class public Lorg/puremvc/java/multicore/core/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field protected static instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/core/controller/Controller;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/interfaces/ICommand;",
            ">;"
        }
    .end annotation
.end field

.field protected multitonKey:Ljava/lang/String;

.field protected view:Lorg/puremvc/java/multicore/core/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/puremvc/java/multicore/core/controller/Controller;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->multitonKey:Ljava/lang/String;

    sget-object v0, Lorg/puremvc/java/multicore/core/controller/Controller;->instanceMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->multitonKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->commandMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/core/controller/Controller;->initializeController()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/controller/Controller;
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/controller/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/controller/Controller;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/puremvc/java/multicore/core/controller/Controller;

    invoke-direct {v0, p0}, Lorg/puremvc/java/multicore/core/controller/Controller;-><init>(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/puremvc/java/multicore/core/controller/Controller;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/core/controller/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeController(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/controller/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/controller/Controller;->instanceMap:Ljava/util/Map;

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
.method public executeCommand(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->commandMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/interfaces/ICommand;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->multitonKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/puremvc/java/multicore/interfaces/ICommand;->initializeNotifier(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/puremvc/java/multicore/interfaces/ICommand;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    :cond_0
    return-void
.end method

.method public hasCommand(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->commandMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected initializeController()V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->multitonKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/puremvc/java/multicore/core/view/View;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->view:Lorg/puremvc/java/multicore/core/view/View;

    return-void
.end method

.method public registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V
    .locals 3

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->commandMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->view:Lorg/puremvc/java/multicore/core/view/View;

    new-instance v1, Lorg/puremvc/java/multicore/patterns/observer/Observer;

    new-instance v2, Lorg/puremvc/java/multicore/core/controller/Controller$1;

    invoke-direct {v2, p0}, Lorg/puremvc/java/multicore/core/controller/Controller$1;-><init>(Lorg/puremvc/java/multicore/core/controller/Controller;)V

    invoke-direct {v1, v2, p0}, Lorg/puremvc/java/multicore/patterns/observer/Observer;-><init>(Lorg/puremvc/java/multicore/interfaces/IFunction;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/puremvc/java/multicore/core/view/View;->registerObserver(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/IObserver;)V

    goto :goto_0
.end method

.method public removeCommand(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/puremvc/java/multicore/core/controller/Controller;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1, p0}, Lorg/puremvc/java/multicore/core/view/View;->removeObserver(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/controller/Controller;->commandMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
