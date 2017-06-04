.class public Lcom/samsung/android/sdk/ssf/social/SocialManager;
.super Ljava/lang/Object;
.source "SocialManager.java"


# direct methods
.method private static article(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;ILjava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    invoke-static {p0, p6}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Article Id should not be empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ArticleInfoRequest should not be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "social/v1/article"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const-string/jumbo v1, "article_id"

    invoke-virtual {v8, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    invoke-direct {v5, p6}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;

    move v1, p2

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v1, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "application/json"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    :cond_4
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    return v1
.end method

.method private static articleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    move-object/from16 v0, p8

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Article Id or Meta Key should not be empty Article id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Meta Key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    :cond_2
    if-nez p1, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "ArticleMetaCounterRequest should not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "social/v1/article_meta_counter"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const-string/jumbo v2, "article_id"

    invoke-virtual {v9, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "meta_key"

    invoke-virtual {v2, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    if-nez p2, :cond_5

    if-eqz p5, :cond_5

    const-string/jumbo v2, "member_list"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v4, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    move v2, p2

    move/from16 v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v2, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    :cond_6
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    :cond_7
    if-eqz p9, :cond_8

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_8
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v2, 0x1

    return v2
.end method

.method private static checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, " SsfListner has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static comment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    move-object/from16 v0, p7

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Comment Id should not be empty"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "CommentInfoRequest should not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "social/v1/comment"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const-string/jumbo v2, "comment_id"

    invoke-virtual {v9, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    if-eqz p4, :cond_4

    const-string/jumbo v2, "children_list"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v4, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;

    move v2, p2

    move v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v2, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    :cond_5
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    :cond_6
    if-eqz p8, :cond_7

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v2, 0x1

    return v2
.end method

.method public static createArticle(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->article(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;ILjava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static createComment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->comment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static createMultiple(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    const/4 v1, 0x1

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "articlesInfoRequest should not be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "social/v1/articles"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v3, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static deleteComment(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->comment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getArticleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->articleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static searchSocial(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    const/4 v1, 0x1

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "SearchSocialRequest should not be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "social/v1/search"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v3, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static updateArticleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->articleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateComment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->comment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method
