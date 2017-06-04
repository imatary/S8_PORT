.class public Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;
.source "StopContentsUploadCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StopContentsUploadCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    const-string/jumbo v0, "StopContentsUploadCommand"

    const/4 v1, 0x2

    const-string/jumbo v2, "excute"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareID()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->stop(JLcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
