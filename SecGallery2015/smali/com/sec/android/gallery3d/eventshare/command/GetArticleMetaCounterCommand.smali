.class public Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;
.super Ljava/lang/Object;
.source "GetArticleMetaCounterCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final INDEX_STORY_PHONE_NUMBER:I = 0x0

.field private static final INSERT_ACTION:I = 0x1

.field private static final LIKE_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final SKIP_ACTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GetArticleMCCommnad"


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private final mChannelId:I

.field private final mFileId:I

.field private mLikeMemberList:Ljava/util/ArrayList;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->LIKE_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    const-string/jumbo v0, "SHARE_EVENT_ID"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mChannelId:I

    const-string/jumbo v0, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mArticleId:Ljava/lang/String;

    const-string/jumbo v0, "SHARE_EVENT_ITEM_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    return-void
.end method

.method private deleteLikeInfo()V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mChannelId:I

    iget v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    invoke-static {v5, v6, v7, v2, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->unlikeChannelItem(Landroid/content/Context;IILjava/lang/String;I)Z

    const-string/jumbo v5, "GetArticleMCCommnad"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SOCIAL_STORY : DELETE deleteLikeInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getActionForLiketInfo(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private insertLikeInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    :goto_0
    const-string/jumbo v2, "GetArticleMCCommnad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : INSERT insertLikeInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v8, v15

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->getUpdatedAt()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mChannelId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mArticleId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v13}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->likeChannelItem(Landroid/content/Context;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)I

    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private makeExistedLikeMemberInfo()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->LIKE_VIEW_PROJECTION:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mChannelId:I

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForAllLike(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->getLikeList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "GetArticleMCCommnad"

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

.method private updateHostLikedCommitStatus()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mChannelId:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    sget-object v3, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForLikeWithSocialType(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateHostLikeCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetArticleMCCommnad"

    const-string/jumbo v1, "SOCIAL_STORY : Fail to update my like\'s commit status in CMH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateLikeInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;)V
    .locals 11

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_0

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->getActionForLiketInfo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "GetArticleMCCommnad"

    const-string/jumbo v9, "SOCIAL_STORY : update my like\'s commit status in CMH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->updateHostLikedCommitStatus()V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "GetArticleMCCommnad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SOCIAL_STORY : SKIP updateLikeInfo requestedPhoneNumber : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    invoke-direct {p0, v3, v7}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->insertLikeInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->deleteLikeInfo()V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 6

    const-string/jumbo v0, "GetArticleMCCommnad"

    const-string/jumbo v1, "SOCIAL_STORY : excute() - getArticleMetaCounter run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mLikeMemberList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mArticleId:Ljava/lang/String;

    const-string/jumbo v2, "LIKE"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "GetArticleMCCommnad"

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

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mArticleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "GetArticleMCCommnad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : onSuccess - mArticleId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFileId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->mFileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->makeExistedLikeMemberInfo()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->updateLikeInfo(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;)V

    goto :goto_0
.end method
