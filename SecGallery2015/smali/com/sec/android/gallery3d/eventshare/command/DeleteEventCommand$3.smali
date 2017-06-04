.class Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;
.super Ljava/lang/Object;
.source "DeleteEventCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

.field final synthetic val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->val$errorResponse:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    const-wide/16 v4, -0x6c

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "event_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->update(ILandroid/content/ContentValues;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "event_id"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "event_ugci"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "event_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->insert(Landroid/content/ContentValues;Ljava/lang/Object;)V

    goto :goto_0
.end method
