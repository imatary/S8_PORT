.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "AddGroupMembersTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;

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

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;-><init>()V

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->setId(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->count:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->setCount(I)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->setReqId(I)V

    invoke-virtual {v4, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->non_members:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->non_members:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->non_members:Ljava/util/ArrayList;

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
    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->setNonMembers(Ljava/util/List;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;)V

    goto :goto_0
.end method
