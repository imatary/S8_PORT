.class Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;
.super Ljava/lang/Object;
.source "CreateGroupCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

.field final synthetic val$response:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->val$response:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->val$response:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUgci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CreateGroupCommand"

    const-string/jumbo v1, "CreateGroupCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$300(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CreateGroupCommand"

    const-string/jumbo v1, "CreateGroupCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0
.end method
