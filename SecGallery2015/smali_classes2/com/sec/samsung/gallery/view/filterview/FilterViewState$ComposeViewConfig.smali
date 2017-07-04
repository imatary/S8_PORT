.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "FilterViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mHideIconMinLevel:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMinLevel:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMaxLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mIsAlbumView:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mIsCardTypeView:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mIsCategoryView:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v1, v0, v2

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    iput v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mTypeViewSwitchAnim:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseChannelNoti:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->setInitialLevel(ZI)V

    return-void
.end method

.method private setInitialLevel(ZI)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mInitialLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMaxLevel:I

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMinLevel:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMaxLevel:I

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mUseLayoutChange:Z

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mInitialLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMinLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
