.class Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "AllViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllLayoutConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseEnlargeAnim:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mAlbumList:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mLandRatio:F

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mPortRatio:F

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mItemSizeScale:F

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mIsAllView:Z

    iput v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mInitialLevel:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMinLevel:I

    iput v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMaxLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mTopGroupTitle:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseGoToTopButton:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mUseQuickScroll:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v2

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v3

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v4

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mPosCtrl:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->setModeLevel(I)V

    return-void
.end method

.method private setModeLevel(I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMaxLevel:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mInitialLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->mMaxLevel:I

    goto :goto_0
.end method
