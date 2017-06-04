.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "GetArticleMetaCounterTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;

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

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;

    invoke-direct {v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;-><init>()V

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    invoke-virtual {v5, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setReqId(I)V

    invoke-virtual {v5, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getArticleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setValue(I)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->isOnlyOnce()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getMemberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setMemberId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setValue(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getUpdatedTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setUpdatedAt(Ljava/lang/Long;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMemberList(Ljava/util/List;)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;)V

    goto/16 :goto_0
.end method
