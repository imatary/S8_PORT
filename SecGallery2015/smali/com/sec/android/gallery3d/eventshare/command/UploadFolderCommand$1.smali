.class Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;
.super Ljava/lang/Object;
.source "UploadFolderCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->initErrorCode()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->checkShareErrorCode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;->SILENT_RETRY:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorType;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "UploadFolderCommand"

    const-string/jumbo v1, "try silent retry"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;->excute()V

    :goto_1
    const-string/jumbo v0, "UploadFolderCommand"

    const-string/jumbo v1, "UploadFolderCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v7

    iput v5, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v7, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    const-string/jumbo v0, "UploadFolderCommand"

    const-string/jumbo v1, "onError, other error returned."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->getErrorFrom(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    move-result-object v3

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPEN"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-eq v3, v0, :cond_5

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPES"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-eq v3, v0, :cond_7

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_3

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPED"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method
