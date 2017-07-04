.class Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;
.super Ljava/lang/Object;
.source "EventShareAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->prepare(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

.field final synthetic val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

.field final synthetic val$eventId:I

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$groupID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    iput p2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$eventId:I

    iput-object p3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$groupID:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    const-wide/16 v4, -0x6c

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    const-wide/16 v4, -0x72

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->access$000(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$eventId:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$groupID:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method
