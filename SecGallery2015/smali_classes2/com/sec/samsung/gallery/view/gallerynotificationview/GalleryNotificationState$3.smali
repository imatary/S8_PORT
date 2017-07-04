.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;
.super Ljava/lang/Object;
.source "GalleryNotificationState.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->onResume()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insertSALog(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1072"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1073"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const-string/jumbo v0, "NotificationViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$102(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;I)I

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->insertSALog(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onPageSelected(I)V

    return-void
.end method
