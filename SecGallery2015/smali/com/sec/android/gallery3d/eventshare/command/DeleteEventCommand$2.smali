.class Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;
.super Ljava/lang/Object;
.source "DeleteEventCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    :cond_0
    return-void
.end method