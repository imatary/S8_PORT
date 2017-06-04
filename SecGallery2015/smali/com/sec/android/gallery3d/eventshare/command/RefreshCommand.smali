.class public Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;
.source "RefreshCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshCommand"


# instance fields
.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method

.method private isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public excute()V
    .locals 6

    const/4 v1, 0x7

    const/4 v4, 0x0

    const-string/jumbo v0, "RefreshCommand"

    const/4 v2, 0x2

    const-string/jumbo v3, "excute"

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RefreshCommand"

    const-string/jumbo v1, "It was requested again!"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->getFolderInfo(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "RefreshCommand"

    const-string/jumbo v2, "It was invalid for refresh!"

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    goto :goto_0
.end method
