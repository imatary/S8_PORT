.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "UpdateGroupTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V

    goto :goto_0
.end method
