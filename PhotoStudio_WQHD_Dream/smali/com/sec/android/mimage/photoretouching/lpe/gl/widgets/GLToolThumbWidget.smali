.class public final Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLToolThumbWidget.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;
    }
.end annotation


# static fields
.field private static final CLOSED:I = 0x0

.field private static final CLOSING:I = 0x3

.field private static final EXPANSION_TIME:I = 0xfa

.field public static final ID_TOOL_AUTO_SEGMENTATION:I = 0x4012

.field public static final ID_TOOL_CLEAR:I = 0x400f

.field public static final ID_TOOL_COMPARE_1_1:I = 0x400c

.field public static final ID_TOOL_COMPARE_ORIGINAL_1:I = 0x400b

.field public static final ID_TOOL_GRAPH:I = 0x4009

.field public static final ID_TOOL_INVERSE_SELECTION:I = 0x400d

.field public static final ID_TOOL_ORIGINAL:I = 0x400a

.field public static final ID_TOOL_SEEK_BAR:I = 0x4007

.field public static final ID_TOOL_SELECTION_ADD:I = 0x4010

.field public static final ID_TOOL_SELECTION_SUBTRACT:I = 0x4011

.field public static final ID_TOOL_SIZE:I = 0x400e

.field public static final ID_TOOL_THUMB:I = 0x4000

.field private static final LEFT:I = 0x1

.field private static final OPENED:I = 0x2

.field private static final OPENING:I = 0x1

.field private static final RIGHT:I


# instance fields
.field private MSG_LONG_CLICK:I

.field private MSG_MOVE:I

.field private dx:F

.field private dy:F

.field private hThread:Landroid/os/HandlerThread;

.field private mAppState:I

.field private mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mChildrenLength:I

.field private mDirection:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMoving:Z

.field private mIsUpdating:Z

.field private mMovableAreaRect:Landroid/graphics/RectF;

.field private mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

.field private mPosX:I

.field private mPosY:I

.field private mPosition:I

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mStartTime:J

.field private mState:I

.field private mThumbSize:I

.field private mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

.field private touchDownX:F

.field private touchDownY:F

.field private touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsUpdating:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_LONG_CLICK:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_MOVE:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080488

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateMovableRect()V

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080485

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080486

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->initHandler()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_LONG_CLICK:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_MOVE:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    return v0
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "toolthumb"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateMovableRect()V
    .locals 12

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v3, v5

    move v0, v4

    :goto_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v6

    move v3, v5

    move v0, v4

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v6

    int-to-float v10, v3

    int-to-float v11, v0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v6

    move v3, v5

    move v0, v4

    goto :goto_0
.end method

.method private updateUI()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsUpdating:Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->removeView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTools(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v5, v0

    new-array v5, v5, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    if-nez v5, :cond_1

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v7, 0x4000

    invoke-direct {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {v5, v4, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    aget v8, v0, v1

    invoke-direct {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {v5, v4, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setSize(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->initChildren()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v5, v0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsUpdating:Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    const/16 v7, 0x100

    if-ne v6, v7, :cond_5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v6, v3, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSelectionToolOpen(Z)V

    return-void

    :cond_5
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public contains(FF)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    if-ne v2, v0, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->contains(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized draw()V
    .locals 12

    const/high16 v11, 0x437a0000    # 250.0f

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsUpdating:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    if-nez v2, :cond_c

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v8, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v9, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v10, :cond_a

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v8, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v11

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v8, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_8

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-le v2, v3, :cond_7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    :cond_4
    :goto_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    mul-int/2addr v3, v0

    add-int v1, v2, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    neg-int v2, v2

    if-le v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    add-int/2addr v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setSize(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->draw()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    if-gez v2, :cond_4

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v10, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->draw()V

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-ne v2, v3, :cond_b

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v8, :cond_b

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->onDraw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    :try_start_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    if-nez v2, :cond_a

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_a

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    goto :goto_4

    :cond_c
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v8, :cond_d

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v9, :cond_d

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v10, :cond_a

    :cond_d
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v8, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v11

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    :cond_e
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v8, :cond_f

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_14

    :cond_f
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-lt v2, v3, :cond_13

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    :cond_10
    :goto_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    neg-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    mul-int/2addr v3, v0

    add-int v1, v2, v3

    if-gez v1, :cond_11

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setSize(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->draw()V

    :cond_11
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    goto :goto_5

    :cond_13
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    if-gez v2, :cond_10

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    goto :goto_7

    :cond_14
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v10, :cond_11

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->draw()V

    goto :goto_8

    :cond_15
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v8, :cond_16

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    goto/16 :goto_4

    :cond_16
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    if-nez v2, :cond_a

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v9, :cond_a

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public initChildren()V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getTools(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget p1, v2, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget p2, v2, Landroid/graphics/RectF;->top:F

    :cond_1
    :goto_1
    float-to-int v2, p1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    float-to-int v2, p2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    :goto_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v0, :cond_8

    :cond_2
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-lez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v3, v0, :cond_9

    :cond_4
    :goto_4
    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSelectionToolOpen(Z)V

    return-void

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v3, v3

    sub-float p1, v2, v3

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v3, v3

    sub-float p2, v2, v3

    goto :goto_1

    :cond_7
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method public onOrientationChanged(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateMovableRect()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080485

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080486

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    if-ne p1, v0, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    :cond_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v5, :cond_3

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v3, v0, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSelectionToolOpen(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onStateChange(II)V
    .locals 6

    const/4 v5, 0x2

    const/16 v4, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    and-int/lit16 v2, p1, -0x100

    and-int/lit16 v3, p2, -0x100

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v2, v0, :cond_4

    :cond_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    if-eq v2, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eq p2, v4, :cond_2

    and-int/lit16 v2, p2, -0x100

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_2

    and-int/lit16 v2, p2, -0x100

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setVisible(Z)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v3, v0, :cond_6

    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSelectionToolOpen(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setVisible(Z)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x2

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setPressed(Z)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_f

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mAppState:I

    const/16 v8, 0x100

    if-ne v4, v8, :cond_10

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eq v4, v10, :cond_5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-ne v4, v5, :cond_10

    :cond_5
    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSelectionToolOpen(Z)V

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-eqz v4, :cond_0

    :cond_6
    move v6, v5

    goto :goto_0

    :pswitch_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    if-ne v4, v7, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_8

    :cond_7
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    :cond_8
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dx:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->getTop()F

    move-result v4

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dy:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->getLeft()F

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchDownX:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->getTop()F

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchDownY:F

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v4, v1, :cond_9

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    if-ne v4, v7, :cond_b

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchDownX:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getLeft()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_9

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchDownY:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getTop()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->performClick()V

    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosX:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getTop()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosY:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getLeft()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getTop()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    invoke-virtual {p0, v4, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setSize(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->getLeft()F

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_c

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    :goto_4
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->performClick()V

    goto :goto_3

    :cond_c
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mDirection:I

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    if-eq v4, v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-ne v1, v4, :cond_e

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    :cond_d
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dx:F

    sub-float v7, v2, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dy:F

    sub-float v8, v3, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mMovableAreaRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dx:F

    sub-float v7, v2, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dy:F

    sub-float v8, v3, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_MOVE:I

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_MOVE:I

    iput v4, v0, Landroid/os/Message;->what:I

    new-array v4, v10, [I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dx:F

    sub-float v7, v2, v7

    float-to-int v7, v7

    aput v7, v4, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->dy:F

    sub-float v7, v3, v7

    float-to-int v7, v7

    aput v7, v4, v5

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_e
    move v4, v6

    goto :goto_5

    :cond_f
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setPressed(Z)V

    goto/16 :goto_1

    :cond_10
    move v4, v6

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public select(IZ)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mToolThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolTipButton;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
