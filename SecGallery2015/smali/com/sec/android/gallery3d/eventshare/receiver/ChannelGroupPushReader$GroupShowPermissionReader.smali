.class Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;
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
    name = "GroupShowPermissionReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V
    .locals 7

    const-string/jumbo v4, "ChannelGroupPushReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GroupShowPermissionReader "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ChannelGroupPushReader"

    const-string/jumbo v4, "onStartCommand. PERMISSION_DENIED "

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getRequesterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "need_to_restore_invite_push"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getInstance()Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$GroupShowPermissionReader;->this$0:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->access$600(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->show_permission_notification(Landroid/content/Context;Landroid/app/NotificationManager;[Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
