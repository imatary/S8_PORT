.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Portrait.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;
    }
.end annotation


# static fields
.field private static RED_EYE_DETECTION_ZONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_Portrait"

.field private static final stepIncrementalValue:I = 0xa


# instance fields
.field private check_face_orientation:[I

.field private detected_face:I

.field private isEyeDetected:Z

.field private isPortraitEffectApplied:Z

.field private mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

.field private mCurrentBrightFaceStep:I

.field private mCurrentLargeEyesStep:I

.field private mCurrentOutOfFocusStep:I

.field private mCurrentSlimFaceStep:I

.field private mCurrentSlimLegsStep:I

.field private mCurrentSoftenFaceStep:I

.field private mEffectType:I

.field private mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

.field private mEyeRects:[Landroid/graphics/RectF;

.field private mFaceDetected:Z

.field private mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

.field private mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

.field private mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

.field private mFaceRect:[Landroid/graphics/Rect;

.field private mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field private mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

.field private mIsEngineLoaded:Z

.field private mIsSelectFace:Z

.field private mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

.field private mNormalizedFaceRects:[Landroid/graphics/RectF;

.field private mNumEyeFaces:I

.field private mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mProgress:I

.field private mProgressFromExecutor:I

.field private mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

.field private mRedEyetextView:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSelectedFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowArcSoftCircle:Z

.field private mShowEyeCircles:Z

.field private mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

.field private misRedEyeEffectAppied:Z

.field private numFaces:I

.field private result_face_orientation:I

.field private tmpBuffer:[I

.field private tmpBufferHeight:I

.field private tmpBufferWidth:I

.field private tmpOutputBuffer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 8

    const/16 v1, 0x2000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->misRedEyeEffectAppied:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isPortraitEffectApplied:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isEyeDetected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initBeautyEngine(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->exitPortrait()V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initCircles(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I

    return-object p1
.end method

.method static synthetic access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferHeight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->applyFirstEffect()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/beauty/PhotoEditorBeauty;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->result_face_orientation:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->addFaceRectFromEngine(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I

    return p1
.end method

.method static synthetic access$2702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initEyeDetection()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/samsung/android/saiv/face/slimFigureEngine;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    return p1
.end method

.method static synthetic access$3502(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    return p1
.end method

.method static synthetic access$3602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    return p1
.end method

.method static synthetic access$3702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    return p1
.end method

.method static synthetic access$3802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    return p1
.end method

.method private addFaceRectFromEngine(I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    invoke-virtual {v3, v1}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->checkCorrectFaceRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    aput-object v3, v4, v1

    const-string v3, "PEDIT_Portrait"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ROI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private applyFirstEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$6;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private applyRedEyeEffect(FF)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isTouchInEye(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isEyeDetected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->runAnimation(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v7, 0x1e

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v6, v0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    const/4 v1, 0x2

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->runAnimation(III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v1

    div-float p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v1

    div-float p2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->removeRedeyeApplyOnFull([I[IIIIII)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    array-length v2, v2

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->misRedEyeEffectAppied:Z

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x14

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v6, v0

    goto/16 :goto_2
.end method

.method private checkCorrectFaceRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private static convertFaceInfoFromA2S(Landroid/graphics/Rect;J)Lcom/samsung/android/media/face/SemFace;
    .locals 9

    const-wide/16 v6, 0x14f

    const-wide/16 v4, 0x19

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_1

    :cond_0
    cmp-long v2, p1, v6

    if-lez v2, :cond_2

    const-wide/16 v2, 0x168

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string v2, "PEDIT_Portrait"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InRange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    :goto_1
    return-object v2

    :cond_2
    cmp-long v2, p1, v4

    if-ltz v2, :cond_3

    const-wide/16 v2, 0x46

    cmp-long v2, p1, v2

    if-gtz v2, :cond_3

    const/16 v1, 0x10

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x122

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    cmp-long v2, p1, v6

    if-gtz v2, :cond_4

    const/16 v1, 0x70

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "PEDIT_Portrait"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$10;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void
.end method

.method private exitPortrait()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getRotation(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    const/16 v3, 0x5a

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/16 v3, 0xb4

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    const/16 v3, 0x10e

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSelectedFace(FF)I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNormalizedFaceRects:[Landroid/graphics/RectF;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNormalizedFaceRects:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNormalizedFaceRects:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private handleFaceSelection(FF)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->getSelectedFace(FF)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    if-ne v4, v5, :cond_4

    if-eq v3, v8, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_3

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    const-string v4, "PEDIT_Portrait"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " The Selected faces are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->reselectFaces()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-ne v3, v8, :cond_2

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private initBeautyEngine(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->getInstance()Lcom/samsung/android/beauty/PhotoEditorBeauty;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iput v4, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iput v4, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iput v4, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iput v4, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-static {v5, v6, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III[I)[B

    move-result-object v1

    const-string v5, "PEDIT_Portrait"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init with image ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    aget v5, v2, v4

    aget v6, v2, v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I

    aget v7, v7, v0

    invoke-static {v1, v5, v6, v7}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->runFD([BIII)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->check_face_orientation:[I

    aget v5, v5, v0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->result_face_orientation:I

    :cond_0
    const-string v5, "PEDIT_Portrait"

    const-string v6, "Init finish"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->detected_face:I

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->addFaceRectFromEngine(I)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lez v5, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v4, v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->showMaxTenFaceToast()V

    :cond_2
    :goto_1
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    move v3, v4

    goto :goto_1
.end method

.method private initCircles(Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v6, v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v6, v6

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    new-array v6, v6, [Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNormalizedFaceRects:[Landroid/graphics/RectF;

    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v6, v6

    new-array v6, v6, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    aput-object v7, v6, v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v6

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v6

    mul-float/2addr v6, v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v6, v6, v0

    add-float v7, v2, v3

    add-float v8, v4, v5

    invoke-virtual {v6, v2, v4, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setBoundry(FFFF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNormalizedFaceRects:[Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v2, v3

    add-float v9, v4, v5

    invoke-direct {v7, v2, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v7, v6, v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    if-nez p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setSelected(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setSelected(Z)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v7, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v7, v6, :cond_4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v7, v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v7, v6

    invoke-virtual {v6, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setSelected(Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    const/16 v7, 0x2001

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    const/16 v7, 0x2007

    if-eq v6, v7, :cond_6

    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    :goto_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_6
    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    goto :goto_3

    :cond_7
    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    goto :goto_3
.end method

.method private initEyeDetection()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cleanUp()V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->releaseEyeDetection()V

    new-instance v18, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v18, Lcom/samsung/android/media/face/SemFaceLandmark;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/media/face/SemFaceLandmark;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/face/SemFaceLandmark;->init()I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isEyeDetected:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v8, v7}, Lcom/samsung/android/media/face/SemFaceDetection;->run([BIILjava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->releaseEyeDetection()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isEyeDetected:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    move/from16 v18, v0

    const/16 v19, 0x2001

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNumEyeFaces:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNumEyeFaces:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeRects:[Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNumEyeFaces:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mNumEyeFaces:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    new-instance v6, Lcom/samsung/android/media/face/SemFace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;)V

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->result_face_orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v8, v6}, Lcom/samsung/android/media/face/SemFaceLandmark;->findEyes([BIILcom/samsung/android/media/face/SemFace;)[Landroid/graphics/Point;

    move-result-object v11

    if-eqz v11, :cond_6

    array-length v0, v11

    move/from16 v18, v0

    if-eqz v18, :cond_6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v19, v19, 0x1

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    aput-object v20, v18, v19

    const/16 v18, 0x0

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v13, v18, v19

    const/16 v18, 0x2

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v15, v18, v19

    const/16 v18, 0x4

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    const/16 v18, 0x6

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    const/16 v19, 0x2

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v13

    add-float v18, v18, v14

    const/high16 v19, 0x40000000    # 2.0f

    div-float v3, v18, v19

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v15

    add-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v18, v19

    add-float v18, v14, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    aget-object v18, v18, v19

    sub-float v19, v3, v2

    sub-float v20, v4, v2

    add-float v21, v3, v2

    add-float v22, v4, v2

    invoke-virtual/range {v18 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setBoundry(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    aget-object v18, v18, v19

    const v19, 0x3f0a3d71    # 0.54f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeRects:[Landroid/graphics/RectF;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    new-instance v20, Landroid/graphics/RectF;

    sget v21, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v13, v21

    sget v22, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v15, v22

    add-float v23, v13, v14

    sget v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    add-float v24, v15, v16

    sget v25, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    mul-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    invoke-direct/range {v20 .. v24}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v20, v18, v19

    const/16 v18, 0x8

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v13, v18, v19

    const/16 v18, 0xa

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v15, v18, v19

    const/16 v18, 0xc

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    const/16 v19, 0x8

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    const/16 v18, 0xe

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    const/16 v19, 0xa

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v13

    add-float v18, v18, v14

    const/high16 v19, 0x40000000    # 2.0f

    div-float v3, v18, v19

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v15

    add-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v18, v19

    add-float v18, v14, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-object v18, v18, v19

    sub-float v19, v3, v2

    sub-float v20, v4, v2

    add-float v21, v3, v2

    add-float v22, v4, v2

    invoke-virtual/range {v18 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setBoundry(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-object v18, v18, v19

    const v19, 0x3f0a3d71    # 0.54f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeRects:[Landroid/graphics/RectF;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v19, v19, 0x1

    new-instance v20, Landroid/graphics/RectF;

    sget v21, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v13, v21

    sget v22, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v15, v22

    add-float v23, v13, v14

    sget v24, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    add-float v24, v15, v16

    sget v25, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->RED_EYE_DETECTION_ZONE:I

    mul-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    invoke-direct/range {v20 .. v24}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v20, v18, v19

    goto/16 :goto_3

    :cond_8
    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->releaseEyeDetection()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isEyeDetected:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    move/from16 v18, v0

    const/16 v19, 0x2001

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->updateTextRedEye()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->releaseEyeDetection()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    move/from16 v18, v0

    const/16 v19, 0x2001

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_1

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    goto :goto_4
.end method

.method private isTouchInEye(FF)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeRects:[Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeRects:[Landroid/graphics/RectF;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private reselectFaces()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private showMaxTenFaceToast()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->enablePortraitButtons()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBufferHeight:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_1
    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isPortraitEffectApplied:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->misRedEyeEffectAppied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f070182

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->doCancel()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_SELECT_FACE:Ljava/lang/String;

    const-string v3, "Select face"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->misRedEyeEffectAppied:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_FIX_RED_EYE:Ljava/lang/String;

    const-string v3, "Fix Red eye"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_TAP_FIX_RED_EYE:Ljava/lang/String;

    const-string v3, "Fix Red eye"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_BRIGHT_FACE:Ljava/lang/String;

    const-string v3, "Bright face"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_SOFTEN_FACE:Ljava/lang/String;

    const-string v3, "Soften face"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_LARGE_EYES:Ljava/lang/String;

    const-string v3, "Large eyes"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_SLIM_FACE:Ljava/lang/String;

    const-string v3, "Slim face"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_BLUR_BG:Ljava/lang/String;

    const-string v3, "Blue BG"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Adjust value"

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_9
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_LONG_LEGS:Ljava/lang/String;

    const-string v3, "Long legs"

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_PORTRAIT:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_PORTRAIT_ADJUST_VALUE:Ljava/lang/String;

    const-string v3, "Long legs "

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    int-to-long v6, v4

    invoke-static {v0, v2, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->afterSlimLegs()V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->enablePortraitButtons()V

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentBrightFaceStep:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSoftenFaceStep:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentLargeEyesStep:I

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimFaceStep:I

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsSelectFace:Z

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->misRedEyeEffectAppied:Z

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setEdited()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->reloadThumbnail()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "E400"

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLogMultipleFeature(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0
.end method

.method public draw()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    const/16 v4, 0x2001

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->draw()V

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->draw()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->draw()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public freeResources()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->numFaces:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mEyes:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;->mFaces:[Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->finishPortraitEngine()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    invoke-static {}, Lcom/samsung/android/saiv/face/slimFigureEngine;->Release()I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceRect:[Landroid/graphics/Rect;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    if-eqz v1, :cond_5

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->cleanUp()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cleanUp()V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mArcSoftOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    :cond_9
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cleanUp()V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEyeOvals:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;

    :cond_c
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpBuffer:[I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$7;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isPortraitEffectApplied:Z

    return-void
.end method

.method public getFaceInfo()Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    return-object v0
.end method

.method public getStringForLoggingApi(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "REDEYEFIX"

    goto :goto_0

    :pswitch_1
    const-string v0, "FACEBRIGHTNESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "OUTOFFOCUS"

    goto :goto_0

    :pswitch_3
    const-string v0, "SOFTEN_BUTTON"

    goto :goto_0

    :pswitch_4
    const-string v0, "LARGE_EYE"

    goto :goto_0

    :pswitch_5
    const-string v0, "SLIM_FACE"

    goto :goto_0

    :pswitch_6
    const-string v0, "LONG_LEGS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    const/16 v1, 0x2002

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->initilizeArray()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e018a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRootView:Landroid/view/View;

    const v2, 0x7f0e0307

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitPortrait;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e042e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "portrait"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isApplyAvailable:Z

    return-void
.end method

.method public initPortraitEngine(ZLcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->initPortraitEngine(ZLcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initSlimLegs()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/saiv/face/slimFigureEngine;

    invoke-direct {v0}, Lcom/samsung/android/saiv/face/slimFigureEngine;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mSlimFigureEngine:Lcom/samsung/android/saiv/face/slimFigureEngine;

    invoke-static {}, Lcom/samsung/android/saiv/face/slimFigureEngine;->Init()I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initBeautyEngine(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->iniFistSlimLegs()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSlimFigureEnable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSlimFigureEnable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSlimFigureEnable(Z)V

    goto :goto_0
.end method

.method public isFaceDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    return v0
.end method

.method public isPortraitEngineLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    return v0
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChange()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initCircles(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    :cond_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$9;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$9;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2002
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChange(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->handleFaceSelection(FF)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrState:I

    const/16 v1, 0x2007

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->afterSlimLegs()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSubState(I)V
    .locals 8

    const/16 v7, 0x2007

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mIsEngineLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProperty:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentOutOfFocusStep:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mCurrentSlimLegsStep:I

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->isPortraitEffectApplied:Z

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->afterSlimLegs()V

    :cond_4
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->tmpOutputBuffer:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v0, 0x2001

    if-eq p1, v0, :cond_7

    if-eq p1, v7, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z

    const/16 v0, 0x2001

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    packed-switch p1, :pswitch_data_0

    :goto_2
    if-eq p1, v7, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->getStringForLoggingApi(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->addToExtraArray(Ljava/lang/String;)V

    :cond_6
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekbarColor([III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "E401"

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->getStringForLoggingApi(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMaxSeek(I)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    if-nez v0, :cond_9

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    :goto_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    :cond_8
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mInitSAIV:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->init()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGLRedEyeAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->onSurfaceChanged()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetected:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I

    const/16 v4, 0x2001

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->applyRedEyeEffect(FF)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public releaseEyeDetection()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    invoke-virtual {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceLandmarkEngine:Lcom/samsung/android/media/face/SemFaceLandmark;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mFaceDetectionEngine:Lcom/samsung/android/media/face/SemFaceDetection;

    return-void
.end method

.method public setProgressPortrait(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgressFromExecutor:I

    :cond_0
    return-void
.end method

.method public updateTextRedEye()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
