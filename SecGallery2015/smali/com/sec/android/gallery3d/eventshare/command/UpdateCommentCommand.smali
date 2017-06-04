.class public Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;
.source "UpdateCommentCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateCommentCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 5

    const-string/jumbo v2, "UpdateCommentCommand"

    const/4 v3, 0x2

    const-string/jumbo v4, "excute"

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->excute()V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mCreateArticleProcess:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_COMMENT_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mCommentId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->checkCommentState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, " SHARE_EVENT_COMMENT_DESCRIPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UpdateCommentCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : UpdateCommentRequest commentId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mCommentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;-><init>()V

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mFileId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;->setReqId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mCommentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;->setComment(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v2, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;)V

    goto :goto_0
.end method

.method public getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->EDIT_BY_COMMENT:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    return-object v0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mCommentId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithCommentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UpdateCommentCommand"

    const-string/jumbo v1, "SOCIAL_STORY : onError [FAIL QUERY CMH : update commit status]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "UpdateCommentCommand"

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

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/UpdateCommentResponse;->getUpdatedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mChannelId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mFileId:I

    if-gez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "UpdateCommentCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong id, channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mChannelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mFileId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    const-string/jumbo v1, "UpdateCommentCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOCIAL_STORY : onSuccess update comment id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", serverCommentTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentServerTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "UpdateCommentCommand"

    const-string/jumbo v4, "SOCIAL_STORY : onSuccess [FAIL QUERY CMH : update server time, commit status]"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
