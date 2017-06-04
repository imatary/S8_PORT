.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "SearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    sget v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mEnlargeDuration:I

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mInitialLevel:I

    iput v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mMinLevel:I

    iput v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mMaxLevel:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mTopGroupSearchTitle:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mIsSearchView:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseQuickScroll:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseFastScrollPopup:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mRemoveFastScrollShadow:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseGoToTopButton:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-class v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v4, v1, v3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v3, v1, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public setInitialLevel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mInitialLevel:I

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mMinLevel:I

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mMaxLevel:I

    return-void
.end method
