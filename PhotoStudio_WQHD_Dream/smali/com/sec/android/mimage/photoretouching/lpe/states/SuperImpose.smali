.class public Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "SuperImpose.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;
    }
.end annotation


# static fields
.field public static final BORDER_LINE_A:F = 1.0f

.field public static final BORDER_LINE_B:F = 1.0f

.field public static final BORDER_LINE_G:F = 1.0f

.field public static final BORDER_LINE_R:F = 1.0f

.field public static final BORDER_WIDTH:I = 0x4

.field public static final DECORATION_FRAGMENT_TAG:Ljava/lang/String; = "DECORATION_VIEW"

.field public static GRID_ALPHA:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "PEDIT_SuperImpose"


# instance fields
.field public distanceZ:F

.field public fovX:F

.field public fovY:F

.field private glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

.field public isDecorationService:Z

.field private isImageLoading:Z

.field private labelText:Ljava/lang/String;

.field private labelbitmap:Landroid/graphics/Bitmap;

.field private lastClickTime:J

.field private mActionbarLayout:Landroid/view/View;

.field private mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

.field private mBGLayer:I

.field private mCircleMask:Landroid/graphics/Bitmap;

.field private mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

.field public mCurrCoverShape:I

.field public mCurrCoverStrength:I

.field public mCurrCoverType:I

.field private mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

.field private mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

.field private mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

.field private mLabelDialog:Landroid/app/AlertDialog;

.field private mMarginLeftRight:I

.field private mMarginTopDown:I

.field private mMaxStickerCountReached:Z

.field private mOrder:[I

.field private mPerspHeight:F

.field private mPerspWidth:F

.field private mPreviewAspectRatio:F

.field private mPreviewHeight:F

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mPreviewWidth:F

.field private mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

.field private mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

.field private mScreenAspectRatio:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStickerCount:I

.field private mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

.field private modelMatrix:[F

.field public modelViewProjectionMatrix:[F

.field private onSurfaceCreateCalled:Z

.field private projectionMatrix:[F

.field private selectedIntent:Landroid/content/Intent;

.field private selectedLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedStickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempRect:Landroid/graphics/RectF;

.field private viewMatrix:[F

.field private viewProjectionMatrix:[F

.field public zFar:F

.field public zNear:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->GRID_ALPHA:F

    return-void
.end method

.method public constructor <init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;I)V
    .locals 10

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const/high16 v2, 0x42340000    # 45.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovY:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->zNear:F

    const v2, 0x469c4000    # 20000.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->zFar:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->distanceZ:F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelMatrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewMatrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewProjectionMatrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->projectionMatrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelViewProjectionMatrix:[F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isDecorationService:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onSurfaceCreateCalled:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMaxStickerCountReached:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionbarLayout:Landroid/view/View;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    const/16 v2, 0x3c

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginTopDown:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginLeftRight:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverShape:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverStrength:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->lastClickTime:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedLabelList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedStickerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->distanceZ:F

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;-><init>(FFF)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isImageLoading:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mBGLayer:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->initSuperImpose()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->deleteSuperImposeLayersOriginal([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isImageLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelbitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelbitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedLabelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->enableLabelPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeAttachSheet(Landroid/view/View;)V

    return-void
.end method

.method private applyCover(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V
    .locals 53

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v28

    if-nez v28, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v11

    int-to-float v0, v11

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v11

    int-to-float v0, v11

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v11

    int-to-float v0, v11

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v11

    int-to-float v0, v11

    move/from16 v34, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSize()[F

    move-result-object v48

    const/4 v11, 0x0

    aget v11, v48, v11

    div-float v11, v11, v46

    mul-float v49, v11, v35

    const/4 v11, 0x1

    aget v11, v48, v11

    div-float v11, v11, v44

    mul-float v30, v11, v34

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCenter()[F

    move-result-object v24

    const/4 v11, 0x0

    aget v11, v24, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    div-float v11, v11, v46

    mul-float v25, v11, v35

    const/4 v11, 0x1

    aget v11, v24, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    div-float v11, v11, v44

    mul-float v26, v11, v34

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getAngle()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverShape()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getNormalBoundingRect()[F

    move-result-object v27

    const/4 v11, 0x2

    aget v11, v27, v11

    div-float v11, v11, v46

    mul-float v7, v11, v35

    const/4 v11, 0x3

    aget v11, v27, v11

    div-float v11, v11, v44

    mul-float v8, v11, v34

    const/4 v11, 0x0

    aget v11, v27, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    div-float v11, v11, v46

    mul-float v5, v11, v35

    const/4 v11, 0x1

    aget v11, v27, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    div-float v11, v11, v44

    mul-float v6, v11, v34

    move/from16 v9, v23

    move/from16 v10, v49

    move/from16 v11, v30

    invoke-static/range {v4 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getSquareMaskedBitmap(Landroid/graphics/Bitmap;FFFFFFF)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v10, v11, [I

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x4

    aget v11, v27, v11

    const/4 v12, 0x5

    aget v12, v27, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCenter(FF)V

    const/4 v11, 0x2

    aget v11, v27, v11

    const/4 v12, 0x3

    aget v12, v27, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSize(FF)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setAngle(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCoverSaveData([I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveWidth(I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveHeight(I)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    int-to-float v0, v11

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    int-to-float v0, v11

    move/from16 v44, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    int-to-float v0, v11

    move/from16 v35, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    int-to-float v0, v11

    move/from16 v34, v0

    goto/16 :goto_0

    :cond_2
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v49, v11

    sub-float v11, v25, v11

    float-to-int v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v30, v12

    sub-float v12, v26, v12

    float-to-int v12, v12

    move/from16 v0, v49

    float-to-int v13, v0

    invoke-static {v4, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getCircleMaskedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v10, v11, [I

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setAngle(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCoverSaveData([I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveWidth(I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveHeight(I)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v43

    const/4 v11, 0x4

    new-array v14, v11, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v11, 0x2

    aget v42, v43, v11

    const/4 v11, 0x3

    aget v39, v43, v11

    const/4 v11, 0x0

    aget v40, v43, v11

    const/4 v11, 0x1

    aget v41, v43, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x0

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x1

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x2

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x3

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v11

    const/high16 v12, 0x80000

    if-ne v11, v12, :cond_5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v11

    iget-object v0, v11, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    if-nez v29, :cond_4

    new-instance v29, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-direct {v0, v11, v12, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    new-instance v45, Landroid/graphics/RectF;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, v45

    iput v11, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, v45

    iput v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v45

    iget v11, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, v45

    iput v11, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v45

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, v45

    iput v11, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->calculateHomoPointArrayForCover(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/RectF;Landroid/graphics/RectF;)[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v32

    const/4 v11, 0x0

    aget-object v11, v32, v11

    const/4 v12, 0x1

    aget-object v12, v32, v12

    const/4 v13, 0x2

    aget-object v13, v32, v13

    const/16 v16, 0x3

    aget-object v16, v32, v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v12, v13, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v38

    const/4 v11, 0x0

    aget v36, v38, v11

    const/4 v11, 0x1

    aget v47, v38, v11

    const/4 v11, 0x2

    aget v50, v38, v11

    const/4 v11, 0x3

    aget v31, v38, v11

    const/4 v11, 0x0

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    const/4 v11, 0x0

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x0

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    const/4 v11, 0x1

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    const/4 v11, 0x1

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x1

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    const/4 v11, 0x2

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    const/4 v11, 0x2

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x2

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    const/4 v11, 0x3

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v51, v0

    const/4 v11, 0x3

    aget-object v11, v32, v11

    iget-wide v12, v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    double-to-float v0, v12

    move/from16 v52, v0

    const/4 v11, 0x3

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v12, v14, v11

    move/from16 v0, v36

    float-to-int v15, v0

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    invoke-virtual/range {v11 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v12, 0x4

    aget v12, v43, v12

    float-to-double v12, v12

    const/16 v16, 0x5

    aget v16, v43, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v11, v12, v13, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v37

    div-float v11, v42, v35

    mul-float v49, v11, v46

    div-float v11, v39, v34

    mul-float v30, v11, v44

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v10, v11, [I

    const/16 v17, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    aget v11, v37, v11

    const/4 v12, 0x1

    aget v12, v37, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCenter(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSize(FF)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setAngle(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCoverSaveData([I)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveWidth(I)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveHeight(I)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    :cond_5
    move/from16 v0, v42

    float-to-int v15, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;II)Landroid/graphics/Bitmap;

    move-result-object v15

    goto/16 :goto_2
.end method

.method private applyPerspective(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v15, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v14, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v22

    const/4 v5, 0x4

    new-array v0, v5, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v21, v0

    const/4 v5, 0x2

    aget v20, v22, v5

    const/4 v5, 0x3

    aget v17, v22, v5

    const/4 v5, 0x0

    aget v18, v22, v5

    const/4 v5, 0x1

    aget v19, v22, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v18

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v19

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v27, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v26

    float-to-double v8, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v21, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v18

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v19

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v27, v0

    const/4 v5, 0x1

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v26

    float-to-double v8, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v21, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v18

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v19

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v27, v0

    const/4 v5, 0x2

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v26

    float-to-double v8, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v21, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v18

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v6, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v19

    float-to-double v8, v0

    sub-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v27, v0

    const/4 v5, 0x3

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v26

    float-to-double v8, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v21, v5

    move/from16 v0, v20

    float-to-int v5, v0

    move/from16 v0, v17

    float-to-int v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x4

    aget v6, v22, v6

    float-to-double v6, v6

    const/4 v8, 0x5

    aget v8, v22, v8

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v16

    div-float v5, v20, v15

    mul-float v25, v5, v24

    div-float v5, v17, v14

    mul-float v12, v5, v23

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v4, v5, [I

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    aget v5, v16, v5

    const/4 v6, 0x1

    aget v6, v16, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCenter(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSize(FF)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setAngle(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCoverSaveData([I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveWidth(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveHeight(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 v23, v0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    int-to-float v14, v5

    goto/16 :goto_0
.end method

.method private clearViewData(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->cleanUp()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->clear()V

    return-void
.end method

.method private deleteSuperImposeLayersOriginal([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 6

    if-eqz p1, :cond_2

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    move-object v0, v1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->stopGifPlay()V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clear()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clearBitmaps()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I)V
    .locals 10

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v3

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct {p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getImageDataFromLayer([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I)[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;III[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->deleteSuperImposeLayers()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freePreviewResourcesCus()V

    goto :goto_0
.end method

.method private enableCoverPicker()V
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showTabLayout(IZZ)V

    return-void
.end method

.method private enableLabelPicker()V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showTabLayout(IZZ)V

    return-void
.end method

.method private enableStickerPicker()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showTabLayout(IZZ)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setTabOnStickerMenuTouch(Z)V

    return-void
.end method

.method private getImageDataFromLayer([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I)[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 7

    array-length v4, p2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mBGLayer:I

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerData(I)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    aget v4, p2, v0

    aget-object v3, p1, v4

    if-eqz v3, :cond_2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    aput-object v5, v1, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeAttachSheet(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e00de

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0e0199

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method private setImageLoadingFalse()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$9;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$9;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setSuperImposeState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setImageLoadingFalse()V

    return-void
.end method

.method private showTabLayout(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, p1, p3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->showTabView(IZ)V

    :cond_0
    return-void
.end method

.method private updatePerspectiveMatrix()V
    .locals 10

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenAspectRatio:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovY:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v7, v0, v2

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v9, v2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v8, v0, v9

    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v6, v2

    mul-float v0, v6, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewAspectRatio:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenAspectRatio:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewAspectRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPerspHeight:F

    float-to-double v2, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovY:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->distanceZ:F

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->distanceZ:F

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->projectionMatrix:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mScreenAspectRatio:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->zNear:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->zFar:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewMatrix:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->x:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurCamPos:Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/perspective/CPoint3D;->z:F

    neg-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewProjectionMatrix:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->projectionMatrix:[F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelViewProjectionMatrix:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->modelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPerspWidth:F

    float-to-double v2, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovX:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->distanceZ:F

    goto :goto_0
.end method


# virtual methods
.method public addCoverSticker(III)V
    .locals 12

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedStickerList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v2, v10

    move v3, p2

    move v4, p3

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getCoverBitmap(II[III)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    add-int/lit8 v3, p1, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object v2, v10

    move v3, p2

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getCoverBitmap(II[III)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    add-int/lit8 v3, p1, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_0
.end method

.method public addDecorationFragments(I)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DECORATION_VIEW"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->newInstance(I)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0e0199

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    const-string v5, "DECORATION_VIEW"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0204

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public addImageFromGallery()V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v1, v3, 0x6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ATTACH_VIEW"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-nez v3, :cond_0

    invoke-static {v5, v7}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->newInstance(IZ)Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setExpansionFragments(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0e0199

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const-string v6, "ATTACH_VIEW"

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e00de

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    goto :goto_0
.end method

.method public addImageToView(IIIZ)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    .locals 38

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070097

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v35, v0

    const/4 v2, 0x0

    aput v24, v35, v2

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v27

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    add-int/lit8 v3, v27, -0x1

    aget v2, v2, v3

    aput v2, v35, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v2

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v2

    const v3, 0x80009

    if-ne v2, v3, :cond_e

    :cond_4
    const/16 v2, 0x65

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v16, v0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[IIILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;I)V

    aput-object v2, v16, v24

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverSticker(Z)V

    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverType:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverShape:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverShape(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverStrength:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverStrength(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/16 v2, 0x64

    const/16 v3, 0x64

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v3, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v11, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setDimensions(IIIIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v33, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v33

    invoke-direct {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_3
    int-to-float v2, v5

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v37, v2, v3

    int-to-float v2, v6

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v23, v2, v3

    move/from16 v0, v37

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v34

    const/high16 v2, 0x40000

    move/from16 v0, p3

    if-eq v0, v2, :cond_13

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v34, v34, v2

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->MIN_SCALE_FACTOR_LABEL:F

    div-float/2addr v2, v3

    move/from16 v0, v34

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v34

    :goto_4
    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v34

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v34

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/16 v2, 0x65

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    move v14, v15

    :cond_7
    if-eqz p4, :cond_8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v0, v2

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v15, v14

    :cond_8
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v14

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v36, v2, v3

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v15

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v2, v36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginLeftRight:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v12, v2

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginTopDown:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v13, v2

    int-to-float v2, v12

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    float-to-int v12, v2

    :cond_9
    :goto_5
    int-to-float v2, v13

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    add-int/lit8 v13, v2, 0x14

    :cond_a
    :goto_6
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->disablePerspective()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v11, v2, v24

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setDimensions(IIIIZ)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getEditTextInfo()Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setEditableTextInfos(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setImageLoadingFalse()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v24

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v16, v0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[IIILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;II)V

    aput-object v2, v16, v24

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v16, v0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[IIILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;II)V

    aput-object v2, v16, v24

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    goto/16 :goto_3

    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->MIN_SCALE_FACTOR:F

    div-float/2addr v2, v3

    move/from16 v0, v34

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v34

    goto/16 :goto_4

    :cond_11
    int-to-float v2, v12

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    add-int/lit8 v12, v2, -0x14

    goto/16 :goto_5

    :cond_12
    int-to-float v2, v13

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/lit8 v13, v2, -0x14

    goto/16 :goto_6

    :cond_13
    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getDrawingRect()Landroid/graphics/RectF;

    move-result-object v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v2

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v3

    const/4 v7, 0x0

    aget v3, v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float v31, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v3

    const/4 v7, 0x1

    aget v3, v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float v32, v2, v3

    :cond_14
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v2, v31

    float-to-int v12, v2

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v2, v32

    float-to-int v13, v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v14, v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v15, v2

    const/16 v22, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v29, v0

    cmpg-float v2, v30, v29

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float v2, v2, v29

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v2, v2, v30

    const/high16 v3, 0x40000000    # 2.0f

    div-float v36, v2, v3

    :goto_8
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v34

    add-float v2, v2, v36

    float-to-int v12, v2

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v2, v22

    mul-float v2, v2, v34

    float-to-int v13, v2

    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v11, v2, v24

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setDimensions(IIIIZ)V

    goto/16 :goto_7

    :cond_16
    div-float v34, v30, v29

    int-to-float v2, v14

    mul-float v2, v2, v34

    float-to-int v14, v2

    int-to-float v2, v15

    mul-float v2, v2, v34

    float-to-int v15, v2

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float v2, v2, v29

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v2, v2, v30

    const/high16 v3, 0x40000000    # 2.0f

    div-float v36, v2, v3

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float v2, v2, v29

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v2, v2, v30

    const/high16 v3, 0x40000000    # 2.0f

    div-float v36, v2, v3

    :goto_a
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v2, v36

    mul-float v2, v2, v34

    float-to-int v12, v2

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v34

    add-float v2, v2, v22

    float-to-int v13, v2

    goto :goto_9

    :cond_18
    div-float v34, v29, v30

    int-to-float v2, v14

    mul-float v2, v2, v34

    float-to-int v14, v2

    int-to-float v2, v15

    mul-float v2, v2, v34

    float-to-int v15, v2

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float v2, v2, v29

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v2, v2, v30

    const/high16 v3, 0x40000000    # 2.0f

    div-float v36, v2, v3

    goto :goto_a
.end method

.method public addImageToView(ILjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070097

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    aput v15, v18, v2

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    add-int/lit8 v3, v16, -0x1

    aget v2, v2, v3

    aput v2, v18, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/graphics/Bitmap;IILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v12, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v15

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v11, v2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setDimensions(IIIIZ)V

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v20, v2, v3

    int-to-float v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v14, v2, v3

    move/from16 v0, v20

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v17

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v17, v17, v2

    int-to-float v2, v5

    div-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v2, v6

    div-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v10

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v11

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v2, v2, v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginLeftRight:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMarginTopDown:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v9, v2

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    float-to-int v8, v2

    :cond_3
    :goto_2
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    add-int/lit8 v9, v2, 0x14

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v2, v15

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setDimensions(IIIIZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setImageLoadingFalse()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v2, v2, v15

    goto/16 :goto_0

    :cond_5
    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    add-int/lit8 v8, v2, -0x14

    goto :goto_2

    :cond_6
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/lit8 v9, v2, -0x14

    goto :goto_3
.end method

.method public calculateHomoPointArrayForCover(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/RectF;Landroid/graphics/RectF;)[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;
    .locals 16

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v5

    const/4 v9, 0x4

    new-array v6, v9, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v2, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v10, 0x1

    aget v10, v2, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    const/4 v9, 0x0

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v12, v7

    float-to-double v14, v8

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v6, v9

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v3, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v10, 0x1

    aget v10, v3, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    const/4 v9, 0x1

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v12, v7

    float-to-double v14, v8

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v6, v9

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v4, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v10, 0x1

    aget v10, v4, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    const/4 v9, 0x2

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v12, v7

    float-to-double v14, v8

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v6, v9

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    const/4 v10, 0x1

    aget v10, v5, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    const/4 v9, 0x3

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v12, v7

    float-to-double v14, v8

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v6, v9

    return-object v6
.end method

.method public checkIfImageIsLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isImageLoading:Z

    return v0
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    return-void
.end method

.method public cleanUpDecoration()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    :cond_0
    return-void
.end method

.method public deSelectAllViews()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteSuperImposeLayers()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    if-eqz v1, :cond_1

    instance-of v5, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v5, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->stopGifPlay()V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clear()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clearBitmaps()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public doCancel()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableCancel(Z)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    :cond_0
    const/high16 v2, 0x80000

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v2

    const v3, 0x80009

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setStickersDataAndExit(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->deleteSuperImposeLayers()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freeResourcesCus([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freePreviewResourcesCus()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->cleanUpDecoration()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->isMoving()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "D100"

    const-string v10, "Decoration_Apply"

    invoke-static {v7, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isPortraitFullMode()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setExpansionFragments(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v7

    const v9, 0x80001

    if-lt v7, v9, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v7

    const v9, 0x80003

    if-le v7, v9, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v7

    const v9, 0x8000a

    if-ne v7, v9, :cond_5

    :cond_4
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v7, :cond_0

    const/high16 v7, 0x80000

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v9

    if-eq v7, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v7

    const v9, 0x80009

    if-ne v7, v9, :cond_19

    :cond_6
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->initStickerCounter()V

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v33, v7, -0x1

    :goto_1
    if-ltz v33, :cond_16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v33

    aget-object v7, v7, v9

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v33

    aget-object v40, v7, v9

    if-nez v40, :cond_8

    :cond_7
    :goto_2
    add-int/lit8 v33, v33, -0x1

    goto :goto_1

    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0xe

    new-array v0, v7, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v40

    instance-of v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    if-eqz v7, :cond_a

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getType()I

    move-result v7

    const/16 v9, 0x65

    if-ne v7, v9, :cond_9

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getRotX()F

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getRotY()F

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getZ()F

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v39

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getAngle()F

    move-result v4

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCenter()[F

    move-result-object v7

    const/4 v9, 0x0

    aget v5, v7, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCenter()[F

    move-result-object v7

    const/4 v9, 0x1

    aget v6, v7, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getStickerWidth()F

    move-result v7

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getStickerHeight()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getType()I

    move-result v13

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;-><init>(FFFFFZIIIILjava/util/ArrayList;Z[F)V

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v7, v9

    new-array v5, v7, [I

    const/4 v6, 0x0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v4, v39

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->stickerWrite([II)I

    move-result v31

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v40

    instance-of v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v7, :cond_7

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->applyCover(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V

    :cond_b
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v7

    const v9, 0x80009

    if-ne v7, v9, :cond_c

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->applyPerspective(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V

    :cond_c
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_d

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectivePointArray(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[F

    move-result-object v16

    :cond_d
    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->stopGifPlay()V

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    :goto_3
    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getAngle()F

    move-result v18

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCenter()[F

    move-result-object v7

    const/4 v9, 0x0

    aget v19, v7, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCenter()[F

    move-result-object v7

    const/4 v9, 0x1

    aget v20, v7, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getStickerWidth()F

    move-result v21

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getStickerHeight()F

    move-result v22

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v23

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->numOfFrames()I

    move-result v24

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getType()I

    move-result v27

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_11

    const/16 v29, 0x1

    :goto_4
    move-object/from16 v17, v3

    move-object/from16 v28, v14

    move-object/from16 v30, v16

    invoke-direct/range {v17 .. v30}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;-><init>(FFFFFZIIIILjava/util/ArrayList;Z[F)V

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v34, 0x0

    :goto_5
    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getGifBitmaps()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v34

    if-ge v0, v7, :cond_12

    move-object/from16 v7, v40

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getGifBitmaps()Ljava/util/ArrayList;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v7, v9

    new-array v5, v7, [I

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v7, v32, 0xa

    add-int v7, v7, v34

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->stickerWrite([II)I

    move-result v31

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v34, v34, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v7

    const v9, 0x80009

    if-ne v7, v9, :cond_10

    :cond_f
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getSaveWidth()I

    move-result v25

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getSaveHeight()I

    move-result v26

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v26

    goto/16 :goto_3

    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v7

    const v9, 0x80009

    if-ne v7, v9, :cond_15

    :cond_14
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getSaveData()[I

    move-result-object v5

    :goto_6
    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->stickerWrite([II)I

    move-result v31

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-nez v7, :cond_17

    if-eqz p1, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f070182

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->deleteSuperImposeLayers()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freeResourcesCus([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freePreviewResourcesCus()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v7

    const v9, 0x80009

    if-ne v7, v9, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v7

    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setStickersDataAndExit(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->cleanUpDecoration()V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setStickersDataAndExit(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    goto :goto_7

    :cond_19
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->saveImagePreview(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-nez v7, :cond_1b

    if-eqz p1, :cond_1a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f070182

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->doCancel()V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v12

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v13

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v7}, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->clone()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->freeResourcesCusTemp([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    new-instance v8, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-direct {v8, v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v10

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setEdited()V

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-direct {v0, v8, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->cleanUpDecoration()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v9, 0x100

    invoke-virtual {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0
.end method

.method public draw()V
    .locals 5

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onSurfaceCreateCalled:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onSurfaceCreated()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->draw()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSelectedView()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v3, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v3, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v4, v4, v0

    aget-object v2, v3, v4

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->draw()V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->draw()V

    :cond_5
    return-void
.end method

.method public freePreviewResourcesCus()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    return-void
.end method

.method public freeResources()V
    .locals 0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->setDefaultStrings()V

    return-void
.end method

.method public freeResourcesCus([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->cleanUp()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->cleanUp()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public freeResourcesCusTemp([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    return-void
.end method

.method public getCircleMask()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCircleMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawingBitmap()Landroid/graphics/Bitmap;
    .locals 51

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mBGLayer:I

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerData(I)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    move-result-object v30

    const/16 v19, 0x0

    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v19

    :cond_0
    if-nez v19, :cond_2

    const/4 v15, 0x0

    :cond_1
    return-object v15

    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v6

    iget-object v0, v6, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    new-instance v20, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v39, Landroid/graphics/Canvas;

    move-object/from16 v0, v39

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    const/4 v8, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v42, Landroid/graphics/RectF;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v6

    const/high16 v7, 0x80000

    if-ne v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getCenter()[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getSize()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v24, v6, -0x1

    :goto_1
    if-ltz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v7, v7, v24

    aget-object v6, v6, v7

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v7, v7, v24

    aget-object v46, v6, v7

    check-cast v46, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v40

    const/4 v6, 0x4

    new-array v9, v6, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x2

    aget v38, v40, v6

    const/4 v6, 0x3

    aget v35, v40, v6

    const/4 v6, 0x0

    aget v36, v40, v6

    const/4 v6, 0x1

    aget v37, v40, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectivePointArray(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[F

    move-result-object v41

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v42

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->calculateHomoPointArrayForCover(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/RectF;Landroid/graphics/RectF;)[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v23

    const/4 v6, 0x0

    aget-object v6, v23, v6

    const/4 v7, 0x1

    aget-object v7, v23, v7

    const/4 v8, 0x2

    aget-object v8, v23, v8

    const/4 v10, 0x3

    aget-object v10, v23, v10

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7, v8, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v34

    const/4 v6, 0x0

    aget v31, v34, v6

    const/4 v6, 0x1

    aget v45, v34, v6

    const/4 v6, 0x2

    aget v48, v34, v6

    const/4 v6, 0x3

    aget v22, v34, v6

    const/4 v6, 0x0

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v31

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    const/4 v6, 0x0

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    const/4 v6, 0x1

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v31

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    const/4 v6, 0x1

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    const/4 v6, 0x2

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v31

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    const/4 v6, 0x2

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    const/4 v6, 0x3

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v31

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    const/4 v6, 0x3

    aget-object v6, v23, v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x3

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    move/from16 v0, v31

    float-to-int v10, v0

    move/from16 v0, v45

    float-to-int v11, v0

    move/from16 v0, v48

    float-to-int v12, v0

    move/from16 v0, v22

    float-to-int v13, v0

    move-object/from16 v6, p0

    move-object/from16 v7, v46

    move-object v8, v5

    invoke-virtual/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;IIII)Landroid/graphics/Bitmap;

    move-result-object v33

    :goto_2
    const/16 v6, 0x8

    aget v6, v41, v6

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    move/from16 v0, v29

    int-to-float v7, v0

    mul-float v47, v6, v7

    const/16 v6, 0x9

    aget v6, v41, v6

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    move/from16 v0, v28

    int-to-float v7, v0

    mul-float v21, v6, v7

    const/16 v6, 0xa

    aget v6, v41, v6

    move-object/from16 v0, v42

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    move/from16 v0, v29

    int-to-float v7, v0

    mul-float v17, v6, v7

    const/16 v6, 0xb

    aget v6, v41, v6

    move-object/from16 v0, v42

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    move/from16 v0, v28

    int-to-float v7, v0

    mul-float v18, v6, v7

    const/4 v14, 0x0

    new-instance v32, Landroid/graphics/Matrix;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v43, v47, v6

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v44, v21, v6

    move/from16 v25, v17

    move/from16 v26, v18

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v47, v6

    sub-float v6, v25, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v21, v7

    sub-float v7, v26, v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v6, 0x43340000    # 180.0f

    mul-float/2addr v6, v14

    float-to-double v6, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v10

    double-to-float v6, v6

    move-object/from16 v0, v32

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v42

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v37

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v37

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v37

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v36

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v49, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v37

    float-to-double v10, v0

    sub-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v50, v0

    const/4 v6, 0x3

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v49

    float-to-double v10, v0

    move/from16 v0, v50

    float-to-double v12, v0

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v7, v9, v6

    move/from16 v0, v38

    float-to-int v6, v0

    move/from16 v0, v35

    float-to-int v7, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v33

    goto/16 :goto_2
.end method

.method public getLaunchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isDecorationService:Z

    return v0
.end method

.method public getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v6, 0x8

    new-array v5, v6, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x2

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x3

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x4

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x5

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x6

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x7

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/16 v6, 0x8

    new-array v7, v6, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x7

    const/4 v8, 0x0

    aput v8, v7, v6

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    new-array v9, v6, [I

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v8, p2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v6, p3, p4

    new-array v11, v6, [I

    const/16 v6, 0x9

    new-array v0, v6, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, v18

    invoke-static {v9, v11, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runPerspective([I[III[F)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v19

    move/from16 v13, p3

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const-string v6, "Anantha"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Engine time = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v20

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v19
.end method

.method public getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;II)Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverShape()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerWidth()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerHeight()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {p0, v0, v10, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v8

    const/4 v11, 0x0

    aget v5, v8, v11

    const/4 v11, 0x1

    aget v6, v8, v11

    float-to-int v11, v5

    float-to-int v12, v6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyBitmapMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverShape()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerWidth()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerHeight()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, -0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v4, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {p0, v0, v10, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v8

    const/4 v11, 0x0

    aget v5, v8, v11

    const/4 v11, 0x1

    aget v6, v8, v11

    float-to-int v11, v5

    float-to-int v12, v6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyBitmapMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;IIII)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverShape()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerWidth()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerHeight()F

    move-result v10

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p3, v8, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-static {p2, v2, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyBitmapMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCoverShape()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerWidth()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getStickerHeight()F

    move-result v10

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v3, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p3, v8, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-static {p2, v2, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyBitmapMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getPerspectivePointArray(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)[F
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v9

    const/16 v15, 0xe

    new-array v8, v15, [F

    const/4 v15, 0x2

    aget v7, v9, v15

    const/4 v15, 0x3

    aget v4, v9, v15

    const/4 v15, 0x0

    aget v5, v9, v15

    const/4 v15, 0x1

    aget v6, v9, v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    const/4 v15, 0x0

    aput v13, v8, v15

    const/4 v15, 0x1

    aput v14, v8, v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    const/4 v15, 0x2

    aput v13, v8, v15

    const/4 v15, 0x3

    aput v14, v8, v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    const/4 v15, 0x4

    aput v13, v8, v15

    const/4 v15, 0x5

    aput v14, v8, v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v15

    iget-wide v0, v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    const/4 v15, 0x6

    aput v13, v8, v15

    const/4 v15, 0x7

    aput v14, v8, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v10

    new-instance v15, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v16, 0x4

    aget v16, v9, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x5

    aget v18, v9, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-direct/range {v15 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    div-float v15, v7, v15

    mul-float v12, v15, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    div-float v15, v4, v15

    mul-float v2, v15, v10

    const/16 v15, 0x8

    aput v12, v8, v15

    const/16 v15, 0x9

    aput v2, v8, v15

    const/16 v15, 0xa

    const/16 v16, 0x0

    aget v16, v3, v16

    aput v16, v8, v15

    const/16 v15, 0xb

    const/16 v16, 0x1

    aget v16, v3, v16

    aput v16, v8, v15

    const/16 v15, 0xc

    aput v7, v8, v15

    const/16 v15, 0xd

    aput v4, v8, v15

    return-object v8
.end method

.method public getPreviewImageHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    return v0
.end method

.method public getPreviewImageWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    return v0
.end method

.method public getSelectedView()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getStickerBitmap(ILjava/lang/Object;)V
    .locals 13

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedStickerList:Ljava/util/ArrayList;

    add-int/lit8 v10, p1, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v9

    if-nez v9, :cond_1

    const/high16 v9, 0x80000

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v10

    if-ne v9, v10, :cond_1

    instance-of v9, p2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    if-eqz v9, :cond_1

    move-object v9, p2

    check-cast v9, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, ""

    move-object v0, p2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    check-cast p2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    const-string v9, "drawable"

    invoke-virtual {v5, v4, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v9, v5, v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->decodeBaseImage(Landroid/content/res/Resources;I)V

    :goto_1
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getEditTextInfo()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->setEditTextInfo(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v10

    invoke-virtual {v8, p2, v9, v10}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getStickerBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    add-int/lit8 v10, p1, 0x64

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    invoke-virtual {v8, p2, v9, v10}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getStickerBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v9, "PEDIT_SuperImpose"

    const-string v10, "bmp null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSuperImposeBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSuperImposeBmpFor()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    return-object v0
.end method

.method public hideAllOnNewIntent()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public hideAttachGallery(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e00de

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    const v3, 0x7f040010

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    if-eqz v1, :cond_0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeAttachSheet(Landroid/view/View;)V

    goto :goto_1
.end method

.method public highLightView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v0, v2, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSelected(Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSelected(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public ifMaxCountReached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMaxStickerCountReached:Z

    return v0
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->updatePerspectiveMatrix()V

    return-void
.end method

.method public initDecorationMenuLayoutManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setTabOnStickerMenuTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->refreshTabFromManage()V

    :cond_0
    return-void
.end method

.method public initSuperImpose()V
    .locals 10

    const v4, 0x80009

    const/4 v3, 0x6

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setDrawerHandleVisibility(I)V

    new-array v0, v3, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isDecorationService:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getAspectRatio()F

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSuperImposeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSuperImposeBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->setDimensions(FIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    div-float v6, v0, v2

    const/high16 v9, 0x43160000    # 150.0f

    mul-float v0, v9, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPerspWidth:F

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPerspHeight:F

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v2, v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getARGBData()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getARGBWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getARGBHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->setARGB([III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getSphereGeometry()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->setRotation([F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    goto :goto_0
.end method

.method public isCameraOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isCameraOpening()Z

    move-result v0

    goto :goto_0
.end method

.method public isMaxStickerReached()Z
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    rsub-int/lit8 v0, v2, 0x6

    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070097

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mMaxStickerCountReached:Z

    return v1
.end method

.method public isSuperImpose360Service()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    const v1, 0x80009

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuperImposeService()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public makeActionbarVisible(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e030e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionbarLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionbarLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mActionbarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onExitClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->clearViewData(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onKeyDelete()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSelectedView()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_1
    return-void

    :cond_2
    instance-of v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onLanguageChange()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 12

    const v11, 0x80009

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->init()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->updatePerspectiveMatrix()V

    const-string v0, "PEDIT_SuperImpose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getScreenRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getInstance()Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/AgifFrameContainer;->getAspectRatio()F

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSuperImposeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSuperImposeBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->setDimensions(FIIII)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v8, v3, v2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    if-ne v0, v11, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    invoke-direct {v0, v10, v10, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onOrientationChange(Landroid/graphics/RectF;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v0, :cond_4

    invoke-virtual {v8, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setScreenRect(Landroid/graphics/RectF;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getScreenRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_2
    invoke-virtual {v8, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onOrientationChange(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->getScreenRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setScreenRect(Landroid/graphics/RectF;)V

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onOrientatonChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_8
    return-void
.end method

.method public onOrientatonChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->configurationChanged()V

    :cond_0
    return-void
.end method

.method public onSelected(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v7, v7

    if-lez v7, :cond_2

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v7, v7, -0x1

    new-array v4, v7, [I

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v0, v7, v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v7, v0

    if-eq v7, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput v0, v4, v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v7, v0

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSelected(Z)V

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aput v5, v7, v6

    const/4 v2, 0x1

    array-length v7, v4

    move v3, v2

    :goto_2
    if-ge v6, v7, :cond_2

    aget v1, v4, v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    add-int/lit8 v2, v3, 0x1

    aput v1, v8, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onStateChange(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->onStateChange(II)V

    and-int/lit16 v0, p2, -0x100

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrentState(I)V

    :cond_0
    return-void
.end method

.method public onSubState(I)V
    .locals 10

    const-wide/16 v8, 0x12c

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isMaxStickerReached()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_IMAGES_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_IMAGES_EVENT_NAME:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "D100"

    const-string v6, "Image"

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const v5, 0x80001

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrentState(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->isImageLoading:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addImageFromGallery()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V

    goto :goto_0

    :sswitch_1
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_STICKERS_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_STICKERS_EVENT_NAME:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "D100"

    const-string v6, "Sticker"

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const v5, 0x80002

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrentState(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addDecorationFragments(I)V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->makeActionbarVisible(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->enableStickerPicker()V

    goto :goto_1

    :sswitch_2
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_LABELS_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_LABELS_EVENT_NAME:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "D100"

    const-string v6, "Label"

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const v5, 0x80003

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrentState(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Device()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addDecorationFragments(I)V

    :goto_2
    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->makeActionbarVisible(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->lastClickTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->lastClickTime:J

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->enableLabelPicker()V

    goto :goto_2

    :sswitch_3
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_COVERS_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DECORATION_SCREEN_COVERS_EVENT_NAME:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const v5, 0x8000a

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrentState(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->lastClickTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->lastClickTime:J

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->enableCoverPicker()V

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->makeActionbarVisible(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x80001 -> :sswitch_0
        0x80002 -> :sswitch_1
        0x80003 -> :sswitch_2
        0x8000a -> :sswitch_3
    .end sparse-switch
.end method

.method public onSurfaceChanged()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->updatePerspectiveMatrix()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onSurfaceChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->glSuperImposeAgif:Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GLSuperImposeAGIF;->clear()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_3
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onSurfaceCreateCalled:Z

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovY:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v1, v4, v5

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v4, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->fovX:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->updatePerspectiveMatrix()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v4, v6, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetScroll()V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    const v8, 0x7f0e00de

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v8, 0x80000

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v8, "DECORATION_VIEW"

    invoke-virtual {v5, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSelectedView()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->isMoving()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v8, v8, v1

    aget-object v4, v5, v8

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    invoke-virtual {v4, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    return v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    invoke-virtual {v5, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    :cond_8
    move v5, v7

    goto :goto_1
.end method

.method public onView360Moving()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->cancel(Z)Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v2, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v2, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v3, v3, v0

    aget-object v1, v2, v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->enableDrawPreview(Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    return-void
.end method

.method public onView360Stop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v2, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v2, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v3, v3, v0

    aget-object v1, v2, v3

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$1;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mReloadCoverTask:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$ReloadCoverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeDecorationFragments(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0204

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0e0199

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeStateAfterClosingTabsWithAnimation()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationFragment:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V
    .locals 12

    const/4 v11, 0x6

    const/4 v4, 0x0

    new-array v5, v11, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v8, v9, v0

    if-eqz v8, :cond_1

    instance-of v9, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v7, v9, v0

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v4, v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->clear()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v9, v9

    if-ge v0, v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v10, 0x0

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v9, v5

    add-int/lit8 v0, v9, -0x1

    const/4 v1, 0x0

    :goto_3
    if-ltz v0, :cond_5

    aget-object v9, v5, v0

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v10, v5, v0

    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    new-array v3, v11, [I

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_4
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v9, v9

    if-ge v2, v9, :cond_8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    if-le v9, v4, :cond_7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    add-int/lit8 v9, v9, -0x1

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    if-ge v9, v4, :cond_6

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    return-void
.end method

.method public removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;)V
    .locals 13

    const/4 v12, 0x6

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_ID:Ljava/lang/String;

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_DELETE_ID:Ljava/lang/String;

    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->STICKER_SCREEN_DELETE_EVENT_NAME:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->stopGifPlay()V

    const/4 v4, 0x0

    new-array v5, v12, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v8, v9, v0

    if-eqz v8, :cond_2

    instance-of v9, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-eqz v9, :cond_2

    move-object v7, v8

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v4, v0

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isGif()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setIsGifStickerAdded(Z)V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteSuperImposeLayer(I)V

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clear()V

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->clearBitmaps()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v9, v9

    if-ge v0, v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v10, 0x0

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    array-length v9, v5

    add-int/lit8 v0, v9, -0x1

    const/4 v1, 0x0

    :goto_3
    if-ltz v0, :cond_6

    aget-object v9, v5, v0

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    aget-object v10, v5, v0

    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    new-array v3, v12, [I

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_4
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    array-length v9, v9

    if-ge v2, v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    if-le v9, v4, :cond_8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    add-int/lit8 v9, v9, -0x1

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    if-ge v9, v4, :cond_7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v9, v9, v2

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    return-void
.end method

.method protected saveImageOriginal([Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[I[Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;
    .locals 57

    const-string v8, "Anantha"

    const-string v10, "Saving Original Image"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    aget-object v29, p3, v8

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v13

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v9

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v24, v6

    :goto_0
    return-object v24

    :cond_0
    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v9

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v9

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    int-to-float v0, v8

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    int-to-float v0, v8

    move/from16 v47, v0

    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v51, 0x0

    move-object/from16 v0, p3

    array-length v8, v0

    add-int/lit8 v31, v8, -0x1

    :goto_1
    if-lez v31, :cond_8

    aget-object v34, p3, v31

    add-int/lit8 v8, v31, -0x1

    aget v8, p2, v8

    aget-object v52, p1, v8

    check-cast v52, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    if-nez v51, :cond_3

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    add-int/lit8 v8, v31, -0x1

    aget v8, p2, v8

    aget-object v8, p1, v8

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v31, -0x1

    aget v8, p2, v8

    aget-object v8, p1, v8

    if-nez v8, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v31, v31, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v31, -0x1

    aget v8, p2, v8

    aget-object v8, p1, v8

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_4
    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSize()[F

    move-result-object v53

    const/4 v8, 0x0

    aget v8, v53, v8

    div-float v8, v8, v48

    int-to-float v10, v9

    mul-float v54, v8, v10

    const/4 v8, 0x1

    aget v8, v53, v8

    div-float v8, v8, v47

    int-to-float v10, v13

    mul-float v30, v8, v10

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getCenter()[F

    move-result-object v26

    const/4 v8, 0x0

    aget v8, v26, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v10

    div-float v8, v8, v48

    int-to-float v10, v9

    mul-float v27, v8, v10

    const/4 v8, 0x1

    aget v8, v26, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v10

    div-float v8, v8, v47

    int-to-float v10, v13

    mul-float v28, v8, v10

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getAngle()F

    move-result v23

    const/16 v22, 0xff

    if-eqz v34, :cond_2

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v8

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/16 v8, 0xff

    move/from16 v0, v22

    if-ne v0, v8, :cond_5

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_5
    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveWidth()I

    move-result v8

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveData()[I

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveWidth()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveWidth()I

    move-result v20

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getSaveHeight()I

    move-result v21

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_3
    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getState()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_7

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v41, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v0, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    float-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, v41

    move-wide/from16 v1, v16

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    new-instance v42, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v0, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    float-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, v42

    move-wide/from16 v1, v16

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    new-instance v43, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v0, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    float-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, v43

    move-wide/from16 v1, v16

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    new-instance v44, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewWidth:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v0, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewHeight:F

    float-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, v44

    move-wide/from16 v1, v16

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v46

    const/4 v8, 0x4

    new-array v0, v8, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v45, v0

    const/4 v8, 0x2

    aget v40, v46, v8

    const/4 v8, 0x3

    aget v37, v46, v8

    const/4 v8, 0x0

    aget v38, v46, v8

    const/4 v8, 0x1

    aget v39, v46, v8

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v55, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v56, v0

    const/4 v8, 0x0

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v45, v8

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v55, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v56, v0

    const/4 v8, 0x1

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v45, v8

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v55, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v56, v0

    const/4 v8, 0x2

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v45, v8

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v55, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v8

    iget-wide v10, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    double-to-float v0, v10

    move/from16 v56, v0

    const/4 v8, 0x3

    new-instance v10, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v55

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v10, v45, v8

    move/from16 v0, v40

    float-to-int v8, v0

    move/from16 v0, v37

    float-to-int v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v14, v8, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v46

    const/4 v8, 0x2

    aget v40, v46, v8

    const/4 v8, 0x3

    aget v37, v46, v8

    const/16 v23, 0x0

    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v49, v40, v8

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v50, v37, v8

    const/4 v8, 0x4

    aget v32, v46, v8

    const/4 v8, 0x5

    aget v33, v46, v8

    move-object/from16 v0, v35

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v40, v8

    sub-float v8, v32, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v37, v10

    sub-float v10, v33, v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v8, 0x43340000    # 180.0f

    mul-float v8, v8, v23

    float-to-double v10, v8

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v10, v10, v16

    double-to-float v8, v10

    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v8

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_3

    :cond_7
    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v49, v54, v8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v50, v30, v8

    move/from16 v32, v27

    move/from16 v33, v28

    move-object/from16 v0, v35

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v54, v8

    sub-float v8, v32, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v30, v10

    sub-float v10, v33, v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v8, 0x43340000    # 180.0f

    mul-float v8, v8, v23

    float-to-double v10, v8

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v10, v10, v16

    double-to-float v8, v10

    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v14, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_8
    if-eqz v51, :cond_9

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->clear()V

    :cond_9
    move-object/from16 v24, v6

    goto/16 :goto_0
.end method

.method protected saveImagePreview(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 59

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mBGLayer:I

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerData(I)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    move-result-object v40

    if-nez v40, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4

    :cond_2
    if-nez p1, :cond_5

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 v50, v0

    :goto_0
    new-instance v29, Landroid/graphics/Canvas;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStickerCount:I

    add-int/lit8 v36, v5, -0x1

    :goto_1
    if-ltz v36, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v54, v5, v6

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getType()I

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v54, v5, v6

    check-cast v54, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    :goto_2
    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getSize()[F

    move-result-object v55

    const/4 v5, 0x0

    aget v5, v55, v5

    div-float v5, v5, v51

    int-to-float v6, v7

    mul-float v56, v5, v6

    const/4 v5, 0x1

    aget v5, v55, v5

    div-float v5, v5, v50

    int-to-float v6, v11

    mul-float v35, v5, v6

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCenter()[F

    move-result-object v30

    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float v5, v5, v51

    int-to-float v6, v7

    mul-float v31, v5, v6

    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v5, v5, v50

    int-to-float v6, v11

    mul-float v32, v5, v6

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getAngle()F

    move-result v28

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getAlpha()F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v39

    const/4 v12, 0x0

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getType()I

    move-result v5

    const/16 v6, 0x65

    if-ne v5, v6, :cond_7

    move-object/from16 v5, v54

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_3
    :goto_3
    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isCoverSticker()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getCoverShape()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getNormalBoundingRect()[F

    move-result-object v33

    const/4 v5, 0x2

    aget v5, v33, v5

    div-float v5, v5, v51

    int-to-float v6, v7

    mul-float v15, v5, v6

    const/4 v5, 0x3

    aget v5, v33, v5

    div-float v5, v5, v50

    int-to-float v6, v11

    mul-float v16, v5, v6

    const/4 v5, 0x0

    aget v5, v33, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float v5, v5, v51

    int-to-float v6, v7

    mul-float v13, v5, v6

    const/4 v5, 0x1

    aget v5, v33, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v5, v5, v50

    int-to-float v6, v11

    mul-float v14, v5, v6

    move/from16 v17, v28

    move/from16 v18, v56

    move/from16 v19, v35

    invoke-static/range {v12 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getSquareMaskedBitmap(Landroid/graphics/Bitmap;FFFFFFF)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v41, Landroid/graphics/Matrix;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x4

    aget v5, v33, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float v5, v5, v51

    int-to-float v6, v7

    mul-float v37, v5, v6

    const/4 v5, 0x5

    aget v5, v33, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v5, v5, v50

    int-to-float v6, v11

    mul-float v38, v5, v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v0, v5, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x4

    aget v5, v33, v5

    const/4 v6, 0x5

    aget v6, v33, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCenter(FF)V

    const/4 v5, 0x2

    aget v5, v33, v5

    const/4 v6, 0x3

    aget v6, v33, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSize(FF)V

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setAngle(F)V

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverSaveData([I)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSaveWidth(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSaveHeight(I)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v15, v5

    sub-float v5, v37, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v16, v6

    sub-float v6, v38, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_4
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v4, p1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v0, v7

    move/from16 v51, v0

    int-to-float v0, v11

    move/from16 v50, v0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v54, v5, v6

    check-cast v54, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/16 v5, 0xff

    move/from16 v0, v27

    if-ne v0, v5, :cond_3

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_3

    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v56, v5

    sub-float v5, v31, v5

    float-to-int v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v35, v6

    sub-float v6, v32, v6

    float-to-int v6, v6

    move/from16 v0, v56

    float-to-int v8, v0

    invoke-static {v12, v5, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getCircleMaskedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v41, Landroid/graphics/Matrix;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v37, v31

    move/from16 v38, v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v0, v5, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setAngle(F)V

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setCoverSaveData([I)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSaveWidth(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setSaveHeight(I)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v56, v5

    sub-float v5, v37, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v35, v6

    sub-float v6, v38, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    :cond_9
    new-instance v41, Landroid/graphics/Matrix;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v52, v56, v5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v53, v35, v5

    move/from16 v37, v31

    move/from16 v38, v32

    move-object/from16 v0, v41

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v56, v5

    sub-float v5, v37, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v35, v6

    sub-float v6, v38, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v5, 0x43340000    # 180.0f

    mul-float v5, v5, v28

    float-to-double v8, v5

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v8, v8, v20

    double-to-float v5, v8

    move-object/from16 v0, v41

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mOrder:[I

    aget v6, v6, v36

    aget-object v54, v5, v6

    check-cast v54, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getPerspectiveBoundingRect()[F

    move-result-object v49

    const/4 v5, 0x4

    new-array v0, v5, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v47, v0

    const/4 v5, 0x2

    aget v46, v49, v5

    const/4 v5, 0x3

    aget v43, v49, v5

    const/4 v5, 0x0

    aget v44, v49, v5

    const/4 v5, 0x1

    aget v45, v49, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v57, v0

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP1()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v58, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v57

    float-to-double v8, v0

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v47, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v57, v0

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP2()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v58, v0

    const/4 v5, 0x1

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v57

    float-to-double v8, v0

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v47, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v57, v0

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP3()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v58, v0

    const/4 v5, 0x2

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v57

    float-to-double v8, v0

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v47, v5

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v57, v0

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getP4()Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-result-object v5

    iget-wide v8, v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v8, v8, v20

    double-to-float v0, v8

    move/from16 v58, v0

    const/4 v5, 0x3

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move/from16 v0, v57

    float-to-double v8, v0

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v6, v47, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v19, p0

    move-object/from16 v20, v54

    move-object/from16 v21, v12

    move-object/from16 v22, v47

    invoke-virtual/range {v19 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveCoverBitmap(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;Landroid/graphics/Bitmap;[Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;II)Landroid/graphics/Bitmap;

    move-result-object v19

    :goto_5
    const/16 v28, 0x0

    new-instance v41, Landroid/graphics/Matrix;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v52, v46, v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v53, v43, v5

    const/4 v5, 0x4

    aget v37, v49, v5

    const/4 v5, 0x5

    aget v38, v49, v5

    move-object/from16 v0, v41

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v46, v5

    sub-float v5, v37, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v43, v6

    sub-float v6, v38, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v5, 0x43340000    # 180.0f

    mul-float v5, v5, v28

    float-to-double v8, v5

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v8, v8, v20

    double-to-float v5, v8

    move-object/from16 v0, v41

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance v48, Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v41

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v54 .. v54}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->isCoverSticker()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/4 v6, 0x4

    aget v6, v49, v6

    float-to-double v8, v6

    const/4 v6, 0x5

    aget v6, v49, v6

    float-to-double v0, v6

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v5, v8, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v42

    int-to-float v5, v7

    div-float v5, v46, v5

    mul-float v56, v5, v51

    int-to-float v5, v11

    div-float v5, v43, v5

    mul-float v35, v5, v50

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v0, v5, [I

    move-object/from16 v18, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    aget v5, v42, v5

    const/4 v6, 0x1

    aget v6, v42, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCenter(FF)V

    move-object/from16 v0, v54

    move/from16 v1, v56

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSize(FF)V

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setAngle(F)V

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setCoverSaveData([I)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveWidth(I)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->setSaveHeight(I)V

    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    :cond_c
    move/from16 v0, v46

    float-to-int v5, v0

    move/from16 v0, v43

    float-to-int v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v12, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_5
.end method

.method public setScreenRect(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mSIViews:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setScreenRect(Landroid/graphics/RectF;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setStateToSticker()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const v1, 0x80002

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method

.method public setStateToSuperimpose()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method

.method public setSuperImposeStateAfterClosingTabsWithAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setImageLoadingFalse()V

    return-void
.end method

.method public setTabOnStickerMenuTouch(Z)V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrTabPos(I)V

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTabIndex(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getStickerPagesInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getStickerPagesInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v9, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrTabPos(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTabIndex(I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setCurrTabPos(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTabIndex(I)V

    goto :goto_0
.end method

.method public showDialog(I)V
    .locals 14

    const v13, 0x7f0c00b1

    const v12, 0x1060019

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/high16 v9, 0x41800000    # 16.0f

    const-string v6, "PEDIT_SuperImpose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " label is showDialog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setLabelStyleNum(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setLabelStyleNum(I)V

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->populateLabelDialogue()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x7f070197

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;I)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f070092

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$5;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0e010f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v5, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->setPositiveButton(Landroid/widget/Button;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v11, v9}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLabelDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v11, v9}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method public updateEditableString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getSelectedView()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateEditableString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
