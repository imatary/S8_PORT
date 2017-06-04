.class public Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;
.super Ljava/lang/Object;
.source "CreateArticleCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateArticleCommand"


# instance fields
.field private final mChannelId:I

.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mFileId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mReqType:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private final mUniquePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iput-object p3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mReqType:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mChannelId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_FILE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mFileId:I

    const-string/jumbo v0, "CreateArticleCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : real file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pocessArticleId(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$1;->$SwitchMap$com$sec$android$gallery3d$eventshare$command$CreateArticleCommand$ReqType:[I

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mReqType:Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInCommentTable(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;->excute()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInCommentTable(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;->excute()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInCommentTable(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;->excute()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInCommentTable(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateLikeCommand;->excute()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInCommentTable(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteLikeCommand;->excute()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->updateArticleIdInFileTable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ITEM_ID"

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "article_id"

    invoke-static {v2, v3, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->excute()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateArticleIdInCommentTable(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mChannelId:I

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mFileId:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForAllCommentAndLike(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentArticleId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "CreateArticleCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No comment and like or fail to update article id of them, story id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", file id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mFileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateArticleIdInFileTable(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    const-string/jumbo v2, "article_id"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelItemStringColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v3, "CreateArticleCommand"

    const/4 v4, 0x2

    const-string/jumbo v5, "excute"

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "CreateArticleCommand"

    const-string/jumbo v4, "SOCIAL_STORY : mUniquePath is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    const-string/jumbo v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    const-string/jumbo v4, ".jpeg"

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;-><init>()V

    const-string/jumbo v3, "LIKE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->setOnlyOnce(Z)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;-><init>()V

    const-string/jumbo v4, "v6t16ikdtt"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/Config;->SERVICE_ID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setPermissionSetId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setPushNotification(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->setMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    move-result-object v1

    const-string/jumbo v3, "CreateArticleCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOCIAL_STORY : CreateArticleRequest request uniquePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v3, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->mUniquePath:Ljava/lang/String;

    goto :goto_1
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 9

    const-wide v0, 0xee7bf4d9L

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "CreateArticleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : onError update articleId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->pocessArticleId(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    const-string/jumbo v6, "CreateArticleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : onError message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateArticleResponse;->getArticleId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CreateArticleCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SOCIAL_STORY : onSuccess update articleId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->pocessArticleId(Ljava/lang/String;)V

    return-void
.end method
