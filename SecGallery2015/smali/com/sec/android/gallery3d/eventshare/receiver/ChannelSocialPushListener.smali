.class public Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;
.super Ljava/lang/Object;
.source "ChannelSocialPushListener.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;


# static fields
.field private static final ENTITY_ARTICLE_META_COUNTER:I = 0x3

.field private static final ENTITY_COMMENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SocialPushListener"

.field private static final TYPE_CREATED:I = 0x1

.field private static final TYPE_DELETED:I = 0x3

.field private static final TYPE_UPDATED:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createCommentByOther(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->isEnableQuickNoti(I)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v13, v2

    :goto_0
    const-string/jumbo v2, "SocialPushListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : createCommentByOther() commentId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", commentText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v12

    const/4 v15, 0x1

    move/from16 v3, p8

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p11

    move-wide/from16 v10, p4

    move-object/from16 v14, p1

    invoke-static/range {v2 .. v15}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createComment(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)I

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_COMMENT_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    move/from16 v10, p8

    move-object/from16 v11, p1

    move-object/from16 v12, p9

    move-object/from16 v14, p7

    move-object/from16 v15, p2

    move/from16 v16, p3

    invoke-virtual/range {v8 .. v16}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifySocialInfo(Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v13, 0x1

    goto :goto_0
.end method

.method private createLikeByOther(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->isEnableQuickNoti(I)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v11, v2

    :goto_0
    const-string/jumbo v2, "SocialPushListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : createLikeByOther() fileId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    const/4 v13, 0x1

    move/from16 v3, p8

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    move-object/from16 v12, p1

    invoke-static/range {v2 .. v13}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->likeChannelItem(Landroid/content/Context;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)I

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->CREATE_LIKE_BY_OTHER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    move/from16 v8, p8

    move-object/from16 v9, p1

    move-object/from16 v10, p9

    move-object/from16 v12, p7

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v6 .. v14}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifySocialInfo(Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private createQuickNotiAndUpdateNotificationView(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->updated_at:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->from:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->setChannelID(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "title"

    invoke-static {v2, v10, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v2, "SocialPushListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : createQuickNotiAndUpdateNotificationView() storyName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SocialPushListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : createQuickNotiAndUpdateNotificationView() user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->entity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->value:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->createLikeByOther(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->value:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move/from16 v0, p4

    invoke-direct {p0, v0, v8, v10}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->deleteLikeByOther(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v12, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->comment_id:Ljava/lang/String;

    iget-object v13, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->msg:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->createCommentByOther(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v6, v7, v12, v13}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->updateCommentByOther(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v12}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->deleteCommentByOther(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deleteCommentByOther(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SocialPushListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : deleteCommentByOther() commentId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithCommentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->deleteComment(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private deleteLikeByOther(ILjava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "SocialPushListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : deleteLikeByOther() fileId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_OTHER:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v1

    invoke-static {v0, p3, p1, p2, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->unlikeChannelItem(Landroid/content/Context;IILjava/lang/String;I)Z

    return-void
.end method

.method private isEnableQuickNoti(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "new_likes"

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SocialPushListener"

    const-string/jumbo v2, "isEnableQuickNoti() KEY_LIKES notification setting is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "new_comments"

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SocialPushListener"

    const-string/jumbo v2, "isEnableQuickNoti() KEY_COMMENTS notification setting is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCommentByOther(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SocialPushListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : updateCommentByOther() commentId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", commentText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateServerComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V
    .locals 0

    return-void
.end method

.method public onReceivePushMessage(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;)V
    .locals 9

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->group_id:Ljava/lang/String;

    const-string/jumbo v6, "SocialPushListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : onReceivePushMessage groupId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SocialPushListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceivePushMessage : ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->article_id:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "article_id"

    invoke-static {v6, v7, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    const-string/jumbo v6, "SocialPushListener"

    const-string/jumbo v7, "There is no matched file."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->from:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SocialPushListener"

    const-string/jumbo v7, "SOCIAL_STORY : onReceivePushMessage - my social action. so skip"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "SocialPushListener"

    const-string/jumbo v7, "onStartCommand. PERMISSION_DENIED "

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getInstance()Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v7}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->show_permission_notification(Landroid/content/Context;Landroid/app/NotificationManager;[Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;->createQuickNotiAndUpdateNotificationView(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
