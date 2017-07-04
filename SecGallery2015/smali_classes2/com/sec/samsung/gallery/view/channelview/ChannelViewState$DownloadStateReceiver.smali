.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStateReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadStateReceiver"


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    const-string/jumbo v11, "RESPONSE_DATA"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v11, "DownloadStateReceiver"

    const-string/jumbo v12, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_UPLOAD_STARTED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v11, "DownloadStateReceiver"

    const-string/jumbo v12, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_UPLOAD_ENDED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SHARE_EVENT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11, v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v11, "SHARE_EVENT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    const-string/jumbo v12, "ugci"

    invoke-static {v11, v5, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "SHARE_EVENT_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11, v10, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    :cond_2
    const-string/jumbo v11, "DownloadStateReceiver"

    const-string/jumbo v12, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_COMPLETE_CREATE_NEW_EVENT"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string/jumbo v11, "DownloadStateReceiver"

    const-string/jumbo v12, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_SUCCESS_TOKEN"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SHARE_EVENT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v1

    const-string/jumbo v11, "DownloadStateReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ablumCount : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    const-string/jumbo v11, "DownloadStateReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "albumIndex : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v11

    if-ne v11, v5, :cond_3

    const-string/jumbo v11, "DownloadStateReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "eventID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-static {v11, v5, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_3

    const-string/jumbo v11, "DownloadStateReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startChannelPhotoView ! channelInfo (s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",c"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setChannelType(I)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v12, 0x1

    invoke-static {v11, v2, v12}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IZ)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :pswitch_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f0a017e

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const v14, 0x7f0a017f

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v11, "SHARE_EVENT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11, v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$16100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v11, "SHARE_EVENT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v11

    if-ne v11, v5, :cond_4

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v11, v6, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-virtual {v11, v2, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$17700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
