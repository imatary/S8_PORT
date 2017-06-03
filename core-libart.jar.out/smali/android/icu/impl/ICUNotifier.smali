.class public abstract Landroid/icu/impl/ICUNotifier;
.super Ljava/lang/Object;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUNotifier$NotifyThread;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyLock:Ljava/lang/Object;

.field private notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_3

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Listener invalid for this notifier."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyChanged()V
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-direct {v0, p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;-><init>(Landroid/icu/impl/ICUNotifier;)V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-virtual {v0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->start()V

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    iget-object v3, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/EventListener;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {v2, v0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/util/EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract notifyListener(Ljava/util/EventListener;)V
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
