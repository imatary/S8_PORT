.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
.super Ljava/lang/Object;
.source "GLDecoration.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;
    }
.end annotation


# static fields
.field protected static final ANIM_NORMAL_TO_PERSP:I = 0x2

.field protected static final ANIM_PERSP_TO_NORMAL:I = 0x1

.field protected static final BYTES_PER_FLOAT:I = 0x4

.field public static final COVER_CIRCLE:I = 0x1

.field public static final COVER_SQUARE:I = 0x2

.field public static final COVER_TYPE_BLUR:I = 0x2

.field public static final COVER_TYPE_MOSAIC:I = 0x1

.field protected static final EXIT_PRESSED:I = 0x1

.field protected static final LEFT_RESIZE_PRESSED:I = 0x3

.field protected static final MIN_PERSP_DIST:F = 100.0f

.field public static MIN_SCALE_FACTOR:F = 0.0f

.field public static MIN_SCALE_FACTOR_LABEL:F = 0.0f

.field protected static final MOVING:I = 0x5

.field protected static final NONE:I = 0x0

.field protected static final PERSPECTIVE_PRESSED:I = 0x6

.field protected static final RIGHT_RESIZE_PRESSED:I = 0x4

.field protected static final ROTATE_PRESSED:I = 0x2

.field protected static final SINGLE_TAP_UP_DURATION:J = 0xc8L

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_PERSPECTIVE:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "PEDIT_GLDecoration"


# instance fields
.field protected MIN_SIZE:I

.field protected dx:F

.field protected dy:F

.field protected initCenterX:F

.field protected initCenterY:F

.field protected is360Sticker:Z

.field protected isAnimating:Z

.field protected isCoverSticker:Z

.field protected isPerspDragging:Z

.field protected mAlpha:F

.field protected mAngle:F

.field protected mBackgroundHeight:F

.field protected mBackgroundWidth:F

.field protected mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field protected mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field protected mCenterX:F

.field protected mCenterY:F

.field protected mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field protected mCoverShape:I

.field protected mCoverStrength:I

.field protected mCoverTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mCoverType:I

.field protected mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

.field protected mDrawPreview:Z

.field protected mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

.field protected mEditTextInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mGeometryUtils:Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mHeight:F

.field protected mHighPLineBuffer:Ljava/nio/FloatBuffer;

.field protected mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

.field public mIconSizeLarge:F

.field public mIconSizeSmall:F

.field protected mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLayerId:I

.field protected mLineBuffer:Ljava/nio/FloatBuffer;

.field protected mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

.field protected mLoaded:Z

.field protected mLogoBuffer:Ljava/nio/FloatBuffer;

.field protected mOriginalData:[I

.field protected mPerspHeight:F

.field protected mPerspWidth:F

.field protected mPerspectiveEnabled:Z

.field protected mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

.field protected mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

.field protected mPreviewBuffer:[I

.field protected mPreviewTextureId:I

.field protected mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field protected mResetCover:Z

.field protected mSaveData:[I

.field protected mSaveHeight:I

.field protected mSaveWidth:I

.field public mScreenHeight:I

.field protected mScreenRect:Landroid/graphics/RectF;

.field public mScreenWidth:I

.field protected mSelected:Z

.field protected mSelectedEditText:I

.field protected mSingleTapTouchDownStart:J

.field protected mState:I

.field protected mStickerType:I

.field protected mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field protected mTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mTextureCloseNormal:I

.field protected mTextureClosePressed:I

.field protected mTexturePerspNormal:I

.field protected mTexturePerspPressed:I

.field protected mTextureRemoveNormal:I

.field protected mTextureRemovePress:I

.field protected mTextureResizeNormal:I

.field protected mTextureResizePressed:I

.field protected mTextureRotateNormal:I

.field protected mTextureRotatePressed:I

.field protected mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field protected mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field protected mTouchMode:I

.field protected mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field protected mUseHighPBuffer:Z

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mWidth:F

.field public minimumDistanceBetweenBubbles:I

.field public p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field protected p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field public p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field protected p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field public p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field protected p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field public p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field protected p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field public p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

.field protected perspectiveTouchDownX:F

.field protected perspectiveTouchDownY:F

.field protected sTextureCoordinates:[F

.field protected tmpX:F

.field protected tmpY:F

.field protected touchDownX:F

.field protected touchDownY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3da3d70a    # 0.08f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR:F

    const v0, 0x3d4ccccd    # 0.05f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR_LABEL:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/RectF;)V
    .locals 7

    const v6, 0x7f0205c4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverShape:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLoaded:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDrawPreview:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->is360Sticker:Z

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAlpha:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPreviewTextureId:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRemoveNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRemovePress:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizeNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRotateNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRotatePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureCloseNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureClosePressed:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTexturePerspNormal:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTexturePerspPressed:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v2, 0x32

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mUseHighPBuffer:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mOriginalData:[I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->sTextureCoordinates:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080389

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080388

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getDisplayDensity(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SIZE:I

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    invoke-virtual {v2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->setPreviewRect(Landroid/graphics/RectF;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mGeometryUtils:Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPreviewImageWidth()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPreviewImageHeight()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    div-float v0, v2, v3

    const/high16 v1, 0x43160000    # 150.0f

    mul-float v2, v1, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspWidth:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspHeight:F

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setButtonVisibility(Z)V

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateHighLightBuffer()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x30

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    int-to-float v3, v3

    div-float v4, v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    int-to-float v3, v3

    div-float v5, v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    mul-float/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    mul-float/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v5, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v5, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    sub-float/2addr v3, v11

    mul-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v5, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v5, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    sub-float/2addr v3, v11

    mul-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    sub-float/2addr v3, v10

    mul-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v10, v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    sub-float/2addr v3, v10

    mul-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v10, v2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v6, v10

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v11

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v6

    add-double/2addr v2, v6

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v10

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v8, v3

    add-double/2addr v6, v8

    double-to-float v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextHighlightBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public applyTint(Landroid/graphics/Bitmap;I)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v9, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget v0, v1, v8

    and-int/2addr v0, p2

    aput v0, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {v0, p2, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public abstract clear()V
.end method

.method public disablePerspective()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    return-void
.end method

.method public distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v1, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v2, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v2, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v3, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)D
    .locals 8

    iget-wide v0, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v2, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v4, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public draw()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->getAnimValues()[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->getAnimId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateAnimationBuffer(I[F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->updateValues()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->drawNormal()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->drawPerspective()V

    goto :goto_0
.end method

.method public drawHighPBorders()V
    .locals 13

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v10

    iget v1, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const-string v1, "u_Matrix"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const-string v1, "u_Color"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "deltaX"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const-string v1, "deltaY"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    move v1, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v11, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x4

    const/16 v2, 0xc

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x4

    const/16 v2, 0x12

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract drawNormal()V
.end method

.method protected drawNormalBorder()V
    .locals 12

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v9

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mUseHighPBuffer:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->drawHighPBorders()V

    :goto_0
    iget v2, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "u_Matrix"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v10, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v2, "a_Position"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    monitor-enter p0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "a_TextureCoordinate"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "u_Sampler"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x0

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v3, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTexturePerspPressed:I

    :goto_1
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v3, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRotatePressed:I

    :goto_3
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/16 v3, 0xc

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v3, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizePressed:I

    :goto_4
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/16 v3, 0x12

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v10, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/16 v3, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRemovePress:I

    :goto_5
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/16 v3, 0x18

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :cond_0
    iget v2, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "a_Position"

    invoke-virtual {v8, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "u_Matrix"

    invoke-virtual {v8, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const-string v2, "u_Color"

    invoke-virtual {v8, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Landroid/opengl/GLES20;->glLineWidth(F)V

    monitor-enter p0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v10, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTexturePerspNormal:I

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizePressed:I

    :goto_6
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_2

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizeNormal:I

    goto :goto_6

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRotateNormal:I

    goto/16 :goto_3

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureResizeNormal:I

    goto/16 :goto_4

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTextureRemoveNormal:I

    goto :goto_5
.end method

.method public abstract drawPerspective()V
.end method

.method protected drawPerspectiveBorder()V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v7

    iget v1, v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "u_Matrix"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const-string v1, "u_Color"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v6

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    monitor-enter p0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v6, v9, v9, v9, v9}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v1

    invoke-static {v8, v11, v10, v1, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x3

    invoke-static {v1, v10, v13}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->GRID_ALPHA:F

    invoke-static {v6, v9, v9, v9, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    invoke-static {v11, v13, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v1, 0x7

    invoke-static {v11, v1, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v1, 0x9

    invoke-static {v11, v1, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v1, 0xb

    invoke-static {v11, v1, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->onDraw()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableDrawPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDrawPreview:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->requestRender()V

    return-void
.end method

.method public get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspWidth:F

    neg-float v1, v1

    float-to-double v2, v1

    int-to-float v1, p5

    float-to-double v4, v1

    div-double v4, p1, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspWidth:F

    mul-float/2addr v1, v8

    float-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspHeight:F

    neg-float v1, v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-float v1, p6

    float-to-double v6, v1

    div-double v6, p3, v6

    sub-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspHeight:F

    mul-float/2addr v1, v8

    float-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAlpha:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    return v0
.end method

.method public getBackgroundHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    return v0
.end method

.method public getBackgroundWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    return v0
.end method

.method public getCenter()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getCoverShape()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverShape:I

    return v0
.end method

.method public getCoverStrength()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverStrength:I

    return v0
.end method

.method public getCoverType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverType:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLayerId:I

    return v0
.end method

.method public getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    return-object v0
.end method

.method public final getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F
    .locals 12

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    div-float v1, v5, v6

    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    float-to-int v2, v5

    div-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    new-array v0, v5, [F

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x0

    int-to-double v6, v2

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    mul-int/lit8 v11, v2, 0x2

    sub-int/2addr v10, v11

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    :goto_0
    return-object v0

    :cond_0
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v0, v5, [F

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v5, v6

    float-to-int v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x2

    new-array v0, v5, [F

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x1

    int-to-double v6, v3

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    mul-int/lit8 v11, v3, 0x2

    sub-int/2addr v10, v11

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v0, v5

    goto :goto_0
.end method

.method public final getInversePointerCoordsDouble(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[D
    .locals 12

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    div-float v1, v5, v6

    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    float-to-int v2, v5

    div-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x0

    int-to-double v6, v2

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    mul-int/lit8 v11, v2, 0x2

    sub-int/2addr v10, v11

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    :goto_0
    return-object v0

    :cond_0
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v5, v6

    float-to-int v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    int-to-double v6, v3

    iget-wide v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    mul-int/lit8 v11, v3, 0x2

    sub-int/2addr v10, v11

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v6, v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getLogoHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    return v0
.end method

.method public getLogoWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    return v0
.end method

.method public getMaxX()F
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v10, v1

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    sub-double/2addr v6, v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v8, v1

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method public getMaxY()F
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v10, v1

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    add-double/2addr v6, v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v8, v1

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method public getMinX()F
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v10, v1

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    sub-double/2addr v6, v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v8, v1

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method public getMinY()F
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v10, v1

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    add-double/2addr v6, v8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v8, v1

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method public getNormalBoundingRect()[F
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getMinX()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getMaxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getMinY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getMaxY()F

    move-result v1

    const/4 v4, 0x6

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    sub-float v6, v0, v2

    aput v6, v4, v5

    const/4 v5, 0x3

    sub-float v6, v1, v3

    aput v6, v4, v5

    const/4 v5, 0x4

    add-float v6, v0, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x5

    add-float v6, v1, v3

    div-float/2addr v6, v7

    aput v6, v4, v5

    return-object v4
.end method

.method public getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    return-object v0
.end method

.method public getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    return-object v0
.end method

.method public getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    return-object v0
.end method

.method public getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    return-object v0
.end method

.method public getPerspectiveBoundingRect()[F
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v1, v4

    const/4 v4, 0x6

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    sub-float v6, v0, v2

    aput v6, v4, v5

    const/4 v5, 0x3

    sub-float v6, v1, v3

    aput v6, v4, v5

    const/4 v5, 0x4

    add-float v6, v0, v2

    div-float/2addr v6, v10

    aput v6, v4, v5

    const/4 v5, 0x5

    add-float v6, v1, v3

    div-float/2addr v6, v10

    aput v6, v4, v5

    return-object v4
.end method

.method public getPerspectiveBoundingRect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v8, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v8, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-wide v6, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v8, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v6, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-wide v6, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v8, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v1, v4

    const/4 v4, 0x6

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    sub-float v6, v0, v2

    aput v6, v4, v5

    const/4 v5, 0x3

    sub-float v6, v1, v3

    aput v6, v4, v5

    const/4 v5, 0x4

    add-float v6, v0, v2

    div-float/2addr v6, v10

    aput v6, v4, v5

    const/4 v5, 0x5

    add-float v6, v1, v3

    div-float/2addr v6, v10

    aput v6, v4, v5

    return-object v4
.end method

.method public getPerspectiveBoundingRectScreenCoord()[F
    .locals 14

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoordsDouble(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[D

    move-result-object v4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoordsDouble(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[D

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoordsDouble(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[D

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoordsDouble(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[D

    move-result-object v7

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const/4 v10, 0x0

    aget-wide v10, v6, v10

    const/4 v12, 0x0

    aget-wide v12, v7, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v2, v8

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const/4 v10, 0x1

    aget-wide v10, v6, v10

    const/4 v12, 0x1

    aget-wide v12, v7, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v3, v8

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const/4 v10, 0x0

    aget-wide v10, v6, v10

    const/4 v12, 0x0

    aget-wide v12, v7, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v0, v8

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const/4 v10, 0x1

    aget-wide v10, v6, v10

    const/4 v12, 0x1

    aget-wide v12, v7, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v1, v8

    const/4 v8, 0x6

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    const/4 v9, 0x2

    sub-float v10, v0, v2

    aput v10, v8, v9

    const/4 v9, 0x3

    sub-float v10, v1, v3

    aput v10, v8, v9

    const/4 v9, 0x4

    add-float v10, v0, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x5

    add-float v10, v1, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v9

    return-object v8
.end method

.method public final getPointerCoords(FF)[F
    .locals 13

    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v7, v7

    div-float v5, v6, v7

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    div-float v2, v6, v7

    cmpl-float v6, v5, v2

    if-lez v6, :cond_2

    new-array v0, v8, [F

    fill-array-data v0, :array_0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    float-to-int v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    sub-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    int-to-float v6, v3

    sub-float v6, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    mul-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v6, p2, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v12

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    int-to-float v6, v3

    sub-float/2addr v6, p1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    mul-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    neg-float v6, v6

    aput v6, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v6, p2, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v12

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    sub-int/2addr v7, v3

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    mul-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v10

    add-float/2addr v6, v7

    aput v6, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v6, p2, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v12

    move-object v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v6, v5, v2

    if-nez v6, :cond_3

    new-array v0, v8, [F

    fill-array-data v0, :array_1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float v6, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    div-float v6, p2, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v12

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-array v0, v8, [F

    fill-array-data v0, :array_2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-float/2addr v6, v7

    float-to-int v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float v6, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v11

    int-to-float v6, v4

    sub-float v6, p2, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v12

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    int-to-float v6, v4

    cmpg-float v6, p2, v6

    if-gez v6, :cond_5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float v6, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v11

    int-to-float v6, v4

    sub-float/2addr v6, p2

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    neg-float v6, v6

    aput v6, v0, v12

    move-object v1, v0

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenWidth:I

    int-to-float v6, v6

    div-float v6, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    aput v6, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenHeight:I

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v10

    add-float/2addr v6, v7

    aput v6, v0, v12

    move-object v1, v0

    goto/16 :goto_0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public getPreviewData()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPreviewBuffer:[I

    return-object v0
.end method

.method public getSaveData()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveData:[I

    return-object v0
.end method

.method public getSaveHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveHeight:I

    return v0
.end method

.method public getSaveWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveWidth:I

    return v0
.end method

.method public getSize()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStickerHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    return v0
.end method

.method public getStickerWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    return v0
.end method

.method public get_line_intersection(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;
    .locals 10

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;-><init>()V

    iget v7, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float v2, v7, v8

    iget v7, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float v3, v7, v8

    iget v7, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v8, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float v4, v7, v8

    iget v7, p4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v8, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float v5, v7, v8

    neg-float v7, v3

    iget v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v9, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v9, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    neg-float v8, v4

    mul-float/2addr v8, v3

    mul-float v9, v2, v5

    add-float/2addr v8, v9

    div-float v1, v7, v8

    iget v7, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    iget v8, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    iget v8, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v9, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    neg-float v8, v4

    mul-float/2addr v8, v3

    mul-float v9, v2, v5

    add-float/2addr v8, v9

    div-float v6, v7, v8

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    iget v7, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    mul-float v8, v6, v2

    add-float/2addr v7, v8

    iput v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    iget v7, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    mul-float v8, v6, v3

    add-float/2addr v7, v8

    iput v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initPerspectiveView(FFFF)V
    .locals 10

    const/4 v5, 0x2

    new-array v0, v5, [F

    const/4 v5, 0x0

    aput p1, v0, v5

    const/4 v5, 0x1

    aput p2, v0, v5

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x0

    aget v6, v0, v6

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getLogoWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getLogoHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getLogoWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getLogoHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    move v4, p3

    move v2, v4

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    if-eqz v5, :cond_0

    move v1, v4

    :goto_0
    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x0

    aget v6, v0, v6

    sub-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    sub-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x0

    aget v6, v0, v6

    sub-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    add-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x0

    aget v6, v0, v6

    add-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    add-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x0

    aget v6, v0, v6

    add-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    sub-float/2addr v8, v1

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectiveBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->showRectMiddle()V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setButtonVisibility(Z)V

    return-void

    :cond_0
    div-float v1, v4, v3

    goto :goto_0

    :cond_1
    move v4, p3

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    if-eqz v5, :cond_2

    move v2, v4

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_2
    mul-float v2, v4, v3

    goto :goto_1
.end method

.method public isCoverSticker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    return v0
.end method

.method protected isInBounds()Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    return v0
.end method

.method protected isStickerInPreview()Z
    .locals 10

    const/4 v1, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v6, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v6, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v6, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v6, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public isTouchOnButton(Landroid/graphics/RectF;FF)Z
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float v2, v0, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v2, v0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float v2, v1, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v2, v1

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isXinBound()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isYinBound()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public liesInside([F[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mGeometryUtils:Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v3, 0x0

    aget v3, p1, v3

    float-to-double v4, v3

    const/4 v3, 0x1

    aget v3, p1, v3

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/GeometryUtils;->isInside([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;ILcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v0

    return v0
.end method

.method public abstract load()V
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onExitClicked()V
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public abstract onOrientationChange(Landroid/graphics/RectF;)V
.end method

.method public abstract onResume()V
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSelected()V
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->stopHighLight()V

    :cond_0
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    sub-float/2addr v14, v15

    cmpl-float v14, v12, v14

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    add-float/2addr v14, v15

    cmpg-float v14, v12, v14

    if-gez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    sub-float/2addr v14, v15

    cmpl-float v14, v13, v14

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    add-float/2addr v14, v15

    cmpg-float v14, v13, v14

    if-gez v14, :cond_2

    const/4 v6, 0x0

    :cond_1
    :goto_0
    if-nez v6, :cond_5

    const/4 v14, 0x0

    :goto_1
    return v14

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float/2addr v14, v15

    cmpl-float v14, v12, v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v14, v15

    cmpg-float v14, v12, v14

    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float/2addr v14, v15

    cmpl-float v14, v13, v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v14, v15

    cmpg-float v14, v13, v14

    if-gez v14, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float/2addr v14, v15

    cmpl-float v14, v12, v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v14, v15

    cmpg-float v14, v12, v14

    if-gez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    sub-float/2addr v14, v15

    cmpl-float v14, v13, v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    add-float/2addr v14, v15

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    sub-float/2addr v14, v15

    cmpl-float v14, v12, v14

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    add-float/2addr v14, v15

    cmpg-float v14, v12, v14

    if-gez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    sub-float/2addr v14, v15

    cmpl-float v14, v13, v14

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    add-float/2addr v14, v15

    cmpg-float v14, v13, v14

    if-gez v14, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float v7, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float v11, v14, v15

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v9, v7, v14

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v11, v14

    cmpl-float v14, v12, v7

    if-ltz v14, :cond_7

    cmpg-float v14, v12, v9

    if-gtz v14, :cond_7

    cmpl-float v14, v13, v11

    if-ltz v14, :cond_7

    cmpg-float v14, v13, v2

    if-gtz v14, :cond_7

    move v10, v3

    :cond_6
    const/4 v14, -0x1

    if-ne v10, v14, :cond_8

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.sec.android.mimage.photoretouching.WaterMarkTextEditActivity"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v15, "prevString"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    const/16 v15, 0x9

    invoke-virtual {v14, v5, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_1
.end method

.method public abstract onSurfaceChanged()V
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onTouchNormal(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onTouchPerspective(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTouchNormal(Landroid/view/MotionEvent;)Z
    .locals 32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v28, v0

    sub-float v25, v25, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v30, v0

    sub-float v25, v25, v30

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v28, v0

    sub-float v25, v25, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v30, v0

    sub-float v25, v25, v30

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move/from16 v25, v0

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v23, v25

    if-lez v25, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v23, v25

    if-gez v25, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v24, v25

    if-lez v25, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v24, v25

    if-gez v25, :cond_31

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onSelected()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/16 v25, 0x1

    :goto_1
    return v25

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v26, v25, v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v25, v0

    :goto_2
    sub-float v25, v26, v25

    cmpl-float v25, v23, v25

    if-lez v25, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v26, v25, v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v25, v0

    :goto_3
    add-float v25, v25, v26

    cmpg-float v25, v23, v25

    if-gez v25, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v26, v25, v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v25, v0

    :goto_4
    sub-float v25, v26, v25

    cmpl-float v25, v24, v25

    if-lez v25, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v26, v25, v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v25, v0

    :goto_5
    add-float v25, v25, v26

    cmpg-float v25, v24, v25

    if-gez v25, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    const/16 v25, 0x6

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    sget-object v25, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ID:Ljava/lang/String;

    sget-object v26, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_PERSPECTIVE_ID:Ljava/lang/String;

    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_PERSPECTIVE_EVENT_NAME:Ljava/lang/String;

    invoke-static/range {v25 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v25, v0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v25, v0

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v25, v0

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v25, v0

    goto :goto_5

    :cond_7
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v23, v25

    if-lez v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v23, v25

    if-gez v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v24, v25

    if-lez v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v24, v25

    if-gez v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v23, v25

    if-lez v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v23, v25

    if-gez v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v24, v25

    if-lez v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v24, v25

    if-gez v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    sget-object v25, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ID:Ljava/lang/String;

    sget-object v26, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ROTATE_ID:Ljava/lang/String;

    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ROTATE_EVENT_NAME:Ljava/lang/String;

    invoke-static/range {v25 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v23, v25

    if-lez v25, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v23, v25

    if-gez v25, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    cmpl-float v25, v24, v25

    if-lez v25, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v26, v0

    add-float v25, v25, v26

    cmpg-float v25, v24, v25

    if-gez v25, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move/from16 v25, v0

    if-nez v25, :cond_2

    const/16 v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->touchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->touchDownY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->initCenterX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->initCenterY:F

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    sub-float v26, v26, v27

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v3, v0

    :goto_6
    const/16 v25, 0x0

    cmpg-float v25, v3, v25

    if-gez v25, :cond_c

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v3

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v3, v0

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v12, v0

    sub-float v25, v12, v3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    div-float v22, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    div-float v8, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR_LABEL:F

    :goto_7
    cmpg-float v25, v22, v16

    if-ltz v25, :cond_d

    cmpg-float v25, v8, v16

    if-gez v25, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isSuperImpose360Service()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->resizeStickerIntoPreview()V

    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->is360Sticker:Z

    move/from16 v25, v0

    if-nez v25, :cond_15

    :cond_10
    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_12

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v28, v0

    sub-float v25, v25, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    div-float v25, v25, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->atan(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v3, v0

    goto/16 :goto_6

    :cond_12
    const-wide v26, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v28, v0

    sub-float v25, v25, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    div-float v25, v25, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->atan(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v3, v0

    goto/16 :goto_6

    :cond_13
    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR:F

    goto/16 :goto_7

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isInBounds()Z

    move-result v25

    if-nez v25, :cond_f

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    goto/16 :goto_8

    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    div-float v22, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    div-float v8, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR_LABEL:F

    :goto_a
    cmpg-float v25, v22, v16

    if-ltz v25, :cond_16

    cmpg-float v25, v8, v16

    if-gez v25, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isSuperImpose360Service()Z

    move-result v25

    if-eqz v25, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isStickerInPreview()Z

    move-result v25

    if-nez v25, :cond_1b

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->is360Sticker:Z

    move/from16 v25, v0

    if-nez v25, :cond_1c

    :cond_19
    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :cond_1a
    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR:F

    goto :goto_a

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isInBounds()Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    goto :goto_b

    :cond_1c
    const/16 v25, 0x0

    goto :goto_c

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dx:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->dy:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->tmpY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    div-float v22, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    div-float v8, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR_LABEL:F

    :goto_d
    cmpg-float v25, v22, v16

    if-ltz v25, :cond_1d

    cmpg-float v25, v8, v16

    if-gez v25, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isInBounds()Z

    move-result v25

    if-nez v25, :cond_1f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->is360Sticker:Z

    move/from16 v25, v0

    if-nez v25, :cond_22

    :cond_20
    const/16 v25, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :cond_21
    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR:F

    goto :goto_d

    :cond_22
    const/16 v25, 0x0

    goto :goto_e

    :pswitch_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->initCenterX:F

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->touchDownX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->initCenterY:F

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->touchDownY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isSuperImpose360Service()Z

    move-result v25

    if-eqz v25, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    if-eqz v25, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v7, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v25

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v25

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/high16 v26, 0x42480000    # 50.0f

    sub-float v25, v25, v26

    cmpg-float v25, v15, v25

    if-gez v25, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->leftScroll()V

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    cmpg-float v25, v15, v25

    if-gez v25, :cond_23

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    const/high16 v26, 0x42480000    # 50.0f

    add-float v25, v25, v26

    cmpl-float v25, v17, v25

    if-lez v25, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->rightScroll()V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    cmpl-float v25, v17, v25

    if-lez v25, :cond_24

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v7, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v25

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v25

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/high16 v26, 0x42480000    # 50.0f

    sub-float v25, v25, v26

    cmpg-float v25, v21, v25

    if-gez v25, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->topScroll()V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    cmpg-float v25, v21, v25

    if-gez v25, :cond_25

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    const/high16 v26, 0x42480000    # 50.0f

    add-float v25, v25, v26

    cmpl-float v25, v5, v25

    if-lez v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->bottomScroll()V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_26

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    :cond_26
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->is360Sticker:Z

    move/from16 v25, v0

    if-nez v25, :cond_2e

    :cond_27
    const/16 v25, 0x1

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetLeftScroll()V

    goto/16 :goto_f

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetRightScroll()V

    goto/16 :goto_10

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetTopScroll()V

    goto/16 :goto_11

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetBottomScroll()V

    goto :goto_12

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isXinBound()Z

    move-result v25

    if-nez v25, :cond_2d

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isYinBound()Z

    move-result v25

    if-nez v25, :cond_26

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    goto :goto_13

    :cond_2e
    const/16 v25, 0x0

    goto :goto_14

    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onExitClicked()V

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setState(I)V

    :cond_30
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :pswitch_8
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchMode:I

    goto/16 :goto_0

    :cond_31
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/16 v25, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected onTouchPerspective(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isPerspDragging:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z

    move-result v13

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isTouchOnButton(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isTouchOnButton(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isTouchOnButton(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isTouchOnButton(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveTouchHandler:Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTouchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    const/4 v13, 0x4

    new-array v9, v13, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aput-object v14, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aput-object v14, v9, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aput-object v14, v9, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->liesInside([F[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onSelected()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    new-instance v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :pswitch_0
    const/4 v13, 0x0

    aget v13, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownX:F

    const/4 v13, 0x1

    aget v13, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownY:F

    goto :goto_1

    :pswitch_1
    const/4 v13, 0x0

    aget v13, v4, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownX:F

    sub-float v5, v13, v14

    const/4 v13, 0x1

    aget v13, v4, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownY:F

    sub-float v6, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v2, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v3, v13, v14

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isSuperImpose360Service()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    double-to-float v8, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v7, v14

    add-float v13, v5, v8

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->leftScroll()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    neg-float v5, v8

    :goto_2
    add-float v13, v5, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->rightScroll()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    sub-float v5, v13, v7

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    double-to-float v8, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v7, v14

    add-float v13, v6, v8

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->topScroll()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    neg-float v6, v8

    :goto_4
    add-float v13, v6, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->bottomScroll()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mResetCover:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    sub-float v6, v13, v7

    :cond_6
    :goto_5
    float-to-int v13, v5

    int-to-float v13, v13

    float-to-int v14, v6

    int-to-float v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerImageCords(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    :cond_7
    const/4 v13, 0x0

    aget v13, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownX:F

    const/4 v13, 0x1

    aget v13, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->perspectiveTouchDownY:F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isPerspDragging:Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetLeftScroll()V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetRightScroll()V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetTopScroll()V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetBottomScroll()V

    goto :goto_5

    :cond_c
    add-float v13, v5, v2

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_d

    add-float v13, v5, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    cmpg-float v13, v13, v14

    if-lez v13, :cond_e

    :cond_d
    const/4 v5, 0x0

    :cond_e
    add-float v13, v6, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_f

    add-float v13, v6, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    cmpg-float v13, v13, v14

    if-lez v13, :cond_6

    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    :pswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isPerspDragging:Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_1

    :goto_6
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isPerspDragging:Z

    const/4 v13, 0x0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSingleTapTouchDownStart:J

    goto :goto_6

    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSingleTapTouchDownStart:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-gtz v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setState(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_6

    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method protected resizeStickerIntoPreview()V
    .locals 14

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_10

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v8, Landroid/graphics/RectF;->left:F

    :goto_0
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v0, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v0, v8

    if-lez v8, :cond_1

    :cond_0
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_1
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v1, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v1, v8

    if-lez v8, :cond_3

    :cond_2
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_3
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v2, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v2, v8

    if-ltz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_5
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7

    :cond_6
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_7
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_11

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v7, v8, Landroid/graphics/RectF;->top:F

    :goto_1
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v0, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v0, v8

    if-lez v8, :cond_9

    :cond_8
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_9
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v1, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v1, v8

    if-lez v8, :cond_b

    :cond_a
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v10, v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_b
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v2, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v2, v8

    if-ltz v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_d

    :cond_c
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_d
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_e

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_f

    :cond_e
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v12, v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    :cond_f
    return-void

    :cond_10
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v6, v8, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    iget v7, v8, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method public setCenter(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    return-void
.end method

.method public setCoverSaveData([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveData:[I

    return-void
.end method

.method public setCoverShape(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverShape:I

    return-void
.end method

.method public setCoverSticker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    return-void
.end method

.method public setCoverStrength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverStrength:I

    return-void
.end method

.method public setCoverType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverType:I

    return-void
.end method

.method public setDimensions(IIIIZ)V
    .locals 16

    div-int/lit8 v10, p3, 0x2

    add-int v10, v10, p1

    int-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    div-int/lit8 v10, p4, 0x2

    add-int v10, v10, p2

    int-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move/from16 v0, p3

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float v9, v10, v11

    move/from16 v0, p4

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float v4, v10, v11

    if-nez p5, :cond_1

    move/from16 v0, p3

    int-to-float v10, v0

    move/from16 v0, p4

    int-to-float v11, v0

    div-float v2, v10, v11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mStickerType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR_LABEL:F

    :goto_0
    cmpg-float v10, v9, v6

    if-gez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v10, v6

    float-to-int v0, v10

    move/from16 p3, v0

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v2

    float-to-int v0, v10

    move/from16 p4, v0

    :cond_0
    cmpg-float v10, v4, v6

    if-gez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v10, v6

    float-to-int v0, v10

    move/from16 p4, v0

    move/from16 v0, p4

    int-to-float v10, v0

    mul-float/2addr v10, v2

    float-to-int v0, v10

    move/from16 p3, v0

    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move/from16 v0, p3

    int-to-float v10, v0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move/from16 v0, p4

    int-to-float v10, v0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v5

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x0

    aget v11, v3, v11

    float-to-double v12, v11

    const/4 v11, 0x1

    aget v11, v3, v11

    float-to-double v14, v11

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v12, 0x0

    aget v12, v5, v12

    float-to-double v12, v12

    const/4 v14, 0x1

    aget v14, v5, v14

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)D

    move-result-wide v10

    double-to-float v7, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v10, v11

    mul-float/2addr v7, v10

    :cond_2
    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v7, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->initPerspectiveView(FFFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v8

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x0

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v11, v12

    float-to-double v12, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v11, v14

    float-to-double v14, v11

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v8

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x0

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v11, v12

    float-to-double v12, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v11, v14

    float-to-double v14, v11

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v8

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x0

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v11, v12

    float-to-double v12, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v11, v14

    float-to-double v14, v11

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v8

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x0

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v11, v12

    float-to-double v12, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v11, v14

    float-to-double v14, v11

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    return-void

    :cond_3
    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->MIN_SCALE_FACTOR:F

    goto/16 :goto_0
.end method

.method public setEditableTextInfos(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mOriginalData:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->updateStickerWithText(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPreviewBuffer:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateAndShowHighlight()V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLoaded:Z

    :cond_1
    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLayerId:I

    return-void
.end method

.method public setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-void
.end method

.method public setSaveHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveHeight:I

    return-void
.end method

.method public setSaveWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSaveWidth:I

    return-void
.end method

.method public setScreenRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelected:Z

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    return-void
.end method

.method public setState(I)V
    .locals 18

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPerspectiveBoundingRectScreenCoord()[F

    move-result-object v3

    const/4 v9, 0x4

    aget v4, v3, v9

    const/4 v9, 0x5

    aget v5, v3, v9

    const/4 v9, 0x2

    aget v7, v3, v9

    const/4 v9, 0x3

    aget v6, v3, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/4 v10, 0x1

    neg-float v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v4

    aput v11, v9, v10

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const/4 v10, 0x1

    neg-float v11, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v5

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x2

    aget-object v9, v8, v9

    const/4 v10, 0x1

    neg-float v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v4

    aput v11, v9, v10

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v5

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x4

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v7, v11

    add-float/2addr v11, v4

    aput v11, v9, v10

    const/4 v9, 0x5

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x5

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v5

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x6

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v7, v11

    add-float/2addr v11, v4

    aput v11, v9, v10

    const/4 v9, 0x7

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x7

    aget-object v9, v8, v9

    const/4 v10, 0x1

    neg-float v11, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v5

    aput v11, v9, v10

    const/16 v9, 0x8

    aget-object v9, v8, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/16 v9, 0x8

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    new-instance v9, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;-><init>(Landroid/content/Context;II[[F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    const/16 v10, 0x96

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setDuration(I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[FI)V

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setAnimListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->startAnimation()V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x2

    move/from16 v0, p1

    if-ne v0, v9, :cond_0

    const/16 v9, 0x8

    const/4 v10, 0x2

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v11, v11

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v11, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v11, v11

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v11, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v11, v11

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x2

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v11, v11

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x4

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x5

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x5

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v11, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x6

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v2, v11

    aput v11, v9, v10

    const/4 v9, 0x7

    aget-object v9, v8, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v11, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v14, v11

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    const/4 v9, 0x7

    aget-object v9, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    aput v11, v9, v10

    new-instance v9, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x2

    const/16 v12, 0x8

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;-><init>(Landroid/content/Context;II[[F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    const/16 v10, 0x96

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setDuration(I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;I)V

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->setAnimListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mDecorationAnimation:Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->startAnimation()V

    goto/16 :goto_0
.end method

.method public showRectMiddle()V
    .locals 12

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v4

    aget v5, v0, v10

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v0, v10

    aget v5, v1, v10

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v1, v10

    aget v5, v2, v10

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v2, v10

    aget v5, v3, v10

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v10

    aget v5, v4, v10

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v4, v10

    aget v5, v0, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v0, v11

    aget v5, v1, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v1, v11

    aget v5, v2, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v2, v11

    aget v5, v3, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v11

    aget v5, v4, v11

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v4, v11

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v6, v0, v10

    float-to-int v6, v6

    aget v7, v0, v11

    float-to-int v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v6, v1, v10

    float-to-int v6, v6

    aget v7, v1, v11

    float-to-int v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v6, v2, v10

    float-to-int v6, v6

    aget v7, v2, v11

    float-to-int v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v6, v3, v10

    float-to-int v6, v6

    aget v7, v3, v11

    float-to-int v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    return-void
.end method

.method public updateAndShowHighlight()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateHighLightBuffer()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    const/16 v1, 0xfa

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->start()V

    return-void
.end method

.method protected declared-synchronized updateAnimationBuffer(I[F)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/16 v0, 0x28

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    :goto_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x3

    aget v1, p2, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x4

    aget v0, p2, v0

    const/4 v1, 0x5

    aget v1, p2, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x6

    aget v0, p2, v0

    const/4 v1, 0x7

    aget v1, p2, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, p2, v5

    const/4 v6, 0x6

    aget v6, p2, v6

    const/4 v7, 0x7

    aget v7, p2, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getLineVertexArray(FFFFFFFFII)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mUseHighPBuffer:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    goto/16 :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, p2, v5

    const/4 v6, 0x6

    aget v6, p2, v6

    const/4 v7, 0x7

    aget v7, p2, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getPerspectiveGridArray(FFFFFFFFII)[F

    move-result-object v11

    const/16 v0, 0x8

    aget v0, p2, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->GRID_ALPHA:F

    array-length v0, v11

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v0, 0x2

    aget v3, p2, v0

    const/4 v0, 0x3

    aget v4, p2, v0

    const/4 v0, 0x4

    aget v5, p2, v0

    const/4 v0, 0x5

    aget v6, p2, v0

    const/4 v0, 0x6

    aget v7, p2, v0

    const/4 v0, 0x7

    aget v8, p2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons(FFFFFFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCentrePointImageCords()V
    .locals 8

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p5:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v4, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectiveBuffer()V

    return-void
.end method

.method public updateCornerImageCords(FF)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    return-void
.end method

.method public updateCornerUIButtons()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v2, v0, v6

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget v3, v0, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v2, v0, v6

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget v3, v0, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v2, v0, v6

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget v3, v0, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    aget v2, v0, v6

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget v3, v0, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    return-void
.end method

.method public updateCornerUIButtons(FFFFFFFF)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    float-to-int v1, p1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    float-to-int v2, p2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mTopRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    float-to-int v1, p3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    float-to-int v2, p4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotLeft:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    float-to-int v1, p5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    float-to-int v2, p6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBotRight:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    float-to-int v1, p7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    float-to-int v2, p8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    return-void
.end method

.method public updateEditableString(Ljava/lang/String;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    if-le v1, v3, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    if-eq v1, v10, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    invoke-virtual {v8, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->setCurrentString(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mOriginalData:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mEditTextInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->updateStickerWithText(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPreviewBuffer:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mSelectedEditText:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLoaded:Z

    :cond_1
    return-void
.end method

.method protected declared-synchronized updateNormalBuffer(Z)V
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverTextureBuffer:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mScreenRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureCoordinates(FFFFFLandroid/graphics/RectF;)[F

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCoverTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveEnabled:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    :goto_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeLarge:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mUseHighPBuffer:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    neg-float v1, v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v10

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFFFFZ)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighPLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHighlightTextThread:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateHighLightBuffer()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectivePosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized updatePerspectiveBuffer()V
    .locals 43

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-int v13, v6

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-int v13, v6

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-int v13, v6

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v10, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundWidth:F

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mBackgroundHeight:F

    float-to-int v13, v6

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->get3DCoordinates(DDII)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->get_line_intersection(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->distanceBetweenPoints(Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;)D

    move-result-wide v26

    add-double v6, v20, v24

    div-double v34, v6, v24

    add-double v6, v22, v26

    div-double v36, v6, v26

    add-double v6, v24, v20

    div-double v38, v6, v20

    add-double v6, v26, v22

    div-double v40, v6, v22

    const/16 v6, 0x1c

    new-array v0, v6, [F

    move-object/from16 v33, v0

    const/4 v6, 0x0

    move-object/from16 v0, v30

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v7, v33, v6

    const/4 v6, 0x1

    move-object/from16 v0, v30

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v7, v33, v6

    const/4 v6, 0x2

    move-object/from16 v0, v30

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v7, v33, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v33, v6

    const/4 v6, 0x4

    move-wide/from16 v0, v36

    double-to-float v7, v0

    aput v7, v33, v6

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v33, v6

    const/4 v6, 0x6

    move-wide/from16 v0, v36

    double-to-float v7, v0

    aput v7, v33, v6

    const/4 v6, 0x7

    move-object/from16 v0, v29

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v7, v33, v6

    const/16 v6, 0x8

    move-object/from16 v0, v29

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v7, v33, v6

    const/16 v6, 0x9

    move-object/from16 v0, v29

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v7, v33, v6

    const/16 v6, 0xa

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0xb

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0xc

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0xd

    move-wide/from16 v0, v34

    double-to-float v7, v0

    aput v7, v33, v6

    const/16 v6, 0xe

    move-object/from16 v0, v31

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v7, v33, v6

    const/16 v6, 0xf

    move-object/from16 v0, v31

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v7, v33, v6

    const/16 v6, 0x10

    move-object/from16 v0, v31

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v7, v33, v6

    const/16 v6, 0x11

    move-wide/from16 v0, v38

    double-to-float v7, v0

    aput v7, v33, v6

    const/16 v6, 0x12

    move-wide/from16 v0, v38

    double-to-float v7, v0

    aput v7, v33, v6

    const/16 v6, 0x13

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0x14

    move-wide/from16 v0, v38

    double-to-float v7, v0

    aput v7, v33, v6

    const/16 v6, 0x15

    move-object/from16 v0, v32

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    aput v7, v33, v6

    const/16 v6, 0x16

    move-object/from16 v0, v32

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    aput v7, v33, v6

    const/16 v6, 0x17

    move-object/from16 v0, v32

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    aput v7, v33, v6

    const/16 v6, 0x18

    move-wide/from16 v0, v40

    double-to-float v7, v0

    aput v7, v33, v6

    const/16 v6, 0x19

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0x1a

    const/4 v7, 0x0

    aput v7, v33, v6

    const/16 v6, 0x1b

    move-wide/from16 v0, v40

    double-to-float v7, v0

    aput v7, v33, v6

    move-object/from16 v0, v33

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLogoBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mLogoBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v19

    const/4 v6, 0x0

    aget v6, v16, v6

    const/4 v7, 0x1

    aget v7, v16, v7

    const/4 v8, 0x0

    aget v8, v17, v8

    const/4 v9, 0x1

    aget v9, v17, v9

    const/4 v10, 0x0

    aget v10, v18, v10

    const/4 v11, 0x1

    aget v11, v18, v11

    const/4 v12, 0x0

    aget v12, v19, v12

    const/4 v13, 0x1

    aget v13, v19, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v15

    invoke-static/range {v6 .. v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getPerspectiveGridArray(FFFFFFFFII)[F

    move-result-object v42

    move-object/from16 v0, v42

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mPerspectiveLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public updatePerspectivePosition()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v10

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v11

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v10

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v11

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v10

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v11

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mAngle:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v10

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v4, v0, v11

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    return-void
.end method
