.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;
.super Landroid/os/Handler;
.source "GalleryContentNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "007"

    const-string/jumbo v1, "1092"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "007"

    const-string/jumbo v1, "1094"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Ljava/lang/Integer;I)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "007"

    const-string/jumbo v1, "1094"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "007"

    const-string/jumbo v1, "1094"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
