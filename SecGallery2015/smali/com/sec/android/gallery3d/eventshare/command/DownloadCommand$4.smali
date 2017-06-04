.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNotificationOnNotificationView(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;II)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSyncTime:J
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$500(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)I

    move-result v8

    move v2, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryInterface;->createFileDownloadNoti(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)I

    return-void
.end method

.method private createNotificationOnQuickPanel(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;II)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$600(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;->SHARE_NEW_CONTENTS:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v5, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifySocialInfo(Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager$SocialPushType;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getSenderInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderDuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    const-string/jumbo v2, "DownloadCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : getSenderInfo - fileOwner senderName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", senderNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string/jumbo v2, "+"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iput-boolean v5, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsGifDownload:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setIsGifDownload(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v6, v6, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->excute()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v6, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "DownloadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : onDownloadCompleted mIsRequestNoti = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-boolean v6, v6, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsRequestNoti:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mSenderFileCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I
    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mLatestFileThumbPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mLatestFileThumbPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$300(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mIsRequestNoti:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSenderFileCount:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mLatestFileThumbPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$300(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "_data"

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mLatestFileThumbPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$300(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "new_posts"

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;->getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    :goto_0
    const-string/jumbo v4, "DownloadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : onDownloadCompleted noti id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->getSenderInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->createNotificationOnNotificationView(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;II)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->createNotificationOnQuickPanel(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;II)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$4;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
