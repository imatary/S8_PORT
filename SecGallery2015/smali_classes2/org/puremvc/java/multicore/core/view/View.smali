.class public Lorg/puremvc/java/multicore/core/view/View;
.super Ljava/lang/Object;
.source "View.java"


# static fields
.field protected static instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/core/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mediatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/puremvc/java/multicore/interfaces/IMediator;",
            ">;"
        }
    .end annotation
.end field

.field protected multitonKey:Ljava/lang/String;

.field private observerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/puremvc/java/multicore/interfaces/IObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/puremvc/java/multicore/core/view/View;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/puremvc/java/multicore/core/view/View;->multitonKey:Ljava/lang/String;

    sget-object v0, Lorg/puremvc/java/multicore/core/view/View;->instanceMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/view/View;->multitonKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/core/view/View;->initializeView()V

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/core/view/View;
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/view/View;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/view/View;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/puremvc/java/multicore/core/view/View;

    invoke-direct {v0, p0}, Lorg/puremvc/java/multicore/core/view/View;-><init>(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/puremvc/java/multicore/core/view/View;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/core/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeView(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lorg/puremvc/java/multicore/core/view/View;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/puremvc/java/multicore/core/view/View;->instanceMap:Ljava/util/Map;

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
.method public hasMediator(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected initializeView()V
    .locals 0

    return-void
.end method

.method public notifyObservers(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    iget-object v4, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v1, v2, v0

    check-cast v1, Lorg/puremvc/java/multicore/interfaces/IObserver;

    invoke-interface {v1, p1}, Lorg/puremvc/java/multicore/interfaces/IObserver;->notifyObserver(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V
    .locals 6

    iget-object v4, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IMediator;->getMediatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/puremvc/java/multicore/core/view/View;->multitonKey:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/puremvc/java/multicore/interfaces/IMediator;->initializeNotifier(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IMediator;->getMediatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IMediator;->listNotificationInterests()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-eqz v4, :cond_0

    new-instance v0, Lorg/puremvc/java/multicore/core/view/View$1;

    invoke-direct {v0, p0, p1}, Lorg/puremvc/java/multicore/core/view/View$1;-><init>(Lorg/puremvc/java/multicore/core/view/View;Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    new-instance v3, Lorg/puremvc/java/multicore/patterns/observer/Observer;

    invoke-direct {v3, v0, p1}, Lorg/puremvc/java/multicore/patterns/observer/Observer;-><init>(Lorg/puremvc/java/multicore/interfaces/IFunction;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4, v3}, Lorg/puremvc/java/multicore/core/view/View;->registerObserver(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/IObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/IMediator;->onRegister()V

    :cond_1
    return-void
.end method

.method public registerObserver(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/IObserver;)V
    .locals 3

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;
    .locals 4

    iget-object v3, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/puremvc/java/multicore/interfaces/IMediator;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/puremvc/java/multicore/interfaces/IMediator;->listNotificationInterests()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lorg/puremvc/java/multicore/core/view/View;->removeObserver(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lorg/puremvc/java/multicore/interfaces/IMediator;->onRemove()V

    :cond_1
    return-object v2
.end method

.method public removeObserver(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/puremvc/java/multicore/patterns/observer/Observer;

    invoke-virtual {v1, p2}, Lorg/puremvc/java/multicore/patterns/observer/Observer;->compareNotifyContext(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/puremvc/java/multicore/core/view/View;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public retrieveMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/core/view/View;->mediatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/puremvc/java/multicore/interfaces/IMediator;

    return-object v0
.end method
