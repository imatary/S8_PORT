.class public final Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Drawing.java"


# static fields
.field public static final BTN_STATE_BACK:I = 0x0

.field public static final BTN_STATE_ERASER:I = 0x2

.field public static final BTN_STATE_PEN:I = 0x1

.field public static final BTN_STATE_REDO:I = 0x4

.field public static final BTN_STATE_UNDO:I = 0x3

.field private static final CURRENT_SHOWING_SETTING_VIEW:I = 0x10

.field private static final MSG_LOAD_SPEN:I = 0x0

.field private static final MSG_LOAD_SPENVIEW:I = 0x2

.field private static final MSG_OPEN_DRAWING:I = 0x1

.field public static final REDOALL_DIALOG:I = 0x1

.field private static final SPENSDK_URL:Ljava/lang/String; = "samsungapps://ProductDetail/com.samsung.android.sdk.spen30_64"

.field private static final SPEN_MAX_ZOOM_RATIO:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "PEDIT_Drawing"

.field public static final UNDOALL_DIALOG:I = 0x2

.field private static mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

.field private static mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;


# instance fields
.field private eraserLayout:Landroid/widget/LinearLayout;

.field private forceRecreateSpenView:Z

.field private isClearing:Z

.field private isDrawing:Z

.field private isSpenLoading:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvasContainer:Landroid/widget/RelativeLayout;

.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

.field private mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

.field private mCurMotionEvent:Landroid/view/MotionEvent;

.field private mCurrentWindowHeight:I

.field private mCurrentWindowWidth:I

.field mEraserLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

.field private mEraserSettingViewHeight:I

.field private mEraserSettingViewWidth:I

.field private mEventListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

.field private mFinalRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistoryListener:Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;

.field private mIsEraserSettingViewInited:Z

.field private mIsPenSettingViewInited:Z

.field private mLangChanged:Z

.field private mMode:I

.field private mParent:Landroid/widget/FrameLayout;

.field private mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

.field private mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

.field private mPenIcon:Landroid/widget/ImageView;

.field mPenLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

.field private mPenSettingViewHeight:I

.field private mPenSettingViewWidth:I

.field private mPenTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field mPopupHandler:Landroid/os/Handler;

.field private mPrevLayoutRect:Landroid/graphics/Rect;

.field private mPrevTime:J

.field private mPrevZoomRatio:F

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSPenCanvasHeight:I

.field private mSPenCanvasWidth:I

.field private mSPenInitialHeight:I

.field private mSPenInitialWidth:I

.field private mSettingContainer:Landroid/widget/RelativeLayout;

.field private mSettingHandler:Landroid/os/Handler;

.field private mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

.field private mSpenLoaded:Z

.field private mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

.field private mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

.field private mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

.field private mSpenZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

.field private mSpoidVisibiltyListner:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

.field private mSrcImageRect:Landroid/graphics/Rect;

.field private mUndoStarckEmpty:Z

.field private mZoomRatio:F

.field mZoomValue:Ljava/lang/Float;

.field private penLayout:Landroid/widget/LinearLayout;

.field posX:I

.field posY:I

.field private redoLayout:Landroid/widget/LinearLayout;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private undoLayout:Landroid/widget/LinearLayout;

.field zoomLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 10

    const/high16 v1, 0x40000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHistoryListener:Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpoidVisibiltyListner:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEventListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mParent:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J

    const v0, 0x40001

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isSpenLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->penLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->eraserLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->undoLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->redoLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLangChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->forceRecreateSpenView:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initHandler()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const-string v0, "service"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-eqz v9, :cond_1

    const-string v0, "adjustment"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "effect"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpen()V

    :cond_2
    if-eqz v9, :cond_3

    const-string v0, "decoration"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpen()V

    :cond_3
    return-void
.end method

.method private IsOutsidePageDoc(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 6

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->convertRelative(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    const-string v3, "PEDIT_Drawing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dstRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PEDIT_Drawing"

    const-string v4, " inside pagedoc "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "PEDIT_Drawing"

    const-string v4, " outside page doc "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setNewSPenView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mParent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->forceRecreateSpenView:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setColorPickerPosition()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpenView()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->selectPenButton()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->IsOutsidePageDoc(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPopupState(IZ)V

    return-void
.end method

.method private checkLanguageChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLangChanged:Z

    return v0
.end method

.method private checkSettingViewInited(I)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x1

    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v3, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertRelative(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    move-object v0, p1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getFrameStartPosition()Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v4, "PEDIT_Drawing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " StartFrame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private fitPopupIntoMotherLayout(II)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V

    invoke-virtual {v1, v6, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setPosition(II)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isShown()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setViewMode(II)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setExpandBarPosition"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setViewMode(I)V

    goto :goto_1
.end method

.method private fitSPenIntoMotherLayout()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoomable(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    int-to-float v5, v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    cmpl-float v5, v2, v3

    if-ltz v5, :cond_1

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setMinZoomRatio(F)Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setMaxZoomRatio(F)Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v5, v7, v7, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "drawing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;

    return-void
.end method

.method private initSpenView()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initUI()V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setBlankColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setControlListener(Lcom/samsung/android/sdk/pen/engine/SpenControlListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPenDetachmentListener(Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setSpenPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "spen_save_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v0, :cond_0

    sput-object v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    if-eqz v0, :cond_1

    sput-object v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "eraserSize"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "eraserType"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "penAdvancedSetting"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "penColor"

    const/high16 v3, -0x1000000

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "penIsCurvable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "penName"

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "penSize"

    const/high16 v3, 0x41200000    # 10.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setSpenPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setEraserInfoList(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevSpenSettingEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideProgress()V

    :cond_3
    return-void
.end method

.method private newSpenListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$9;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$9;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpoidVisibiltyListner:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHistoryListener:Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$11;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$11;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenZoomListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$14;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$14;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$15;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$15;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEventListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    return-void
.end method

.method private refreshPenEraserBtnState(I)V
    .locals 8

    const v7, 0x7f0e023c

    const/4 v6, 0x1

    const v5, 0x7f0e023d

    const v4, 0x7f0e0239

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x40001

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v2, 0x40002

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    if-eqz v1, :cond_1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private refreshPopupState(IZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v7, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080457

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setLayoutDirection(I)V

    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    const/16 v14, 0x10

    move/from16 v0, p1

    if-ne v0, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewHeight:I

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0804a1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    :cond_4
    const/4 v14, 0x1

    if-ne v7, v14, :cond_b

    new-instance v9, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v3, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08023a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080326

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v14, v15

    sub-int v13, v10, v14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V

    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isShown()Z

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v14

    const/4 v15, 0x5

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setViewMode(II)V

    :cond_6
    :goto_2
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    const/16 v14, 0x10

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v14

    if-eqz v14, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewHeight:I

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0804a1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    :cond_8
    new-instance v9, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    const/4 v14, 0x1

    if-ne v7, v14, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v3, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08023a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080326

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewHeight:I

    add-int/2addr v14, v15

    sub-int v13, v10, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    add-int/2addr v14, v12

    if-le v14, v11, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v11

    sub-int/2addr v12, v14

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setViewMode(I)V

    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setPosition(II)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x2

    if-ne v7, v14, :cond_5

    new-instance v9, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v3, v14

    add-int v14, v10, v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenSettingViewHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08023a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080325

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    add-int v15, v15, v16

    sub-int v13, v14, v15

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    if-ge v14, v2, :cond_c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    :cond_c
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_e
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "setExpandBarPosition"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x1

    :try_start_1
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3e8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v6, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x2

    if-ne v7, v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08023a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080325

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v14, v15

    sub-int v13, v10, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v3, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    add-int/2addr v14, v12

    if-le v14, v11, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserSettingViewWidth:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v11

    sub-int/2addr v12, v14

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPopupHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private resetFlagSettingViewInit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    return-void
.end method

.method private saveCurrentPenSetting()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const-string v4, "spen_save_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    if-eqz v2, :cond_0

    const-string v3, "penAdvancedSetting"

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "penColor"

    iget v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "penIsCurvable"

    iget-boolean v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "penName"

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "penSize"

    iget v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "eraserType"

    iget v4, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "eraserSize"

    iget v4, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private selectPenButton()V
    .locals 11

    const v10, 0x40001

    const/4 v9, 0x1

    const/4 v8, 0x2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const v7, 0x7f0e0239

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    const/4 v3, -0x1

    const/4 v0, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x2

    const/4 v5, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setViewMode(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    :cond_1
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPenEraserBtnState(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->toggleShowSettingView(II)Z

    return-void
.end method

.method private setColorPickerPosition()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setColorPickerPosition(II)V

    goto :goto_0
.end method

.method private setNewSPenView()V
    .locals 14

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isSpenLoading:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v10

    if-eqz v10, :cond_c

    :cond_0
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-nez v10, :cond_4

    const-string v10, "PEDIT_Drawing"

    const-string v11, "mSettingView null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0xc8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const v11, 0x7f0e022a

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const v11, 0x7f0e022b

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v10, Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-direct {v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    :cond_3
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;

    invoke-direct {v11, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->newSpenListener()V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEventListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setEraserListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;)V

    const-string v10, "PEDIT_Drawing"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSettingView initialization time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setSettingView()V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I

    if-ne v10, v11, :cond_5

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->forceRecreateSpenView:Z

    if-eqz v10, :cond_d

    :cond_5
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I

    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;II)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    if-eqz v4, :cond_e

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->appendPage()Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V

    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z

    :cond_9
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setBackgroundColor(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setVolatileBackgroundImage(Landroid/graphics/Bitmap;)V

    :cond_a
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setBackgroundImageMode(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHistoryListener:Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)V

    const/4 v5, 0x1

    const/4 v1, 0x2

    const/4 v6, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTipEnabled(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    :cond_b
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->fitSPenIntoMotherLayout()V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    if-eqz v4, :cond_c

    const-wide/16 v10, 0x64

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    :goto_5
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isSpenLoading:Z

    const-string v10, "PEDIT_Drawing"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Drawing::setNewSPenView time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_e
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method private setSettingView()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e022a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e022b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setCanvasSize(II)V

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setSpenCanvas(II)V

    const-string v2, "PEDIT_Drawing"

    const-string v3, "setSettingView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setViewMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setViewMode(II)V

    :cond_0
    return-void
.end method

.method private showDownloadPopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    const/16 v1, 0x9

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$6;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    return-void
.end method

.method private updateDrawingParams()V
    .locals 6

    const v5, 0x7f0802e3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0233

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$18;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->close()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->penLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->penLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->eraserLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->eraserLayout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->undoLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->undoLayout:Landroid/widget/LinearLayout;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->redoLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->redoLayout:Landroid/widget/LinearLayout;

    :cond_4
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    return-void
.end method

.method public doCancel()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_CANCEL_ID:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_CANCEL_EVENT_NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 28

    sget-object v23, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v24, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_APPLY_ID:Ljava/lang/String;

    sget-object v25, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_APPLY_EVENT_NAME:Ljava/lang/String;

    invoke-static/range {v23 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v23

    check-cast v23, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectCount(Z)I

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->doCancel()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    const/16 v25, 0x111

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->capturePage(FI)Landroid/graphics/Bitmap;

    move-result-object v18

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_6

    if-nez v11, :cond_5

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v14

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v15, v0

    new-instance v7, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v10, v0

    const-string v23, "PEDIT_Drawing"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Zoom ratio = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v23, v21, v20

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    sub-int v20, v23, v21

    :cond_7
    add-int v23, v22, v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    sub-int v10, v23, v22

    :cond_8
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    add-int v25, v21, v20

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-int v26, v22, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v14, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v25

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SpenEngineUtil;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    const-string v23, "PEDIT_Drawing"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Span X & Y are "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "PEDIT_Drawing"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "temp is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mFinalRect before= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x32

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    const/16 v23, 0x32

    const/16 v24, 0x32

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    rsub-int/lit8 v23, v23, 0x32

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    rsub-int/lit8 v24, v24, 0x32

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    rsub-int/lit8 v23, v23, 0x32

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v8, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    rsub-int/lit8 v23, v23, 0x32

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v9, v0

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v24, v24, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    sub-float v25, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    add-float v26, v26, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    add-float v27, v27, v9

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    const-string v23, "PEDIT_Drawing"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "min width fail case bmp is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mFinalRect after= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x40000

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x40000

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_3
.end method

.method public draw()V
    .locals 0

    return-void
.end method

.method public freeResources()V
    .locals 5

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->saveCurrentPenSetting()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public freeResourcesAfterDrawing()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setVolatileBackgroundImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->update()V

    :cond_0
    return-void
.end method

.method public getFinalRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mFinalRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPreviewHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public init()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-nez v9, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    const/4 v0, 0x2

    const/4 v7, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->fitSPenIntoMotherLayout()V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTipEnabled(Z)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    const v10, 0x7f0e023b

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearHistory()V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v9, 0x32

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setColorPickerPosition()V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpoidVisibiltyListner:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    invoke-virtual {v4, v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenSpuitVisibilityChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;)V

    const v9, 0x40001

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    const v9, 0x40001

    invoke-direct {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPenEraserBtnState(I)V

    iget-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    iget-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshMenuIcon(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevLayoutRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->update()V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->onPause()V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initZoomButton()V

    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    if-nez v9, :cond_4

    monitor-exit p0

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public initSpen()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initUI()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e022b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e022a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCanvasContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e022c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mParent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0239

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->penLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e023d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->eraserLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0240

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->undoLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0243

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->redoLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    const v1, 0x7f0e0238

    const v2, 0x7f0e0236

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setDrawingListenersForDream(II)V

    return-void
.end method

.method public initZoomButton()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e022d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e022e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->zoomLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e022f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$20;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$20;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$21;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$21;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$22;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$22;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->doDone(Z)V

    goto :goto_0
.end method

.method public onDrawingClick(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setVolatileBackgroundImage(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->showDownloadPopup()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isDecoration360Service()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->onPreviewUpdate(II)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->onPreviewUpdate(II)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurrentWindowWidth:I

    if-ne v2, v1, :cond_8

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurrentWindowHeight:I

    if-eq v2, v0, :cond_4

    :cond_8
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->forceRecreateSpenView:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->onPreviewUpdate(II)V

    goto :goto_1

    :cond_9
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isSpenLoading:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChange()V
    .locals 4

    const/high16 v3, 0x40000

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->resetFlagSettingViewInit()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setSettingView()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->fitPopupIntoMotherLayout(II)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->fitSPenIntoMotherLayout()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshMenuIcon(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setVisibility(I)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return-void
.end method

.method public onPreviewUpdate(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isSpenLoading:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurrentWindowWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurrentWindowHeight:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    const-string v3, "PEDIT_Drawing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previewWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previewHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialHeight:I

    const-string v3, "PEDIT_Drawing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The width is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PEDIT_Drawing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The height is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method public onSubState(I)V
    .locals 10

    const-string v7, "PEDIT_Drawing"

    const-string v8, "On Sub State"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z

    if-eqz v7, :cond_1

    const v7, 0x40001

    if-ne p1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    const/4 v0, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    if-eqz v7, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_1
    const v7, 0x40001

    if-eq p1, v7, :cond_2

    const v7, 0x40002

    if-ne p1, v7, :cond_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    const-string v7, "PEDIT_Drawing"

    const-string v8, " Close Setting 1"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    :cond_3
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v7

    if-eq v7, v5, :cond_4

    const-string v7, "PEDIT_Drawing"

    const-string v8, " SPEN Action 1"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTypeAction(II)V

    :cond_4
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    const v8, 0x40001

    if-ne v7, v8, :cond_5

    const v7, 0x40001

    if-eq p1, v7, :cond_6

    :cond_5
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    const v8, 0x40002

    if-ne v7, v8, :cond_b

    const v7, 0x40002

    if-ne p1, v7, :cond_b

    :cond_6
    const-string v7, "PEDIT_Drawing"

    const-string v8, " Spen set visible true"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v7, v3, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->toggleShowSettingView(II)Z

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setVisibility(I)V

    :goto_2
    const v7, 0x40001

    if-ne p1, v7, :cond_c

    const v7, 0x40001

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    :cond_7
    :goto_3
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPenEraserBtnState(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->checkSettingViewInited(I)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "PEDIT_Drawing"

    const-string v8, " refresh popup state"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPopupState(IZ)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->checkLanguageChange()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPopupState(IZ)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPopupState(IZ)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLangChanged:Z

    :cond_9
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setToolTipEnabled(Z)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "D100"

    const-string v9, "Draw_Pen"

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_PEN_ID:Ljava/lang/String;

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_PEN_EVENT_NAME:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v0, 0x2

    const/4 v5, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v4, 0x2

    const-string v7, "PEDIT_Drawing"

    const-string v8, " SUb STate is PEN"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "D100"

    const-string v9, "Draw_Erase"

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ERASER_ID:Ljava/lang/String;

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ERASER_EVENT_NAME:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v0, 0x4

    const/4 v5, 0x4

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v7, "PEDIT_Drawing"

    const-string v8, " SUb STate is ERASER"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_UNDO_ID:Ljava/lang/String;

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_UNDO_EVENT_NAME:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isUndoable()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    :cond_a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_ID:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_REDO:Ljava/lang/String;

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->DRAWING_SCREEN_REDO_EVENT_NAME:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->closeControl()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v7, "PEDIT_Drawing"

    const-string v8, " Spen set visible false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    goto/16 :goto_2

    :cond_c
    const v7, 0x40002

    if-ne p1, v7, :cond_7

    const v7, 0x40002

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mMode:I

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshMenuIcon(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0205d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public refreshUndoRedoBtnState(Z)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v6, 0x7f0e0243

    const v5, 0x7f0e0240

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isUndoable()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isRedoable()Z

    move-result v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public resetSettingView(Z)V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenLoaded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e022b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e022c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEventListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setEraserListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;)V

    :cond_3
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mLangChanged:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCanvasSize(II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v5, v5

    div-float v2, v4, v5

    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialHeight:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v5, v5

    div-float v2, v4, v5

    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenInitialHeight:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSrcImageRect:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public setSpenCanvas(II)V
    .locals 15

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v0, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_2

    move/from16 v11, p1

    move/from16 v9, p2

    move/from16 v10, p2

    move/from16 v8, p1

    :cond_0
    :goto_0
    int-to-float v12, v9

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v13, v13

    div-float v3, v12, v13

    int-to-float v12, v11

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v13, v13

    div-float v7, v12, v13

    cmpl-float v12, v3, v7

    if-ltz v12, :cond_3

    move v5, v7

    :goto_1
    int-to-float v12, v8

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v13, v13

    div-float v2, v12, v13

    int-to-float v12, v10

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v13, v13

    div-float v6, v12, v13

    cmpl-float v12, v2, v6

    if-ltz v12, :cond_4

    move v4, v6

    :goto_2
    move v1, v5

    cmpg-float v12, v5, v4

    if-gez v12, :cond_1

    move v1, v4

    :cond_1
    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPreviewHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I

    const-string v12, "PEDIT_Drawing"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mSpenCanvasWidth = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mSPenCanvasHeight "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v12, 0x2

    if-ne v0, v12, :cond_0

    move/from16 v11, p2

    move/from16 v9, p1

    move/from16 v10, p1

    move/from16 v8, p2

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2
.end method
