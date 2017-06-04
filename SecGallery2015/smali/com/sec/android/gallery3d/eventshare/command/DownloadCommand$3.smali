.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x64

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->initErrorCode()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->checkShareErrorCode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "DownloadCommand"

    const-string/jumbo v2, "try silent retry"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;->excute()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    goto :goto_0
.end method
