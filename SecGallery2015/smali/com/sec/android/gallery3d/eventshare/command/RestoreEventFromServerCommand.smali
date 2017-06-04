.class public Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;
.super Ljava/lang/Object;
.source "RestoreEventFromServerCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final ACCEPTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestoreEventFromServerCommand"

.field private static final WAIT_FOR_ACCEPT:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getGroupsByUserIdForRestore(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "RestoreEventFromServerCommand"

    const-string/jumbo v1, "RestoreEventFromServerCommand onError : "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;)V
    .locals 14

    const-string/jumbo v0, "RestoreEventFromServerCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RestoreEventFromServerCommand onSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restore_from_server"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getStatus()I

    move-result v10

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    const/4 v0, 0x2

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getGroupName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "is_shared"

    const/4 v2, 0x1

    invoke-static {v0, v9, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "is_visible"

    const/4 v2, 0x1

    invoke-static {v0, v9, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v11, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getGroupMembers(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;)V

    new-instance v7, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v6, v1, v2}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSyncEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getGroupName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "owner"

    const/4 v2, 0x2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RestoreEventFromServerCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_1
.end method
