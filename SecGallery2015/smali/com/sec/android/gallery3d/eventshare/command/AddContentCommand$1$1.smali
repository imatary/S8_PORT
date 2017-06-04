.class Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;
.super Ljava/lang/Object;
.source "AddContentCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    const-string/jumbo v0, "AddContentCommand"

    const-string/jumbo v1, "onError, no network connection returned."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->getErrorFrom(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    move-result-object v3

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPEN"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->SERVER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-eq v3, v0, :cond_2

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->UNKNOWN:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPES"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->USER:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-eq v3, v0, :cond_4

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->DEVICE:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v3, v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UPED"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
