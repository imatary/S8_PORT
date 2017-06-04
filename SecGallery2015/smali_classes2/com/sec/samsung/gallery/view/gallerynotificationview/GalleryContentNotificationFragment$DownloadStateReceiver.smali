.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GalleryContentNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStateReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadStateReceiver"


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "RESPONSE_DATA"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "DownloadStateReceiver"

    const-string/jumbo v2, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_SUCCESS_TOKEN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SHARE_EVENT_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startSharedEventView(I)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a017e

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a017f

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0018

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$1300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method
