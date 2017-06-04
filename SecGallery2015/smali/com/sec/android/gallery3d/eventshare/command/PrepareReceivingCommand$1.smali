.class Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;
.super Ljava/lang/Object;
.source "PrepareReceivingCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "SHARE_EVENT_IS_RESTORE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getGalleryID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Ljava/lang/String;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CHANNEL_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto :goto_0
.end method
