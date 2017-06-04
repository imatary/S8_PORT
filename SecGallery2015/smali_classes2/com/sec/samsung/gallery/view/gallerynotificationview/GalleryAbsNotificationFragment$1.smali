.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GalleryAbsNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    const/4 v0, 0x2

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
