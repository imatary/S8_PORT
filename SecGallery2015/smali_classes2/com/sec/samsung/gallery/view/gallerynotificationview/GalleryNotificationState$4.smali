.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;
.super Landroid/content/BroadcastReceiver;
.source "GalleryNotificationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->resetBadgeCount()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->updateBadge(I)V

    return-void
.end method
