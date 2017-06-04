.class public Lcom/sec/android/gallery3d/interfaces/GalleryLibView;
.super Ljava/lang/Object;
.source "GalleryLibView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/LibraryView;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public getActionBarHeightPixel()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixelWithoutStatusBar()I

    move-result v0

    return v0
.end method

.method public getDetailViewIconLeftPaddingPixel(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewIconLeftPaddingPixel(I)I

    move-result v0

    return v0
.end method

.method public getDetailViewIconTopPaddingPixel(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewIconTopPaddingPixel(I)I

    move-result v0

    return v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method public isRTLMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    return v0
.end method

.method public sendAccessibilityEventForVirtualView(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz p1, :cond_0

    const v1, 0x8000

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(I)Z

    return-void

    :cond_0
    const/high16 v1, 0x10000

    goto :goto_0
.end method

.method public setDimension(FFII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    return-void
.end method

.method public setFocusedIndex(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->setFocusedIndex(I)V

    return-void
.end method

.method public updateMultiwindowSize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->updateMultiWindowSize()V

    return-void
.end method
