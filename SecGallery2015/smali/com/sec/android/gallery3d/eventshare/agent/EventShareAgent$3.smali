.class Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;
.super Ljava/lang/Object;
.source "EventShareAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getOrsServerURLByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

.field final synthetic val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

.field final synthetic val$content_token:Ljava/lang/String;

.field final synthetic val$eventId:I

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    iput-object p3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$content_token:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$eventId:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 4

    const-string/jumbo v1, "EventShareAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getORSServerURL onError : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 5

    const-string/jumbo v0, "EventShareAgent"

    const-string/jumbo v1, "getORSServerURL onSuccess"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$content_token:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$eventId:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;->val$callback:Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;

    # invokes: Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getFolderTokenByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->access$200(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method
