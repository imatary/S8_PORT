.class public Lorg/puremvc/java/multicore/patterns/facade/Facade;
.super Ljava/lang/Object;
.source "Facade.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/IFacade;


# static fields
.field protected static instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/patterns/facade/Facade;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected controller:Lorg/puremvc/java/multicore/core/controller/Controller;

.field protected model:Lorg/puremvc/java/multicore/core/model/Model;

.field protected multitonKey:Ljava/lang/String;

.field protected view:Lorg/puremvc/java/multicore/core/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {p0, p1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/patterns/facade/Facade;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;

    invoke-direct {v0, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized hasCore(Ljava/lang/String;)Z
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/patterns/facade/Facade;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyObservers(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/view/View;->notifyObservers(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized removeCore(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/patterns/facade/Facade;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/puremvc/java/multicore/core/model/Model;->removeModel(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/puremvc/java/multicore/core/view/View;->removeView(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/puremvc/java/multicore/core/controller/Controller;->removeController(Ljava/lang/String;)V

    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

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
.method public hasCommand(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/controller/Controller;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMediator(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/view/View;->hasMediator(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProxy(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/model/Model;->hasProxy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected init(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Facade already constructed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->initializeNotifier(Ljava/lang/String;)V

    sget-object v0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->initializeFacade()V

    return-void
.end method

.method protected initializeController()V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->multitonKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/puremvc/java/multicore/core/controller/Controller;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    goto :goto_0
.end method

.method protected initializeFacade()V
    .locals 0

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->initializeModel()V

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->initializeController()V

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->initializeView()V

    return-void
.end method

.method protected initializeModel()V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->multitonKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/puremvc/java/multicore/core/model/Model;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/model/Model;

    move-result-object v0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    goto :goto_0
.end method

.method public initializeNotifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->multitonKey:Ljava/lang/String;

    return-void
.end method

.method protected initializeView()V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->multitonKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/puremvc/java/multicore/core/view/View;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    goto :goto_0
.end method

.method public registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    invoke-virtual {v0, p1, p2}, Lorg/puremvc/java/multicore/core/controller/Controller;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V

    return-void
.end method

.method public registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/view/View;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    :cond_0
    return-void
.end method

.method public registerProxy(Lorg/puremvc/java/multicore/interfaces/IProxy;)V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/model/Model;->registerProxy(Lorg/puremvc/java/multicore/interfaces/IProxy;)V

    return-void
.end method

.method public removeCommand(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->controller:Lorg/puremvc/java/multicore/core/controller/Controller;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/controller/Controller;->removeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/view/View;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/model/Model;->removeProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->view:Lorg/puremvc/java/multicore/core/view/View;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/view/View;->retrieveMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    move-result-object v0

    return-object v0
.end method

.method public retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/facade/Facade;->model:Lorg/puremvc/java/multicore/core/model/Model;

    invoke-virtual {v0, p1}, Lorg/puremvc/java/multicore/core/model/Model;->retrieveProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;

    move-result-object v0

    return-object v0
.end method

.method public sendNotification(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendNotification(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/puremvc/java/multicore/patterns/observer/Notification;

    invoke-direct {v0, p1, p2, p3}, Lorg/puremvc/java/multicore/patterns/observer/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->notifyObservers(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    return-void
.end method
