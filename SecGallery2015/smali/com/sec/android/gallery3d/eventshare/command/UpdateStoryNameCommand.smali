.class public Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;
.super Ljava/lang/Object;
.source "UpdateStoryNameCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateStoryNameCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;

.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 6

    const-string/jumbo v3, "UpdateStoryNameCommand"

    const/4 v4, 0x2

    const-string/jumbo v5, "excute"

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "SHARE_EVENT_UGCI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->setGroupName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    move-result-object v2

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v3, v2, v1}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->updateStoryName(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v4, 0x17

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateStoryNameCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto :goto_0
.end method
