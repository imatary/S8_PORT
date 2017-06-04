.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "GetGroupsUserBelongsTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 10

    iget v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;

    invoke-direct {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;-><init>()V

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;

    invoke-virtual {v5, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->setReqId(I)V

    invoke-virtual {v5, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->setUserData(Ljava/lang/Object;)V

    iget v6, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups_count:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->setCount(I)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getCount()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setId(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->group_name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setAppId(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->owner_id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOwnerId(Ljava/lang/String;)V

    iget v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->sid:I

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setSid(I)V

    iget v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->option:I

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOption(I)V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->created_at:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setCreatedAt(J)V

    iget v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->members_count:I

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setMembersCount(I)V

    iget v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->status:I

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setStatus(I)V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->type:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setType(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->setGroups(Ljava/util/List;)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;)V

    goto :goto_0
.end method
