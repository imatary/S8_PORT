.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;
.super Ljava/lang/Object;
.source "GLBasicUI.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;


# static fields
.field private static final LONG_CLICK_DURATION:I = 0x1f4

.field private static final LONG_TOUCH_RANGE:I = 0x1e


# instance fields
.field private mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mIsLongClicked:Z

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

.field private mLongClickHandler:Landroid/os/Handler;

.field private mLongTouchX:F

.field private mLongTouchY:F

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mService:I

.field private mState:I

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field private mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

.field private mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongClickHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchY:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->initBottomButtonUI()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->initPreviewUI()V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_LAYERS:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->initLayerUI()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method private initBottomButtonUI()V
    .locals 11

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v0

    sub-int v9, v0, v7

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0, v8, v9, v10, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setSize(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->initChildren()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setMainLayout(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;IIII)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->initChildren()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    return-void
.end method

.method private initLayerUI()V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->initChildren()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setLayerLayout(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setLayerListener(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    return-void
.end method

.method private initPreviewUI()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_TOOL_WIDGET:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v2, 0x4000

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setToolWidget(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->cleanUp()V

    :cond_2
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    return-void
.end method

.method public draw()V
    .locals 3

    const/4 v2, -0x1

    const/high16 v1, 0x20000

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onDraw()V

    :cond_0
    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->onDraw()V

    :cond_1
    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onDraw()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->onDraw()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->draw()V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_TOOL_WIDGET:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->onDraw()V

    :cond_4
    return-void
.end method

.method public onEffectThumbUpdated()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onEffectThumbsUpdated()V

    :cond_0
    return-void
.end method

.method public onLayerAdded(I)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public onLayerRemoved(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNumLayers()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setVisible(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNumLayers()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNumLayers()I

    move-result v3

    if-lez v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setVisible(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->onSurfaceChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onSurfaceChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onSurfaceChanged()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->onSurfaceChanged()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->onSurfaceChanged()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onSurfaceChanged()V

    :cond_5
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->onOrientationChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onOrientationChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->onOrientationChanged(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onOrientationChanged(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->onOrientationChanged(I)V

    :cond_4
    return-void
.end method

.method public onStateChange(II)V
    .locals 0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mState:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/16 v8, 0x800

    const/16 v7, 0x100

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mState:I

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onLongClickUp()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchY:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongClickHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-eq v2, v7, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_TOOL_WIDGET:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mToolWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_LAYERS:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLayerViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-eq v2, v8, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    if-ne v2, v7, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongTouchY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    :cond_a
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongClickHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onLongClickUp()V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_2

    :cond_c
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mLongClickHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onLongClickUp()V

    goto/16 :goto_1
.end method

.method public reloadEffects()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mSubBottomViewGroup:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->reloadEffects()V

    :cond_0
    return-void
.end method

.method public setData(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_0
    return-void
.end method

.method public setService(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mService:I

    return-void
.end method
