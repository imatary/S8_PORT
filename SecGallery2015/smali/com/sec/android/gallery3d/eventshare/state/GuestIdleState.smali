.class public Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;
.super Lcom/sec/android/gallery3d/eventshare/EventState;
.source "GuestIdleState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuestIdleState"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    return-void
.end method


# virtual methods
.method protected contains(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

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
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->excute()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "GuestIdleState"

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInterruptCommand(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isUpdateCommand(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 3

    const-string/jumbo v0, "GuestIdleState"

    const/4 v1, 0x3

    const-string/jumbo v2, "OnCancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->excute()V

    return-void
.end method

.method public onFail()V
    .locals 3

    const-string/jumbo v0, "GuestIdleState"

    const/4 v1, 0x3

    const-string/jumbo v2, "onFail"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method

.method protected onStart(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;->getRequest(Landroid/content/Intent;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;->excute()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->excute()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->excute()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "GuestIdleState"

    const-string/jumbo v2, "Request.RESUME_DOWNLOAD_REQUEST"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->excute()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xb -> :sswitch_1
        0x10 -> :sswitch_4
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onUpdate(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
