.class public abstract Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "AbstractAlbumActionBarForSelection.java"


# static fields
.field private static final SWIPE_ANIMATION_DURATION:J = 0x1feL


# instance fields
.field private final mSwipeAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$2;-><init>(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mSwipeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->setCheckboxState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method


# virtual methods
.method protected startSwipeAnimation()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mSwipeAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x1fe

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mSelectionActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mSelectionActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method protected updateButton(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;-><init>(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
