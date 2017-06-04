.class final Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;
.super Ljava/lang/Object;
.source "EventShareAgentHelper.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteMemberFromAllGroupWithSuccession(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "EventShareAgentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->revertSharedChannels(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsUserBelongsResponse;->getGroups()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getStatus()I

    move-result v4

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v2, v5, v8}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->ownerLeaveGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$5;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v2, v5, v8}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
