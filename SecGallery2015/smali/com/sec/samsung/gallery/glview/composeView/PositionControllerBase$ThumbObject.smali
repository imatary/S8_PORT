.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbObject"
.end annotation


# instance fields
.field final SPLIT_COLUMN_COUNT_4:I

.field final SPLIT_COLUMN_COUNT_5:I

.field mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mBorderView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mBucketId:I

.field private mCheckAnimAvailable:Z

.field mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mDateTakenInMs:J

.field mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mDimState:Z

.field mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mId:I

.field private mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mReorderEnable:Z

.field mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mSelectEnable:Z

.field mSelectState:Z

.field mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

.field private mStrokeView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mTitleVisible:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimState:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTitleVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderEnable:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectEnable:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBorderView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mStrokeView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckAnimAvailable:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->SPLIT_COLUMN_COUNT_5:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->SPLIT_COLUMN_COUNT_4:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setReuseObj(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setObjective(I)V

    invoke-virtual {p1, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->NEED_DIM_EFFECT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isCheckboxAndExpansionVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setBorderObjectVisibility(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->updateDecorState()V

    return-void
.end method

.method private getExceptViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBorderView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBorderView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mStrokeView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mStrokeView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private isCheckboxAndExpansionVisible()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    if-nez v3, :cond_2

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsUncheckedBoxAlwaysVisible:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3100()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v4

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    return v4

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-le v3, v2, :cond_6

    move v3, v4

    :goto_3
    move v4, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    add-int/lit8 v2, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3
.end method

.method private setBorderObjectVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_1
    return-void
.end method

.method private updateDecorState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method


# virtual methods
.method getCheckAnimAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckAnimAvailable:Z

    return v0
.end method

.method public getDecorCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isPlusIconAlbum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mWidth:F

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mHeight:F

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->USE_GRACE_DECOR:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCardTypeView:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    const/high16 v1, 0x3fa00000    # 1.25f

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    return v0
.end method

.method setCheckAnimAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckAnimAvailable:Z

    return-void
.end method

.method setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isOnScaling()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isShrinkAnimActive()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isPlusIconAlbum(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mHideIconMinLevel:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCardTypeView:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->setChildVisibility(I)V

    :cond_3
    invoke-virtual {p0, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getDecorCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setViewSub(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto :goto_0

    :cond_5
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mPlayIconView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBorderView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v6, 0x12

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mStrokeView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    const/16 v6, 0x18

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getExceptViews()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-ne v6, v8, :cond_7

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->IsTablet:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2400()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v8, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setChildVisibility(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    :goto_2
    const/16 v6, 0xb

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-nez v6, :cond_8

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDecorAlwaysVisible:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_8
    invoke-virtual {p0, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v2, :cond_9

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    :cond_9
    if-eqz v4, :cond_4

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-ne v6, v8, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v6, :cond_d

    if-eqz v2, :cond_b

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    :cond_c
    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    :cond_e
    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p1, v8, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->setChildVisibility(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    goto/16 :goto_1

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setViewSub(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iput-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_0
.end method

.method setDecorVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvasSubVisiblity(ZI)V

    return-void
.end method

.method setDimState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimState:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimState:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimState:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDim(F)V

    goto :goto_0
.end method

.method public setMovingTexCoords(FI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMovingTexCoords(FI)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMovingTexCoords(FI)V

    goto :goto_0
.end method

.method setSelected(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createCanvasExp()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createCanvasReorderIcon()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_5
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getCheckAnimAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getDimCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isCheckboxAndExpansionVisible()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getCheckAnimAvailable()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_2
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getRemoveDimCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->stopCheckVIAnim()V

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getUnCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0
.end method

.method public setStroke(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->FeatureIsFolderModel:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isEnabledResStroke()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeWidth:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mThumbStrokeColor:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setBorderColor(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
