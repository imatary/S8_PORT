.class public Lcom/sec/android/gallery3d/eventshare/state/SharedState;
.super Lcom/sec/android/gallery3d/eventshare/EventState;
.source "SharedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedState"


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mCanceled:Z

    return-void
.end method

.method private cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getRequest()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "SharedState"

    const-string/jumbo v1, "Refreshed."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void

    :cond_1
    const-string/jumbo v0, "SharedState"

    const-string/jumbo v1, "Failed."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected contains(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x24

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->excute()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SharedState"

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mCanceled:Z

    return v0
.end method

.method public isInterruptCommand(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateCommand(I)Z
    .locals 1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidRequest(I)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getRequest()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string/jumbo v3, "SharedState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The request from ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getRequest()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") to ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_d

    const-string/jumbo v2, "valid."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :pswitch_1
    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v6, :cond_0

    const/16 v3, 0xc

    if-eq p1, v3, :cond_0

    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v6, :cond_2

    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    :cond_2
    move v0, v2

    :goto_3
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_3
    const/16 v3, 0x8

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v6, :cond_4

    const/16 v3, 0xc

    if-eq p1, v3, :cond_4

    const/16 v3, 0xd

    if-ne p1, v3, :cond_5

    :cond_4
    move v0, v2

    :goto_4
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :pswitch_4
    const/16 v3, 0x8

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v6, :cond_6

    const/16 v3, 0xc

    if-eq p1, v3, :cond_6

    const/16 v3, 0xd

    if-ne p1, v3, :cond_7

    :cond_6
    move v0, v2

    :goto_5
    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    :pswitch_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_7
    const/16 v3, 0x8

    if-eq p1, v3, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_8

    if-eq p1, v6, :cond_8

    const/16 v3, 0xd

    if-ne p1, v3, :cond_9

    :cond_8
    move v0, v2

    :goto_6
    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_6

    :pswitch_8
    const/16 v3, 0x8

    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_a

    if-eq p1, v6, :cond_a

    const/16 v3, 0xc

    if-eq p1, v3, :cond_a

    const/16 v3, 0xd

    if-ne p1, v3, :cond_b

    :cond_a
    move v0, v2

    :goto_7
    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_7

    :pswitch_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_a
    const/16 v3, 0xc

    if-ne p1, v3, :cond_c

    move v0, v2

    :goto_8
    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_8

    :pswitch_b
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "invalid."

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onCancel()V
    .locals 3

    const-string/jumbo v0, "SharedState"

    const/4 v1, 0x3

    const-string/jumbo v2, "onCancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mCanceled:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->cancel()V

    return-void
.end method

.method public onFail()V
    .locals 3

    const-string/jumbo v0, "SharedState"

    const/4 v1, 0x3

    const-string/jumbo v2, "onFail"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->cancel()V

    return-void
.end method

.method public onFinish(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V
    .locals 4

    const-string/jumbo v1, "SharedState"

    const/4 v2, 0x3

    const-string/jumbo v3, "onFinish"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFinish(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getPreviousRequest()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getPreviousRequest()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto :goto_0
.end method

.method protected onStart(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mCanceled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getRequest(Landroid/content/Intent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v2, "SHARE_EVENT_USE_MOBILE_DATA"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->checkValidConnetion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v3, "SHARE_EVENT_FILE_URIS"

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v3, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->excute()V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->excute()V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->excute()V

    goto :goto_0

    :pswitch_4
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->excute()V

    goto :goto_0

    :pswitch_5
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;->excute()V

    goto :goto_0

    :pswitch_6
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->excute()V

    goto :goto_0

    :pswitch_7
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->excute()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->excute()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/ResumeAddContentCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/ResumeAddContentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/ResumeAddContentCommand;->excute()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;->excute()V

    goto/16 :goto_0

    :pswitch_c
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->excute()V

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.RESUME_DOWNLOAD_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->excute()V

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.CANCEL_RETRY_UPLOAD"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.SEND_NEW_WEB_URL_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->excute()V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.OWNER_LEAVE_GROUP"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->excute()V

    goto/16 :goto_0

    :pswitch_11
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.ADD_COMMENT_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.EDIT_COMMENT_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.DELETE_COMMENT_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.ADD_LIKE_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.DELETE_LIKE_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.REFRESH_SOCIAL_INFO_REQUEST"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->excute()V

    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.UPDATE_STORY_NAME"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    const-string/jumbo v2, "SharedState"

    const-string/jumbo v3, "Request.UPDATE_STORY_COVER"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method protected onUpdate(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;->getRequest(Landroid/content/Intent;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->excute()V

    :cond_0
    return-void
.end method
