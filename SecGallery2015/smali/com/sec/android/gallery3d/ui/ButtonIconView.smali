.class public Lcom/sec/android/gallery3d/ui/ButtonIconView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "ButtonIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mDownOnButton:Z

.field private mFocusedIndex:I

.field private mHoverPopUpView:Landroid/view/View;

.field mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field mOffsetBottom:I

.field mOffsetLeft:I

.field mOffsetRight:I

.field mOffsetTop:I

.field private mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

.field private final mScreenRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetLeft:I

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetTop:I

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetRight:I

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetBottom:I

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mFocusedIndex:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mScreenRect:Landroid/graphics/Rect;

    return-void
.end method

.method private addPopUp(Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040043

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    const v4, 0x7f1200b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v3, v5, v5}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    invoke-direct {v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    :goto_0
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v3, 0x800033

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x8

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x7f0c0080

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    goto :goto_0
.end method

.method private showAccessibilityFocus(ZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->isShowAccessbilityFocus()Z

    move-result v0

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mFocusedIndex:I

    if-eq v0, p2, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->sendAccessibilityEventForVirtualView(Z)V

    :goto_1
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->showAccessbilityFocus(Z)V

    :goto_2
    iput p2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setFocusedIndex(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->showAccessbilityFocus(Z)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconMore()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconDefault()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->addPopUp(Ljava/lang/String;II)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToMoreIcon(Landroid/content/Context;Landroid/view/View;)V

    :goto_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v2, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mWindowManager:Landroid/view/WindowManager;

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public getMeasuredRect()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getOnClickListener()Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    return-object v0
.end method

.method public layout(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/GLView;->layout(IIII)V

    return-void
.end method

.method public onGenericMotion(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0x3eb

    if-ne v7, v8, :cond_1

    move v3, v5

    :goto_0
    if-ne v1, v9, :cond_2

    if-ne v2, v9, :cond_2

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZZ)V

    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->isShowAccessbilityFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0x3ea

    if-eq v6, v7, :cond_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0405

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getAccessibilityString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZZ)V

    goto :goto_1
.end method

.method public onGenericMotionCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->setMeasuredSize(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->layout(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->setMeasuredSize(II)V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;->onClick()V

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->invalidate()V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mDownOnButton:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->invalidate()V

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
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public setOffset(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetLeft:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetTop:I

    iput p3, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetRight:I

    iput p4, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOffsetBottom:I

    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/ButtonIconView;->mOnClickListener:Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;

    return-void
.end method

.method protected showAccessibilityFocus(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/gallery3d/ui/ButtonIconView;->showAccessibilityFocus(ZIZ)V

    return-void
.end method
