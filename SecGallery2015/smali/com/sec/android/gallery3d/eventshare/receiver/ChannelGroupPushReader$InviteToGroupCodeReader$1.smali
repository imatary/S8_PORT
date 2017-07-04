.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;
.super Ljava/lang/Object;
.source "ChannelGroupPushReader.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf58f7c9a97c18f6L


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

.field final synthetic val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "ChannelGroupPushReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnContactSyncListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V
    .locals 17

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "ChannelGroupPushReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    const-string/jumbo v1, "ChannelGroupPushReader"

    const-string/jumbo v2, "There was already a channel id"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    array-length v1, v14

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    aget-object v5, v14, v1

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    move/from16 v0, v16

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getGroupName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    :goto_1
    const/4 v11, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object v11, v5

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "owner"

    const/4 v3, 0x2

    invoke-static {v1, v7, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v5, v3, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "story_invitation"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v13

    :goto_2
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getGroupName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getRequesterId()Ljava/lang/String;

    move-result-object v10

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyChoice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    :cond_9
    const-string/jumbo v1, "ChannelGroupPushReader"

    const-string/jumbo v2, "OnContactSyncListener onSuccess"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->val$message:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getGroupName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$InviteToGroupCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "event_share_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    goto/16 :goto_2
.end method
