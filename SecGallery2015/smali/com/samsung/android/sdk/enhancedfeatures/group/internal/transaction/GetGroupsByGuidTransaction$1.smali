.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "GetGroupsByGuidTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p3

    iget v11, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    move-object/from16 v0, p3

    iget v11, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v3, v11}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    move-result-object v11

    invoke-interface {v11, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;

    invoke-direct {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;-><init>()V

    move-object/from16 v9, p2

    check-cast v9, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setReqId(I)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setUserData(Ljava/lang/Object;)V

    iget v11, v9, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->members_count:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setMemberCount(I)V

    iget-object v11, v9, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    if-eqz v11, :cond_4

    iget-object v11, v9, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ltz v11, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v9, Lcom/samsung/android/sdk/ssf/group/io/GroupGuidInfoResponse;->all_groups:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;

    invoke-direct {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;-><init>()V

    iget-object v12, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->id:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setId(Ljava/lang/String;)V

    iget v12, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups_count:I

    invoke-virtual {v7, v12}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setCount(I)V

    iget v12, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups_count:I

    if-lez v12, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoResponse;->groups:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;-><init>()V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->id:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setId(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->group_name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setGroupName(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setAppId(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->owner_id:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOwnerId(Ljava/lang/String;)V

    iget v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->sid:I

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setSid(I)V

    iget v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->option:I

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setOption(I)V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->created_at:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setCreatedAt(J)V

    iget v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->members_count:I

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setMembersCount(I)V

    iget v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->status:I

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setStatus(I)V

    iget-object v13, v6, Lcom/samsung/android/sdk/ssf/group/io/GroupUserInfoDetails;->type:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->setType(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->setGroups(Ljava/util/List;)V

    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->setGroups(Ljava/util/List;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;)V

    goto/16 :goto_0
.end method
