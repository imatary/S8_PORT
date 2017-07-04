.class Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;
.super Ljava/lang/Object;
.source "HostAddMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

.field final synthetic val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->initErrorCode()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->checkErrorCode(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    goto :goto_0
.end method
