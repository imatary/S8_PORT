.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests;
.super Ljava/lang/Object;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;,
        Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;,
        Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse;
    }
.end annotation


# static fields
.field public static final PAGE_SIZE:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commentsRequest(II)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->defaultParameters(I)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "sort"

    const-string/jumbo v2, "new"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pageSize"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "current"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v2, "/cbox/v2_neo_list_json.json"

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private static defaultParameters(I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "lang"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getSystemLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pool"

    const-string/jumbo v2, "cbox2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "clientType"

    const-string/jumbo v2, "app-android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ticket"

    const-string/jumbo v2, "glink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "snsCode"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/login/neoid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v2

    const-string/jumbo v3, "groupId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "objectId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "categoryId"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static deleteRequest(ILcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->defaultParameters(I)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "commentNo"

    iget v2, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "resultType"

    const-string/jumbo v2, "comment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v2, "/cbox/v2_neo_delete_json.json"

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static repliesRequest(III)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->defaultParameters(I)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "sort"

    const-string/jumbo v2, "old"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pageSize"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "parentCommentNo"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v2, "/cbox/v2_neo_list_json.json"

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static saveRequest(Lcom/naver/glink/android/sdk/model/Comment;I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/model/Comment;",
            "I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;",
            ">;"
        }
    .end annotation

    const/4 v6, -0x1

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->defaultParameters(I)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "objectUrl"

    const-string/jumbo v2, "http://www.naver.com"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "commentType"

    const-string/jumbo v2, "txt"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "resultType"

    const-string/jumbo v2, "comment"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, v6, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;

    invoke-direct {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;-><init>(I)V

    const-string/jumbo v2, "extension"

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "contents"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->refCommentId:I

    if-eq v0, v6, :cond_1

    const-string/jumbo v0, "parentCommentNo"

    iget v2, p0, Lcom/naver/glink/android/sdk/model/Comment;->refCommentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mentions["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionNickname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->makeQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v2, p0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    if-ne v2, v6, :cond_4

    sget-object v2, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/cbox/v2_neo_create_json.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-virtual {v2, v0, v1, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string/jumbo v0, "contents"

    const-string/jumbo v2, "@%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "commentNo"

    iget v3, p0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/cbox/v2_neo_update_json.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-virtual {v2, v0, v1, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_2
.end method
