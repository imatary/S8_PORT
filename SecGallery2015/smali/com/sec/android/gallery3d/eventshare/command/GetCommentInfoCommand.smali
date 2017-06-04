.class public Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;
.super Ljava/lang/Object;
.source "GetCommentInfoCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;
    }
.end annotation


# static fields
.field private static final COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final DISPLAY_COUNT:I = 0x64

.field private static final INDEX_STORY_COMMENT_COMMIT_STATUS:I = 0x2

.field private static final INDEX_STORY_COMMENT_ID:I = 0x0

.field private static final INDEX_STORY_COMMENT_TIME:I = 0x1

.field private static final INSERT_ACTION:I = 0x1

.field private static final SEARCH_COMMENT:I = 0x4

.field private static final SKIP_ACTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GetCommentInfoCommand"

.field private static final UPDATE_ACTION:I = 0x2

.field private static final UPDATE_COMMIT_STATUS:I = 0x3


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private final mChannelId:I

.field private mCommentInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mFileId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mOffSet:I

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "comment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "commit_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mChannelId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mArticleId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ITEM_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_SEARCH_REQ_OFFSET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mOffSet:I

    return-void
.end method

.method private deleteCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->getPagesRemain()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->getWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->deleteComment(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v5, "GetCommentInfoCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SOCIAL_STORY : DELETE FAIL - commentId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", channelId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mChannelId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, "GetCommentInfoCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SOCIAL_STORY : DELETE deleteCommentInfo commentId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getActionForCommentInfo(Ljava/lang/String;J)I
    .locals 8

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->getTimeStamp()J

    move-result-wide v6

    cmp-long v5, p2, v6

    if-lez v5, :cond_1

    const/4 v0, 0x2

    :goto_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->uploadInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mChannelId:I

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithNullCommentId(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithCommentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private insertCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;)V
    .locals 15

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCreatedAt()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mArticleId:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createComment(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)I

    const-string/jumbo v0, "GetCommentInfoCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : INSERT insertCommentInfo commentId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", commentText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    goto :goto_1
.end method

.method private makeExistedCommentInfo()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mChannelId:I

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->getCommentList(Landroid/content/Context;[Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "GetCommentInfoCommand"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private updateCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCreatedAt()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getComment()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateServerComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    const-string/jumbo v4, "GetCommentInfoCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : UPDATE updateCommentInfo commentId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", commentText : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V
    .locals 12

    const/4 v11, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->getCommentList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->getCommentList()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->getCreatedAt()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->getActionForCommentInfo(Ljava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v8, "GetCommentInfoCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SOCIAL_STORY : SKIP updateCommentInfo commentId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v11, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->insertCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->updateCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;)V

    goto :goto_1

    :cond_3
    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithCommentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->deleteCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mArticleId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "GetCommentInfoCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SOCIAL_STORY : excute() but not action - mArticleId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFileId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mFileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "GetCommentInfoCommand"

    const-string/jumbo v2, "SOCIAL_STORY : excute() - SocialSearchRequest run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;-><init>()V

    const-string/jumbo v1, "v6t16ikdtt"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setDisplayCount(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mOffSet:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setOffset(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setFilter(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mCommentInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->setArticleId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;)V

    goto :goto_0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "GetCommentInfoCommand"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->getPagesRemain()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->getOffset()I

    move-result v0

    const-string/jumbo v3, "GetCommentInfoCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOCIAL_STORY : onSuccess - currentOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pagesRemain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->makeExistedCommentInfo()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->updateCommentInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_SEARCH_REQ_OFFSET"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v3, v4, v2}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->excute()V

    :cond_0
    return-void
.end method
