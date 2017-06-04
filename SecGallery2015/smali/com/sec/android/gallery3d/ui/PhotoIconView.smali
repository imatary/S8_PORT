.class public Lcom/sec/android/gallery3d/ui/PhotoIconView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "PhotoIconView.java"


# static fields
.field private static final FeatureUsePhotoIconWithoutBorder:Z

.field static final KEY_BURSTSHOT_COUNT:Ljava/lang/String; = "burstshot_count"

.field private static final TAG:Ljava/lang/String; = "PhotoIconView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedIndex:I

.field private mHoverPopUpView:Landroid/view/View;

.field private mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

.field private mIsFlippedImage:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

.field private final mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

.field private final mScreenRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePhotoIconWithoutBorder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->FeatureUsePhotoIconWithoutBorder:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->initClass()V

    return-void
.end method

.method private addPopUp(Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040043

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    const v4, 0x7f1200b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v3, v5, v5}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x7f0c0080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    goto :goto_0
.end method

.method private removePopUp()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    return-void
.end method

.method private showAccessibilityFocus(ZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isShowAccessibilityFocus()Z

    move-result v0

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mFocusedIndex:I

    if-eq v0, p2, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->sendAccessibilityEventForVirtualView(Z)V

    :goto_1
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->showAccessibilityFocus(Z)V

    :goto_2
    iput p2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->showAccessibilityFocus(Z)V

    goto :goto_2
.end method

.method private showAccessibilityFocus(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZIZ)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/playicon/BrokenImageIcon;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/playicon/BrokenVideoIcon;

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconMore()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    instance-of v1, v1, Lcom/sec/android/gallery3d/ui/playicon/VideoPlayIcon;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0419

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->addPopUp(Ljava/lang/String;II)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToMoreIcon(Landroid/content/Context;Landroid/view/View;)V

    move v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    instance-of v1, v1, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0464

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->removePopUp()V

    goto/16 :goto_0
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0
.end method

.method getMeasuredRect()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public isSupportUPSMImage()Z
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method layout(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/GLView;->layout(IIII)V

    return-void
.end method

.method public onClickIcon(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->insertSAEventLog()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIsFlippedImage:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setIcon(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->FeatureUsePhotoIconWithoutBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setIcon(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method onFocusChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setFocused(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0
.end method

.method public onGenericMotion(Landroid/view/MotionEvent;)Z
    .locals 13

    const v12, 0x7f0a0405

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v10, 0x3eb

    if-ne v7, v10, :cond_0

    move v3, v8

    :goto_0
    if-ne v1, v11, :cond_1

    if-ne v2, v11, :cond_1

    invoke-direct {p0, v9, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    move v7, v8

    :goto_1
    return v7

    :cond_0
    move v3, v9

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-nez v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    instance-of v7, v7, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    check-cast v7, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;

    invoke-virtual {v7, p1}, Lcom/sec/android/gallery3d/ui/playicon/UnlockIcon;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v9, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    move v7, v8

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isShowAccessibilityFocus()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v10, 0x3ea

    if-ne v7, v10, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_6
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAlignType()I

    move-result v7

    if-eq v7, v8, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v7

    sget-object v9, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v7, v9, :cond_7

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    invoke-direct {p0, v8, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    :cond_8
    :goto_2
    move v7, v8

    goto/16 :goto_1

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0a0423

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v6, v7, :cond_a

    invoke-direct {p0, v8, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    move v7, v8

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v6, v7, :cond_b

    sget-object v7, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v6, v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0a0445

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_c
    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    invoke-direct {p0, v8, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_2

    :cond_d
    invoke-direct {p0, v9, v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    move v7, v9

    goto/16 :goto_1
.end method

.method public onGenericMotionCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->showAccessibilityFocus(ZZ)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;->onClick()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setMeasuredSize(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setPhotoIconView(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->layout(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setMeasuredSize(II)V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setDownOnButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isDownOnButton()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;->onClick()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setDownOnButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isDownOnButton()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setDownOnButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->isDownOnButton()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setDownOnButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getAlignType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->removePopUp()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->getIconType()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->initialize()V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setFocused(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/playicon/IconType;->getIconClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIcon:Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;

    new-instance v3, Lcom/sec/android/gallery3d/ui/PhotoIconView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView$1;-><init>(Lcom/sec/android/gallery3d/ui/PhotoIconView;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->setUpdateListener(Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon$UpdateListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "PhotoIconView"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->invalidate()V

    throw v2
.end method

.method public setFlippedImage(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mIsFlippedImage:Z

    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    return-void
.end method
