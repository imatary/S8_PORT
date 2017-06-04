.class public Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;
.source "DeleteLikeCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteLikeCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->DELETE_BY_LIKE:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    return-object v0
.end method

.method public getRequet(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;->setArticleId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "LIKE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;->setMetaKey(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;->setCancelAction(Z)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mFileId:I

    sget-object v3, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForLikeWithSocialType(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateHostLikeCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeleteLikeCommand"

    const-string/jumbo v1, "SOCIAL_STORY : onError [FAIL QUERY CMH : update commit status]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "DeleteLikeCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : onError message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->mFileId:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->unlikeChannelItemByMe(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeleteLikeCommand"

    const-string/jumbo v1, "SOCIAL_STORY : onSuccess [FAIL QUERY CMH : delete the record]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "DeleteLikeCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : onSuccess updateLikeInfo value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
