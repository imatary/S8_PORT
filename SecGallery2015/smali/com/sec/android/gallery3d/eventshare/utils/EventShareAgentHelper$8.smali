.class final Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;
.super Ljava/lang/Object;
.source "EventShareAgentHelper.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->restoreInviteEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "EventShareAgentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreInviteEvent onError : ("

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

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const-string/jumbo v0, "EventShareAgentHelper"

    const-string/jumbo v1, "restoreInviteEvent onSuccess : "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getStatus()I

    move-result v9

    if-ne v9, v12, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNumberwithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getGroupName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createEmptyChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "owner"

    invoke-static {v0, v6, v1, v13}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$8;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v12, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContactItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
