.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "CreateArticleTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;

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

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;-><init>()V

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;->setReqId(I)V

    invoke-virtual {v2, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;)V

    goto :goto_0
.end method
