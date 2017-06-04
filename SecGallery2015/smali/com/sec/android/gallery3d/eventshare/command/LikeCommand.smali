.class public abstract Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;
.super Ljava/lang/Object;
.source "LikeCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "LikeCommand"


# instance fields
.field protected final mChannelId:I

.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field final mFileId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mChannelId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_FILE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mFileId:I

    return-void
.end method

.method private getItemArticleId(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v2, "fileid"

    const-string/jumbo v3, "article_id"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemStringColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mFileId:I

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->getItemArticleId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mFileId:I

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->excute()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "LikeCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : UpdateArticleMetaCounterRequest articleId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->getRequet(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v4, v2, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V

    goto :goto_0
.end method

.method protected abstract getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
.end method

.method protected abstract getRequet(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/LikeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_COMMENT_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
