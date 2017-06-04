.class public Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;
.super Lcom/sec/android/gallery3d/eventshare/EventState;
.source "HostIdleState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostIdleState"


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mCanceled:Z

    return-void
.end method


# virtual methods
.method protected contains(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->excute()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "HostIdleState"

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mCanceled:Z

    return v0
.end method

.method public isInterruptCommand(I)Z
    .locals 1

    const/4 v0, 0x4

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

.method public onCancel()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "HostIdleState"

    const/4 v1, 0x3

    const-string/jumbo v2, "OnCancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mCanceled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getCacheTask()Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;->excute()V

    return-void
.end method

.method public onFail()V
    .locals 3

    const-string/jumbo v0, "HostIdleState"

    const/4 v1, 0x3

    const-string/jumbo v2, "onFail"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;->excute()V

    return-void
.end method

.method protected onStart(Landroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mCanceled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->getRequest(Landroid/content/Intent;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->excute()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->excute()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->excute()V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/HostDeleteGroupCommand;->excute()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0

    :sswitch_5
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/ResumeUploadCommand;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/ResumeUploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/ResumeUploadCommand;->excute()V

    goto :goto_0

    :sswitch_6
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;->excute()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onUpdate(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;->getRequest(Landroid/content/Intent;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->excute()V

    :cond_0
    return-void
.end method
