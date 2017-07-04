.class Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;
.super Ljava/lang/Object;
.source "EnhancedGroup.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/internal/listener/RequestPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->requestGroupPushInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RequestGroupPush Failed, resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverErrorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/sdk/ssf/group/io/GroupsPushInfo;

    iget-object v4, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupsPushInfo;->push_info:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupsPushInfo;->push_info:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupsPushInfo;->push_info:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setId(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->push_type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setPushType(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->requester_id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setRequesterId(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->optional_id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setOptional_id(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setMessage(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->group_name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setGroupName(Ljava/lang/String;)V

    iget v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->device_2fa:I

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setDevice2fa(I)V

    iget-object v5, v1, Lcom/samsung/android/sdk/ssf/group/io/PushInfo;->requested_at:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->setRequestedAt(J)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RequestGroupPush success, push message received("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;->onReceivePushMessage(Ljava/util/List;)V

    return-void
.end method
