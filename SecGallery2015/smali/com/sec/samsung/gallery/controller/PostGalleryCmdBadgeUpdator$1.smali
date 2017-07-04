.class Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;
.super Landroid/content/BroadcastReceiver;
.source "PostGalleryCmdBadgeUpdator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->registerDownloadStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateBadge()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->close()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$102(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    new-instance v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$000(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$102(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$BadgeUpdateThread;->start()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "RESPONSE_DATA"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->access$000(Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator$1;->updateBadge()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
