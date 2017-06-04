.class Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;
.super Ljava/lang/Object;
.source "GetFolderInfoCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->checkRecoverFolderToken(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GetFolderInfoCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : errCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    # invokes: Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->isLiveEvent(I)Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    goto :goto_1
.end method
