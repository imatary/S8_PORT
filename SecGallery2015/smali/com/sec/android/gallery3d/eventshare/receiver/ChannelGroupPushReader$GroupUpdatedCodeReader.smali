.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;
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
    name = "GroupUpdatedCodeReader"
.end annotation


# instance fields
.field private channelId:I

.field private groupID:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->channelId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->channelId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
    .locals 7

    const-string/jumbo v4, "ChannelGroupPushReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GroupUpdatedCodeReader "

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

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupID:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->channelId:I

    sget-boolean v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->channelId:I

    const-string/jumbo v5, "title"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupName:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->channelId:I

    const-string/jumbo v5, "is_shared"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->groupID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    # getter for: Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getGroupInfo(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;)V

    :cond_2
    return-void
.end method
