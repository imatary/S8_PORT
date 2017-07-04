.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "CreateGroupTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    iget v5, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setReqId(I)V

    iget v5, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v5, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;-><init>()V

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setAppId(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->group_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setId(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->option:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setOption(I)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->owner_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setOwnerId(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->sid:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setSid(I)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setType(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setReqId(I)V

    invoke-virtual {v4, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->non_members:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->non_members:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;->non_members:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/group/io/GroupMembersId;

    iget-object v6, v1, Lcom/samsung/android/sdk/ssf/group/io/GroupMembersId;->id:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->setNonMembers(Ljava/util/List;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;)V

    goto :goto_0
.end method
