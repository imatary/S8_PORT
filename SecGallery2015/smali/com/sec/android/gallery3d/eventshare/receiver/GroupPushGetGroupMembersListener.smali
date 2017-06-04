.class public Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;
.super Ljava/lang/Object;
.source "GroupPushGetGroupMembersListener.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupPushGetGMListener"


# instance fields
.field private mChannelId:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mChannelId:I

    iput p2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mChannelId:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createMemberJoinNotification(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "+"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v6, p3

    :cond_4
    const-string/jumbo v0, "GroupPushGetGMListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOCIAL_STORY : createMemberJoinNotifications joinedMemberName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", joinedMemberNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->JOIN_MEMBER:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mChannelId:I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifySocialInfo(Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    return-void
.end method

.method private createNewMembers(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->isMasterJoined(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->ACCEPTED:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getIsVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    long-to-int v6, v0

    const-string/jumbo v0, "GroupPushGetGMListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SOCIAL_STORY : createNewMembers() noti id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Z

    const-string/jumbo v0, "member_join"

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v6}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->createMemberJoinNotification(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private isMasterJoined(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getMasterInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GroupPushGetGMListener"

    const-string/jumbo v3, "SOCIAL_STORY : isMasterJoin() This member is master."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectMembersFromMemberResponse(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->getMembers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateOrDeleteOldMembers(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;

    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->isMasterJoined(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v5

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getIsVisible()Z

    move-result v7

    const-string/jumbo v2, "member_join"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v14, 0x3e8

    div-long/2addr v2, v14

    long-to-int v8, v2

    :goto_1
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelContactStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->WAIT_FOR_ACCEPTED:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->ordinal()I

    move-result v2

    if-ne v11, v2, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->ACCEPTED:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$CONTACT_TYPE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v7, 0x1

    :goto_2
    const-string/jumbo v2, "GroupPushGetGMListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOCIAL_STORY : updateOrDeleteOldMembers() noti id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v5

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v2 .. v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Z

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->createMemberJoinNotification(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getStatus()I

    move-result v5

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->getOptionalId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "GroupPushGetGMListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;)V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mChannelId:I

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v6, "GroupPushGetGMListener"

    const-string/jumbo v7, "onSuccess : channelInfo is null"

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "GroupPushGetGMListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SOCIAL_STORY : onSuccess storyName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GroupPushGetGMListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSuccess ( response ugci :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , channel ugci:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelContact(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v3, v5, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->selectMembersFromMemberResponse(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->updateOrDeleteOldMembers(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v5, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->createNewMembers(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v6

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;->mChannelId:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    goto/16 :goto_0
.end method
