.class public abstract Lcom/sec/android/gallery3d/eventshare/EventManager;
.super Landroid/database/ContentObserver;
.source "EventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventManager"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    return-void
.end method

.method private findEventID(Landroid/content/Intent;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->getEventID(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isNotVaild(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->getGroupID(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->findEventIDByUGCI(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getEventID(Landroid/content/Intent;)I
    .locals 2

    const-string/jumbo v0, "SHARE_EVENT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getEventType(Landroid/content/Intent;)I
    .locals 2

    const-string/jumbo v0, "SHARE_EVENT_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getGroupID(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SHARE_EVENT_UGCI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAddMemberToGuidGroupCommand(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "SHARE_EVENT_REQUEST_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isGetGuidFromSAClientCommand(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "SHARE_EVENT_REQUEST_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNotVaild(I)Z
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestoreEventCommand(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "SHARE_EVENT_REQUEST_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidType(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract addEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
.end method

.method protected abstract createEvent(II)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
.end method

.method protected abstract findEventIDByUGCI(Ljava/lang/String;)I
.end method

.method protected abstract getEvent(I)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
.end method

.method protected abstract prepare()V
.end method

.method public process(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isRestoreEventCommand(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isGetGuidFromSAClientCommand(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isAddMemberToGuidGroupCommand(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->samsungAccountExist(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isGetGuidFromSAClientCommand(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->init()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->ready()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->prepare()V

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllInfo()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isRestoreEventCommand(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->excute()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isAddMemberToGuidGroupCommand(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->excute()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->findEventID(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isNotVaild(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrong Event ID ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllInfo()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->getEvent(I)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    const-string/jumbo v4, "SHARE_EVENT_REQUEST_TYPE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/eventshare/EventManager;->removeEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    goto/16 :goto_0

    :cond_8
    if-nez v3, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventManager;->getEventType(Landroid/content/Intent;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/eventshare/EventManager;->isValidType(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/EventManager;->createEvent(II)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/eventshare/EventManager;->addEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    :cond_9
    const-string/jumbo v4, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process a request of Event ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->schedule(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isRunning(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->handle(Landroid/content/Intent;)V

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllInfo()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "EventManager"

    const-string/jumbo v5, "Wrong Event Type"

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllInfo()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->isValid()Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not Valid Event("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/eventshare/EventManager;->removeEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllInfo()V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->isReady(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->addIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected abstract ready()Z
.end method

.method protected abstract removeEvent(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
.end method

.method protected abstract showAllEventInfo()V
.end method

.method protected showAllInfo()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventManager;->showAllEventInfo()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventManager;->mSchduler:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->showInfo()V

    :cond_0
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
