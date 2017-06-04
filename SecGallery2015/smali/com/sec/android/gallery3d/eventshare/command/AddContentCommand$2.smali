.class Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;
.super Ljava/lang/Object;
.source "AddContentCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->excute()V

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->excute()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01ad

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    return-void
.end method
