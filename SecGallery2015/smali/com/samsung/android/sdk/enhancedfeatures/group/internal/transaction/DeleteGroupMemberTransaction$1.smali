.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "DeleteGroupMemberTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setReqId(I)V

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;-><init>()V

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;

    iget-object v3, v1, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->setId(Ljava/lang/String;)V

    iget v3, v1, Lcom/samsung/android/sdk/ssf/group/io/GroupAddResponse;->count:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->setCount(I)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->setReqId(I)V

    invoke-virtual {v2, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;)V

    goto :goto_0
.end method
