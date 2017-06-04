.class public Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;
.source "DeleteGuestEventCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteGuestEventCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    const-string/jumbo v1, "DeleteGuestEventCommand"

    const/4 v2, 0x2

    const-string/jumbo v3, "excute"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mDuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mDuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mDuid:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->deleteMember(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGuestEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto :goto_0
.end method
