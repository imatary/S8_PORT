.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;
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
    name = "GroupDeletedCodeReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
    .locals 7

    const-string/jumbo v4, "ChannelGroupPushReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GroupDeletedCodeReader "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mPushTypeCodeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$500()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getShared()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$1000(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupDeletedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    :cond_1
    return-void
.end method
