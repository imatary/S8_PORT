.class public Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;
.source "CreateCommentCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateCommentCommand"


# instance fields
.field private final mLocalCommentTime:J


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_COMMENT_TIME"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mLocalCommentTime:J

    return-void
.end method

.method private updateCommentServerInfo(Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mFileId:I

    iget-wide v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mLocalCommentTime:J

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentServerInfo(Landroid/content/Context;IIJLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CreateCommentCommand"

    const-string/jumbo v1, "SOCIAL_STORY : onSuccess [FAIL QUERY CMH : update server time, commit status]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "CreateCommentCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : onSuccess update comment id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", serverCommentTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 5

    const-string/jumbo v2, "CreateCommentCommand"

    const/4 v3, 0x2

    const-string/jumbo v4, "execute"

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "CreateCommentCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : CreateCommentRequest articleId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->excute()V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mCreateArticleProcess:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, " SHARE_EVENT_COMMENT_DESCRIPTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->setPermissionSetId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->setArticleId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->setPushNotification(Z)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->setComment(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v2, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;)V

    goto :goto_0
.end method

.method public getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->CREATE_BY_COMMENT:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    return-object v0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mFileId:I

    iget-wide v4, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mLocalCommentTime:J

    invoke-static {v1, v2, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithTimeStamp(IIJ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CreateCommentCommand"

    const-string/jumbo v1, "SOCIAL_STORY : onError [FAIL QUERY CMH : update commit status]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "CreateCommentCommand"

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

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/CreateCommentResponse;->getCreatedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->updateCommentServerInfo(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
