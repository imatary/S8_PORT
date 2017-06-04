.class Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;
.super Ljava/lang/Object;
.source "GlDeleteAnimation.java"


# static fields
.field private static final DELETE_ANIM_FADE:I = 0x2

.field private static final DELETE_ANIM_IDLE:I = 0x0

.field private static final DELETE_ANIM_PREPARED:I = 0x1

.field private static final DELETE_ANIM_TRANS:I = 0x3

.field private static final DEL_FROM_ALPHA:F = 1.0f

.field private static final DEL_FROM_SCALE:F = 1.0f

.field private static final DEL_TO_ALPHA:F = 0.0f

.field private static final DEL_TO_SCALE:F = 0.8f

.field private static final FADE_ANIM_TIME:I = 0x10e

.field private static final FEATURE_USE_MORE_ALBUM:Z

.field private static final TAG:Ljava/lang/String; = "GlDeleteAnimation"

.field private static final TRANS_ANIM_TIME:I = 0x1f4

.field private static final WIPE_INOUT_DISTANCE:I = 0x1f4


# instance fields
.field private final isColorDebugMode:Z

.field private isGroupAnim:Z

.field private mActiveGrps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveObjs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mCurrentAnimStatus:I

.field private final mDeleteFadeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mDeletedGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private mInActiveGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private mInActiveObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAlbumAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

.field private mMoreAlbumGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrevActiveGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrevActiveObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransOutGrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransOutObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->FEATURE_USE_MORE_ALBUM:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isGroupAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isColorDebugMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteFadeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->startTransAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    return-object v0
.end method

.method private checkDeleted(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "checkDeleted mCover is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setCurrentPosToSource()V

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsX()F

    move-result v0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_2
    if-nez v8, :cond_4

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAnim(ZZZZZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mSAlpha:F

    const/4 v0, 0x0

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mSrcScale:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTgtScale:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setCurrentPosToSource()V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/16 v10, -0x1f4

    :goto_2
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsX()F

    move-result v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v1

    int-to-float v2, v10

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v10, 0x1f4

    goto :goto_2
.end method

.method private checkDeleted(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget v1, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCurrentPosToSource()V

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v1

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_0
    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GlDeleteAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableAnim(ZZZZZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSAlpha:F

    const/4 v0, 0x0

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSrcScale:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTgtScale:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCurrentPosToSource()V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const/16 v10, -0x1f4

    :goto_2
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v1

    int-to-float v2, v10

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/16 v10, 0x1f4

    goto :goto_2
.end method

.method private checkNew(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v1, :cond_1

    const-string/jumbo v1, "GlDeleteAnimation"

    const-string/jumbo v2, "checkNew ao.mCover is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v1, :cond_2

    const-string/jumbo v1, "GlDeleteAnimation"

    const-string/jumbo v3, "checkNew o.mCover is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_4

    iget-object v1, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v1, v3, :cond_4

    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsX()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_5

    const/16 v1, 0x1f4

    :goto_2
    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsZ()F

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPos(FFF)V

    new-instance v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v9, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v1, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setCurrentPosToSource()V

    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setEnableAnim(ZZZZZ)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsX()F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    const/16 v1, -0x1f4

    goto :goto_2
.end method

.method private checkNew(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 13

    const/high16 v12, 0x43fa0000    # 500.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v3, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    if-ne v3, v4, :cond_2

    const/4 v7, 0x1

    :cond_0
    if-nez v7, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v3

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getHeight(Z)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :goto_1
    iget-wide v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDateTakenInMs:J

    iget-wide v10, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDateTakenInMs:J

    cmp-long v3, v4, v10

    if-gtz v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v4

    sub-float/2addr v4, v12

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setPos(FFF)V

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCurrentPosToSource()V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableAnim(ZZZZZ)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v4

    add-float/2addr v4, v12

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setPos(FFF)V

    goto :goto_2
.end method

.method private getActiveGroup()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation

    sget-boolean v4, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isShowMoreAlbum()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v5

    if-gt v4, v5, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->setMoreAlbumGroup(I)V

    sub-int v4, v3, v2

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->removeAtRange(II)V

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v4

    goto :goto_1
.end method

.method private isShowMoreAlbum()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePrev()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAlpha(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->remove()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    return-void
.end method

.method private removePrevGrp()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsBroken:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIsBroken:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->remove()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    return-void
.end method

.method private setMoreAlbumGroup(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    move v2, p1

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumGrps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startTransAlphaAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FFLcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    invoke-virtual {p1, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    const/4 v3, 0x1

    move-object v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method

.method private startTransAnimation()V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isGroupAnim:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "start trans animation canceled because size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    if-nez v8, :cond_1

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    if-nez v8, :cond_3

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_d

    if-nez v8, :cond_5

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "start group trans animation canceled because size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    :cond_7
    const/4 v7, 0x0

    :goto_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_9

    if-nez v8, :cond_8

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_b

    if-nez v8, :cond_a

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_d

    if-nez v8, :cond_c

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteTransAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_b

    :cond_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v0

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->startTransAlphaAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FFLcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_e
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-direct {p0, v0, v10, v11, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->startTransAlphaAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FFLcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_f
    if-eqz v8, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    :cond_10
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "cancelAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isGroupAnim:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->removePrevGrp()V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setDeleteMode(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->removePrev()V

    goto :goto_0
.end method

.method public copyCurrentActive(Z)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v7, "GlDeleteAnimation"

    const-string/jumbo v8, "Copy Current Active Thumbs"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isGroupAnim:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v7, :cond_1

    const-string/jumbo v7, "GlDeleteAnimation"

    const-string/jumbo v8, "Copy Current Active Thumbs failed because mComposeView is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v7, :cond_2

    const-string/jumbo v7, "GlDeleteAnimation"

    const-string/jumbo v8, "Copy Current Active Thumbs failed because mPosCtrl is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getInactiveObject()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_d

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v5, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v7, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v7

    invoke-virtual {v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getHeight(Z)F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v7

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v8

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setPos(FFF)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    iget-boolean v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iput-boolean v7, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v1, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getInactiveGroup()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_d

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v6, :cond_b

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v1, :cond_a

    const-string/jumbo v7, "GlDeleteAnimation"

    const-string/jumbo v8, "copy current cover is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-direct {v2, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsX()F

    move-result v7

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCy:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getAbsZ()F

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPos(FFF)V

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v5, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(F)F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundedOption(IF)V

    iput-boolean v12, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTitleVisible:Z

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v7, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    iput-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setAlpha(F)V

    :cond_e
    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v11, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->startTransAlphaAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FFLcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    goto/16 :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 14

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "Start Delete Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "Start delete animation failed because mComposeView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_2

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "Start delete animation failed because mPosCtrl is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isGroupAnim:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getInactiveObject()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveObjs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "mPreActiveObjs size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-direct {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->checkDeleted(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveObjs:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->checkNew(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "GlDeleteAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPrev/mDeleted/mTrans/mTransOut/mNew : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    if-nez v10, :cond_9

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteFadeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x10e

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v1, 0x0

    const-wide/16 v2, 0x10e

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getInactiveGroup()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mInActiveGrps:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "mPreActiveGrps size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v13, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->checkDeleted(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    :goto_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mActiveGrps:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v0, :cond_d

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "start anim coverObj is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->checkNew(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)V

    goto :goto_7

    :cond_e
    const-string/jumbo v0, "GlDeleteAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPrev/mDeleted/mTrans/mTransOut/mNew : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransOutGrps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mNewGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mTransGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mPrevActiveGrps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_11

    :cond_10
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mCurrentAnimStatus:I

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    if-nez v10, :cond_12

    const/4 v10, 0x1

    const-string/jumbo v0, "GlDeleteAnimation"

    const-string/jumbo v1, "start group fade animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeleteFadeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x10e

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->mDeletedGrps:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v1, 0x0

    const-wide/16 v2, 0x10e

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut33;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_9
.end method
