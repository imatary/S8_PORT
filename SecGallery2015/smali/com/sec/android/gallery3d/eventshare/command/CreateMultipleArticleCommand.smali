.class public Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;
.super Ljava/lang/Object;
.source "CreateMultipleArticleCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateMArticleCommand"


# instance fields
.field private mArticleRequestCount:I

.field private final mFileIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private final mUniquePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "CreateMArticleCommand"

    const-string/jumbo v4, "SOCIAL_STORY : CreateMultipleArticleCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    const-string/jumbo v3, "SHARE_EVENT_ITEM_IDS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mFileIdList:Ljava/util/ArrayList;

    const-string/jumbo v3, "SHARE_EVENT_ITEM_UNIQUE_PATHS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mRealPathList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mRealPathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mRealPathList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ".jpeg"

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getKeyFromUniquePath(Ljava/lang/String;)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private updateArticleId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "article_id"

    invoke-static {v0, p2, v1, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelItemStringColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private updateArticleIdsFromResponse(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;)V
    .locals 11

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->getArticles()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->getArticles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget v8, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mArticleRequestCount:I

    if-eq v8, v6, :cond_1

    const-string/jumbo v8, "CreateMArticleCommand"

    const-string/jumbo v9, "SOCIAL_STORY : updateArticleIds - mismatch article count"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "CreateMArticleCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SOCIAL_STORY : updateArticleIds - articleId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", uniquePath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->getKeyFromUniquePath(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mRealPathList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v8, "CreateMArticleCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SOCIAL_STORY : updateArticleIds - index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", uniquePath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v5}, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->updateArticleId(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "CreateMArticleCommand"

    const-string/jumbo v9, "SOCIAL_STORY : updateArticleIds - response\'s articles is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public excute()V
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v6, "CreateMArticleCommand"

    const/4 v7, 0x2

    const-string/jumbo v8, "excute"

    invoke-static {v6, v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;-><init>()V

    const-string/jumbo v6, "LIKE"

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->setOnlyOnce(Z)V

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mUniquePathList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "CreateMArticleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : CreateMultipleRequest uniquePath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;-><init>()V

    const-string/jumbo v7, "v6t16ikdtt"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/eventshare/Config;->SERVICE_ID:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setPermissionSetId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setPushNotification(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mArticleRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mArticleRequestCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;-><init>()V

    const-string/jumbo v7, "v6t16ikdtt"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/eventshare/Config;->SERVICE_ID:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->setArticles(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v6, v3, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->createMultipleArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v0

    const-string/jumbo v2, "CreateMArticleCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : onError message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;->updateArticleIdsFromResponse(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;)V

    return-void
.end method
