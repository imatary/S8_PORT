.class public Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;
.super Ljava/lang/Object;
.source "SharedEventSchduler.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;
    }
.end annotation


# static fields
.field private static final READY_EVENTS_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SharedEventSchduler"

.field private static final TIME_OUT:I = 0x3a98

.field private static final TIME_OUT_FILE_UPLOAD:I = 0xea60

.field private static final TIME_OUT_IGNORED:I = -0x1


# instance fields
.field private final mHander:Landroid/os/Handler;

.field private final mReadyEventQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/SharedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningEventQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/SharedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeOutHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mTimeOutHistory:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mTimeOutHistory:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isTimeOut(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->startTimeOut(I)V

    return-void
.end method

.method private isRunnable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeOut(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    const/16 v2, 0x3a98

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCurrentRequest()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCurrentRequest()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUpdatedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    const-string/jumbo v4, "SharedEventSchduler"

    const-string/jumbo v5, "time out is ignored"

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    const v2, 0xea60

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUpdatedTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    int-to-long v8, v2

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method private onReady(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SharedEventSchduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ready was scheduled in Event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->start()V

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->pause(I)V

    return-void
.end method

.method private onRun(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SharedEventSchduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Run was scheduled in Event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->start()V

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->resume(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->startTimeOut(I)V

    return-void
.end method

.method private rearrange()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->resume(I)V

    :cond_0
    return-void
.end method

.method private startTimeOut(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mTimeOutHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SharedEventSchduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "There is same event("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") in time out history!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mTimeOutHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method isReady(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDequeue(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "SharedEventSchduler"

    const-string/jumbo v2, "onDequeue"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->pause(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->resume(I)V

    :cond_0
    const-string/jumbo v1, "SharedEventSchduler"

    const-string/jumbo v2, "<<  DEQUE >> "

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->showInfo()V

    return-void
.end method

.method public remove(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->rearrange()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method schedule(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isRunning(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->onRun(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isReady(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->onReady(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    goto :goto_0
.end method

.method showInfo()V
    .locals 6

    const/4 v5, 0x4

    sget-boolean v2, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SharedEventSchduler"

    const-string/jumbo v3, "================= Show Schdule ==========================="

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "SharedEventSchduler"

    const-string/jumbo v3, "Running Events : EMPTY!"

    invoke-static {v2, v5, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v2, "SharedEventSchduler"

    const-string/jumbo v3, "Ready Events : EMPTY!"

    invoke-static {v2, v5, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-string/jumbo v3, "SharedEventSchduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Running "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mRunningEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    const-string/jumbo v3, "SharedEventSchduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ready Event("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->mReadyEventQueue:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
