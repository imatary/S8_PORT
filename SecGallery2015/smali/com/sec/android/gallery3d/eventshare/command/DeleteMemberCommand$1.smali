.class Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;
.super Ljava/lang/Object;
.source "DeleteMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

.field final synthetic val$deleteGroupMemberResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->val$deleteGroupMemberResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->val$deleteGroupMemberResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v0, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->val$deleteGroupMemberResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    const-string/jumbo v2, "DeleteMemberCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " deleteColumnWithId UGCI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DeleteMemberCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "myDuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", duid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v0, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mDuid:Ljava/lang/String;

    :cond_8
    if-eqz v0, :cond_9

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    const-string/jumbo v2, "DeleteMemberCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " deleteChannelContactItem UGCI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",lduid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
