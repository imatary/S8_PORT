.class Landroid/icu/impl/ICUNotifier$NotifyThread;
.super Ljava/lang/Thread;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyThread"
.end annotation


# instance fields
.field private final notifier:Landroid/icu/impl/ICUNotifier;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUNotifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    iput-object p1, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    return-void
.end method


# virtual methods
.method public queue([Ljava/util/EventListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/EventListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/ICUNotifier$NotifyThread;->notifier:Landroid/icu/impl/ICUNotifier;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
