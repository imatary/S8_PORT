.class Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;
.super Ljava/lang/Object;
.source "PrepareReceivingCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

.field final synthetic val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v0

    const-wide/16 v2, -0x73

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NO_EVENT"

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto :goto_0
.end method
