.class public Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;
.super Ljava/lang/Object;
.source "DeleteItemCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteItemCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 8

    const-string/jumbo v4, "DeleteItemCommand"

    const/4 v5, 0x2

    const-string/jumbo v6, "excute"

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v5, "SHARE_EVENT_FILE_URIS"

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v5, "SHARE_EVENT_FILE_LOCAL_PATHS"

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getLocalPathFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->deleteItem(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "DeleteItemCommand"

    const-string/jumbo v1, "onError, deleteItem"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 4

    const-string/jumbo v0, "DeleteItemCommand"

    const-string/jumbo v1, "onRemoved, deleteItem"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
