.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;
.super Ljava/lang/Object;
.source "ChannelGroupPushReader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemberUpdatedCodeReader"
.end annotation


# instance fields
.field private mChannelId:I

.field private mGroupID:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
    .locals 7

    const-string/jumbo v3, "ChannelGroupPushReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MemberUpdatedCodeReader "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$500()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mGroupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mGroupID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mGroupID:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v1

    const/16 v2, 0x11

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    const-string/jumbo v4, "is_shared"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mGroupID:Ljava/lang/String;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$MemberUpdatedCodeReader;->mChannelId:I

    invoke-direct {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/receiver/GroupPushGetGroupMembersListener;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getGroupMembers(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;)V

    goto :goto_0
.end method
