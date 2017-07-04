.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "CreateCommentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;

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

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;-><init>()V

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->setReqId(I)V

    invoke-virtual {v2, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;)V

    goto :goto_0
.end method
