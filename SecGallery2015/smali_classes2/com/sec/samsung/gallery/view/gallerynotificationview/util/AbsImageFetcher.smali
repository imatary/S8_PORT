.class abstract Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;
.super Ljava/lang/Object;
.source "AbsImageFetcher.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field mLoadingBitmap:Landroid/graphics/Bitmap;

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected abstract cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
.end method

.method getBitmapWorkerTask(Landroid/widget/ImageView;)Landroid/os/AsyncTask;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;->getBitmapWorkerTask()Landroid/os/AsyncTask;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hideErrorIcon(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public abstract initBitmaps()V
.end method

.method showErrorIcon(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    const v0, 0x7f0201ef

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
