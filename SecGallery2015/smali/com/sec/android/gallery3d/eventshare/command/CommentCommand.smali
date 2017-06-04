.class public abstract Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;
.super Ljava/lang/Object;
.source "CommentCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommentCommand"


# instance fields
.field mArticleId:Ljava/lang/String;

.field final mChannelId:I

.field mCommentId:Ljava/lang/String;

.field mCreateArticleProcess:Z

.field final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field final mFileId:I

.field final mIntent:Landroid/content/Intent;

.field final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mChannelId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_FILE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mArticleId:Ljava/lang/String;

    return-void
.end method

.method private getItemArticleId(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

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
.method checkCommentState()Z
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCommentId:Ljava/lang/String;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fileid"

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    const-string/jumbo v4, "comment_id"

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->getSocialItemStringColumn(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCommentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCommentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCommentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "CommentCommand"

    const-string/jumbo v2, "SOCIAL_STORY : commentId is null or empty."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_COMMENT_ID"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCommentId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "CommentCommand"

    const-string/jumbo v2, "SOCIAL_STORY : fileId is -1."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excute()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mArticleId:Ljava/lang/String;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->getItemArticleId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mArticleId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mArticleId:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mFileId:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_ITEM_UNIQUE_PATH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;->excute()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CommentCommand;->mCreateArticleProcess:Z

    :cond_1
    return-void
.end method

.method protected abstract getReqType()Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand$ReqType;
.end method
