.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;
.super Ljava/lang/Object;
.source "ChannelGroupPushReader.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "ChannelGroupPushReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GroupUpdatedCodeReader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v0, "ChannelGroupPushReader"

    const-string/jumbo v1, "GroupUpdatedCodeReader onSuccess"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$700(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)I

    move-result v1

    const-string/jumbo v2, "owner"

    const/4 v5, 0x1

    invoke-static {v0, v1, v2, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->getGroupName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$800(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$700(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)I

    move-result v1

    const-string/jumbo v2, "title"

    invoke-static {v0, v1, v2, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelStringColumn(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$700(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$900(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ChannelGroupPushReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GroupUpdatedCodeReader onSuccess : shared story name is changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader$1;->this$1:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;->access$800(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupUpdatedCodeReader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
