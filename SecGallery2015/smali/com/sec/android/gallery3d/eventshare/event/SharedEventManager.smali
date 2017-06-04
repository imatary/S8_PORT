.class Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;
.super Lcom/sec/android/gallery3d/eventshare/EventManager;
.source "SharedEventManager.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedEventManager"


# instance fields
.field private isReady:Z

.field private final mCMHHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;

.field private mConnectivityDetector:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

.field private final mEventMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/SharedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

.field private final mWatchUri:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/EventManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_SHARE_OPERATION_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mWatchUri:[Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->isReady:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mCMHHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;

    return-void
.end method

.method private createEvent(Lcom/sec/android/gallery3d/eventshare/EventShareData;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->id:I

    iget v3, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setMemento(Lcom/sec/android/gallery3d/eventshare/Memorable;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setListener(Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->restore(Lcom/sec/android/gallery3d/eventshare/EventShareData;)V

    return-object v0
.end method

.method private deleteEvent()V
    .locals 6

    const-string/jumbo v4, "SharedEventManager"

    const-string/jumbo v5, "deleteEvent"

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->destroy()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->showAllInfo()V

    return-void
.end method

.method private getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method private restoreHistory()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "SharedEventManager"

    const-string/jumbo v4, "Start restoring events."

    invoke-static {v3, v5, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;->restore()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mCMHHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->restore()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mCMHHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->getEventShareDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;->copyEventShareDataList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/EventShareData;

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->createEvent(Lcom/sec/android/gallery3d/eventshare/EventShareData;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SharedEventManager"

    const-string/jumbo v4, "End restoring events."

    invoke-static {v3, v5, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected createEvent(II)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventShareHistory:Lcom/sec/android/gallery3d/eventshare/utils/EventShareHistory;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->setMemento(Lcom/sec/android/gallery3d/eventshare/Memorable;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->setHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->setListener(Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;)V

    return-object v0
.end method

.method protected findEventIDByUGCI(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v3, "SharedEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "groupID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getEvent(I)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const-string/jumbo v1, "operation"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SharedEventManager"

    const-string/jumbo v2, "================= onChange ( CMH stroy) ==========================="

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SharedEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selfChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), uri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->deleteEvent()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->showAllInfo()V

    :cond_0
    return-void
.end method

.method public onFail()V
    .locals 4

    const-string/jumbo v2, "SharedEventManager"

    const-string/jumbo v3, "onFail"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->pause(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWait()V
    .locals 4

    const-string/jumbo v2, "SharedEventManager"

    const-string/jumbo v3, "onWait"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->pause(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWakeUp()V
    .locals 8

    const-string/jumbo v5, "SharedEventManager"

    const-string/jumbo v6, "onWakeUp"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->resume(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getBrokenUgci()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v6, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->excute()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected prepare()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->restoreHistory()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->isReady:Z

    return-void
.end method

.method protected ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->isReady:Z

    return v0
.end method

.method protected removeEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->remove(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    return-void
.end method

.method protected showAllEventInfo()V
    .locals 5

    const/4 v4, 0x4

    const-string/jumbo v1, "SharedEventManager"

    const-string/jumbo v2, "================= Show All Events ==========================="

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v2, "SharedEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mEventMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "SharedEventManager"

    const-string/jumbo v2, "Show All Events -"

    invoke-static {v1, v4, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mWatchUri:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mConnectivityDetector:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mConnectivityDetector:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->register(Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mConnectivityDetector:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/SharedEventManager;->mConnectivityDetector:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->unregister()V

    :cond_0
    return-void
.end method
