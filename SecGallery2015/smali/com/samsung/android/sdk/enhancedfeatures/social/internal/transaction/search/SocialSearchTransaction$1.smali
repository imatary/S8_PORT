.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "SocialSearchTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setReqId(I)V

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v22, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;-><init>()V

    move-object/from16 v21, p2

    check-cast v21, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setReqId(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getTotal()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setTotal(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCount()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCount(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getDisplayCount()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setDisplayCount(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getOffset()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setOffset(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getPagesRemain()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setPagesRemain(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;

    new-instance v17, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;-><init>()V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getAppId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getSid()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setSid(I)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setName(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPermissionSetId()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPermissionSetId(I)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCommentCount()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCommentCount(I)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getGroupId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    new-instance v15, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;

    invoke-direct {v15}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getValue()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setValue(I)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->isOnlyOnce()Z

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setArticleMetaCounterList(Ljava/util/List;)V

    :cond_2
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleList(Ljava/util/List;)V

    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;

    new-instance v16, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;-><init>()V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getArticleId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setValue(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setCreatedAt(Ljava/lang/Long;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleMetaDataList(Ljava/util/List;)V

    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    new-instance v15, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;

    invoke-direct {v15}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getArticleId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setValue(I)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->isOnlyOnce()Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleMetaCounterList(Ljava/util/List;)V

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_c

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;

    new-instance v20, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;-><init>()V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommentId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getComment()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setComment(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPermissionSetId()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPermissionSetId(I)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getParentId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setParentId(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_a

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    new-instance v18, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;-><init>()V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->isOnlyOnce()Z

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCommentMetaCounterList(Ljava/util/List;)V

    :cond_a
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentList(Ljava/util/List;)V

    :cond_c
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;

    new-instance v19, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;-><init>()V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getCommentId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setValue(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setCreatedAt(Ljava/lang/Long;)V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentMetaDataList(Ljava/util/List;)V

    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    new-instance v18, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;-><init>()V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCommentId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->isOnlyOnce()Z

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentMetaCounterList(Ljava/util/List;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V

    goto/16 :goto_0
.end method
