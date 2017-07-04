.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlComposeObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
    }
.end annotation


# static fields
.field private static final DEF_DIM_DURATION:I = 0x1f4

.field static final OPT_NOT_TOUCHABLE:I = 0x1


# instance fields
.field private mAlbumTitleHeight:I

.field private mAlbumTitleText:Ljava/lang/String;

.field private mAlbumTitleTextWidth:I

.field private mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

.field private mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

.field private mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

.field private final mDimDuration:I

.field private mExpandedAlbumTitle:Z

.field private mFocusBorderVisible:Z

.field private mFocusForLogical:Z

.field mFocused:Z

.field private mHndDim:I

.field private mHndDispMode:I

.field mHndDispmnt:I

.field mIndex:I

.field private mIsAlbumTitleTextLengthOver:Z

.field mIsBroken:Z

.field public mObjective:I

.field private mPosAnimDisplacement:Z

.field private mRippleHMargin:F

.field private mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

.field private mRippleWMargin:F

.field mRotation:I

.field mSAlpha:F

.field private mSrcBottom:F

.field private mSrcH:F

.field private mSrcLeft:F

.field private mSrcMixRatio:F

.field private mSrcRight:F

.field mSrcRoll:F

.field mSrcScale:F

.field private mSrcTop:F

.field private mSrcW:F

.field mTAlpha:F

.field private mTgtBottom:F

.field private mTgtH:F

.field private mTgtLeft:F

.field private mTgtMixRatio:F

.field private mTgtRight:F

.field mTgtRoll:F

.field mTgtScale:F

.field private mTgtTop:F

.field private mTgtW:F

.field private mThumbFocusScale:F

.field private mThumbPressScale:F

.field final mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

.field private mTransformAnimAlpha:Z

.field private mTransformAnimCanvasMix:Z

.field private mTransformAnimPos:Z

.field private mTransformAnimResizing:Z

.field private mTransformAnimRoll:Z

.field private mTransformAnimScaling:Z

.field private mTransformAnimTexCoord:Z

.field private mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

.field private mUseCircle:Z

.field mUseOwnThumbTouchAnim:Z

.field mUseParentThumbTouchAnim:Z

.field private mUseTouchEvent:Z

.field private mUseTouchRippleEffect:Z

.field msx:F

.field msy:F

.field msz:F

.field mtx:F

.field mty:F

.field mtz:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispmnt:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbPressScale:F

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbFocusScale:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusBorderVisible:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimDuration:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocused:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseOwnThumbTouchAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseCircle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsBroken:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusForLogical:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mExpandedAlbumTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsAlbumTitleTextLengthOver:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispmnt:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbPressScale:F

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbFocusScale:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusBorderVisible:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimDuration:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocused:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseOwnThumbTouchAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseCircle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsBroken:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusForLogical:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mExpandedAlbumTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsAlbumTitleTextLengthOver:Z

    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispmnt:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbPressScale:F

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbFocusScale:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusBorderVisible:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimDuration:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocused:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseOwnThumbTouchAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseCircle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsBroken:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusForLogical:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mExpandedAlbumTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsAlbumTitleTextLengthOver:Z

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDim(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcW:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtW:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcH:F

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtH:F

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvasMixRatio(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDimEx(F)V

    return-void
.end method

.method private initTouchRippleObject()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseCircle:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;IZ)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleWMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleHMargin:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setSize(FF)V

    return-void
.end method

.method private setDimEx(F)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDimHnd()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDim(FI)V

    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    :cond_0
    return-void
.end method

.method public dim()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->start()V

    return-void
.end method

.method drawBorder(Z)V
    .locals 0

    return-void
.end method

.method public findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAllChildObject()[Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    aget-object v0, v3, v2

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAlbumTitleHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleHeight:I

    return v0
.end method

.method public getAlbumTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitleTextWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleTextWidth:I

    return v0
.end method

.method public getExpandedAlbumTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mExpandedAlbumTitle:Z

    return v0
.end method

.method public getFocusBorderVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusBorderVisible:Z

    return v0
.end method

.method public getFocusForLogical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusForLogical:Z

    return v0
.end method

.method getTransAnim()Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    return-object v0
.end method

.method initTouchAnimation()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbPressScale:F

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbFocusScale:F

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method public isAlbumTitleTextLengthOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsAlbumTitleTextLengthOver:Z

    return v0
.end method

.method isInclude(FF)Z
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v5

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v7

    div-float v8, v5, v9

    sub-float v3, v7, v8

    add-float v0, v3, v5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v7

    div-float v8, v2, v9

    add-float v4, v7, v8

    sub-float v1, v4, v2

    cmpg-float v7, v3, p1

    if-gtz v7, :cond_0

    cmpg-float v7, p1, v0

    if-gtz v7, :cond_0

    cmpl-float v7, v4, p2

    if-ltz v7, :cond_0

    cmpl-float v7, p2, v1

    if-ltz v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method moveLeft()V
    .locals 0

    return-void
.end method

.method moveRight()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->onDestroy()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->isManualRecycle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-void
.end method

.method protected onMoved(II)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchRippleObject()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->moved(II)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-gt v0, v1, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->sThresholdDistance:I

    if-le v0, v1, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    goto :goto_1
.end method

.method protected onPressed(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchRippleObject()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v0, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->pressed(II)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    goto :goto_1
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchRippleObject()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->released()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    goto :goto_1
.end method

.method public resetDim()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDim(I)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDimEx(F)V

    goto :goto_0
.end method

.method public resetTransformAnimation()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    return-void
.end method

.method public setAlbumTitleHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleHeight:I

    return-void
.end method

.method public setAlbumTitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleText:Ljava/lang/String;

    return-void
.end method

.method public setAlbumTitleTextLengthOver(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIsAlbumTitleTextLengthOver:Z

    return-void
.end method

.method public setAlbumTitleTextWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAlbumTitleTextWidth:I

    return-void
.end method

.method public setCurrentPosToSource()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    return-void
.end method

.method public setEnableAlphaAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    return-void
.end method

.method public setEnableAnim(ZZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimAlpha:Z

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    return-void
.end method

.method setEnableCanvasMixAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimCanvasMix:Z

    return-void
.end method

.method public setEnablePosAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimPos:Z

    return-void
.end method

.method public setEnableResizeAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimResizing:Z

    return-void
.end method

.method public setEnableRollAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimRoll:Z

    return-void
.end method

.method public setEnableScaleAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimScaling:Z

    return-void
.end method

.method public setEnableTexCoordAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransformAnimTexCoord:Z

    return-void
.end method

.method public setExpandedAlbumTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mExpandedAlbumTitle:Z

    return-void
.end method

.method public setFocusBorderVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusBorderVisible:Z

    return-void
.end method

.method public setFocusForLogical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocusForLogical:Z

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocused:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mFocused:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchAnimation()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    goto :goto_0
.end method

.method public setObjective(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    return-void
.end method

.method setPosAnimMode(Z)V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mPosAnimDisplacement:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->releasePosIndex(I)V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDispMode:I

    goto :goto_0
.end method

.method public setRippleFocusVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchRippleObject()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setAlpha(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setAlpha(F)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleWMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleHMargin:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setSourceAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    return-void
.end method

.method setSourceMixRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcMixRatio:F

    return-void
.end method

.method public setSourcePos(FFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSupportRtl:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    neg-float p1, p1

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    return-void
.end method

.method public setSourceScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    return-void
.end method

.method public setSourceSize(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcW:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcH:F

    return-void
.end method

.method public setSourceTexCoords(FFFF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcLeft:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcTop:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRight:F

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcBottom:F

    return-void
.end method

.method public setTargetAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    return-void
.end method

.method setTargetMixRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtMixRatio:F

    return-void
.end method

.method public setTargetPos(FFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSupportRtl:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    neg-float p1, p1

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtx:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mty:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtz:F

    return-void
.end method

.method public setTargetScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    return-void
.end method

.method public setTargetSize(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtW:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtH:F

    return-void
.end method

.method public setTargetTexCoords(FFFF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtLeft:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtTop:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRight:F

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtBottom:F

    return-void
.end method

.method setThumbFocusScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbFocusScale:F

    return-void
.end method

.method public setThumbPressScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mThumbPressScale:F

    return-void
.end method

.method public setUseTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    return-void
.end method

.method public setUseTouchRippleEvent(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(ZFFZ)V

    return-void
.end method

.method public setUseTouchRippleEvent(ZFFZ)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchRippleEffect:Z

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseTouchEvent:Z

    mul-float v0, p2, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleWMargin:F

    mul-float v0, p3, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRippleHMargin:F

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseCircle:Z

    return-void
.end method

.method setUseTouchRippleEventForTipCard(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(ZFFZ)V

    return-void
.end method

.method startCheckVIAnim(Z[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-direct {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;-><init>([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->startCheckVIAnimation(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->getCanCheckedList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->setCanCheckedList([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_0
.end method

.method public startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->startAfter(J)V

    return-void
.end method

.method stopCheckVIAnim()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCheckVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->stop()V

    goto :goto_0
.end method

.method public stopDim()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$DimAnimation;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->stop()V

    :cond_1
    return-void
.end method

.method stopTransAnim(Z)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->stop()V

    goto :goto_0
.end method

.method public touch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->initTouchAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    return-void
.end method

.method public unDim()V
    .locals 4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHndDim:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDim(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUnDimAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$UnDimAnimation;->start()V

    goto :goto_0
.end method

.method public updateCanvas(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlCanvasSub:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_0
.end method

.method public updateChannelViewHLPlayIcon(II)V
    .locals 0

    return-void
.end method
