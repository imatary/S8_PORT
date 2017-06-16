.class public Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;,
        Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_LayerManager"


# instance fields
.field private argbData:[I

.field private argbHeight:I

.field private argbWidth:I

.field private isGifStickerAdded:Z

.field private isLauncher:Z

.field private isPressCtrl:Z

.field private layerCounter:I

.field private mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

.field private mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

.field private mCommonPreviewOutput:[I

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCurrLayer:I

.field private mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

.field private mExecutorMode:I

.field private mExitApp:Z

.field private mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

.field private mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsDecoration360Service:Z

.field private mIsImageLoaded:Z

.field private mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

.field private mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

.field private mLayers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

.field private mMenuShown:Z

.field private mPendingRunnable:Ljava/lang/Runnable;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mRotation:Ljava/lang/String;

.field private mServiceId:I

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field mStoragePath:Ljava/lang/String;

.field private sphere_geometry:[F

.field temp:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStoragePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->temp:Ljava/io/File;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isLauncher:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsImageLoaded:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mRotation:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isPressCtrl:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    if-nez p2, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isLauncher:Z

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setActionBarListener(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsImageLoaded:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->prepareEffectThumbs()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerClicked(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateSelectionBorder()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteLayer(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isLauncher:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPendingRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    return p1
.end method

.method private deleteLayer(I)V
    .locals 3

    const/16 v2, 0x100

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->removeLayer(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->removeLayer(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setLayer(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateSelectionBorder()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;->onLayerRemoved(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateActionBar()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->removeHistory(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    if-ne v0, p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method private getLayerNum(I)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getStickerIntArray(Ljava/lang/String;)[I
    .locals 12

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v10, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v7, v1, [I

    invoke-virtual {v11, v7}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v9, v10

    :cond_2
    :goto_1
    return-object v7

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v1

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v9, v10

    goto :goto_3

    :catch_4
    move-exception v8

    move-object v9, v10

    goto :goto_2
.end method

.method private invalidInput(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$18;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$18;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isFromCollageAsService()Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "adjustment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "effect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layerClicked(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->isDoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$15;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$15;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setLayer(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateSelectionBorder()V

    goto :goto_0
.end method

.method private pickGalleryImage()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MULTIPLE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pick-max-item"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private prepareEffectThumbs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onEffectThumbsUpdated()V

    return-void
.end method

.method private processInput(Landroid/content/Intent;)V
    .locals 17

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    if-nez v15, :cond_2

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsDecoration360Service:Z

    const-string v15, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "filepath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v12, :cond_8

    if-eqz v9, :cond_3

    const-string v15, "adjustment"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/high16 v15, 0x20000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setService(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setServiceId(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->setService(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    const-string v15, "effect"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setService(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setServiceId(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->setService(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    goto/16 :goto_0

    :cond_4
    if-eqz v9, :cond_5

    const-string v15, "decoration"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/high16 v15, 0x80000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setService(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setServiceId(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->setService(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    goto/16 :goto_0

    :cond_5
    const-string v15, "decoration_360"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const v15, 0x80009

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setService(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setServiceId(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->setService(I)V

    const-string v15, "360Editor"

    const-string v16, "processInput"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "argb_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;)V

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsDecoration360Service:Z

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addDummyLayer(Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "android.intent.action.EDIT"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_9
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    if-nez v13, :cond_a

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_c

    new-instance v10, Landroid/media/ExifInterface;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v10, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v15, "Orientation"

    invoke-virtual {v10, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mRotation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_3
    if-eqz v8, :cond_1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->lock()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->lock()V

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_18

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v15, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$16;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    const-string v15, "selectedCount"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    const-string v15, "selectedItems"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_b

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_b

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    if-nez v13, :cond_10

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    :goto_6
    if-nez v11, :cond_12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_12
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_13

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    :goto_7
    if-nez v11, :cond_16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_16
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_17

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_18
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v15, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->start()V

    goto/16 :goto_0
.end method

.method private updateSelectionBorder()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getSelectionBorder()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getSelectionBorder()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDummyLayer(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "nayab"

    const-string v1, "adding dummy layer.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "argb_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getStickerIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbData:[I

    const-string v0, "argb_width"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbWidth:I

    const-string v0, "argb_height"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbHeight:I

    const-string v0, "sphere_geometry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sphere_geometry:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSuperImpose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsImageLoaded:Z

    return-void
.end method

.method public addLayer(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;Z)V

    return-void
.end method

.method public addLayer(Ljava/lang/String;Z)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->decode(Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;ZZ)V

    return-void
.end method

.method public addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V
    .locals 7

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->decode(Landroid/graphics/Bitmap;ZZ)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNextLayerId()I

    move-result v6

    const-string v1, "PEDIT_LayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLayerSuperImpose  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->setId(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setStateTOSuperImpose(IIIZ)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public addLayerSuperImpose(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->decode(Ljava/lang/String;Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;ZZ)V

    return-void
.end method

.method public addLayerSuperImpose(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->decode(Landroid/graphics/Bitmap;ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNextLayerId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->setId(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setStateTOSuperImpose(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public addLayerSuperImpose360(Ljava/lang/String;Z)V
    .locals 6

    const-string v1, "nayab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayerManager add LayerSuperimpose :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->decode(Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;ZZ)V

    return-void
.end method

.method public applyFromExecutor(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor applyFromExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    const-string v0, "PhotoApply"

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DrawApply"

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDoneFromExecutor(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "PerspectiveApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LassoApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDoneFromExecutor(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "PhotoSave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->isEnableSave()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onMenuClicked(I)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method public checkSubModeEffect(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->checkSubModeEffect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkValidStates()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$26;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$26;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->cleanUp()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->cleanUp()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->cleanUp()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->cleanUp()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setActionBarListener(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$ActionBarListener;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->cleanUp()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    :cond_5
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCommonPreviewOutput:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->close()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->close()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->release()V

    return-void
.end method

.method public clearSelectionBorder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->clearSelectionBorder()V

    return-void
.end method

.method public decode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 24

    if-eqz p1, :cond_8

    const/4 v15, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v22, 0x1

    :cond_0
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v15, v16

    :goto_0
    if-nez v15, :cond_2

    const/4 v2, 0x0

    :cond_1
    :goto_1
    return-object v2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, p2

    int-to-float v4, v0

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getResizeRatio(FF)F

    move-result v20

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float v3, v3, v20

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float v3, v3, v20

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/16 v22, 0x0

    if-eqz v22, :cond_7

    const/16 v19, 0x1

    :try_start_2
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    :goto_3
    new-instance v18, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v3, 0x7

    move-object/from16 v0, v18

    iput v3, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x0

    :try_start_3
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v3, v0, v14, v1}, Lcom/quramsoft/images/QrBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    if-eqz v2, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    move/from16 v0, v19

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, v19

    if-eq v0, v3, :cond_3

    const/16 v3, 0x8

    move/from16 v0, v19

    if-ne v0, v3, :cond_1

    :cond_3
    move-object/from16 v21, v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_4
    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    goto/16 :goto_1

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_5

    :cond_6
    const/16 v3, 0x8

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v4

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getSampleSize(II)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v2, v9

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public decodeBaseImage(Landroid/content/res/Resources;I)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;

    const v4, 0xb4000

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070096

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public decodeBaseImage(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;

    const v4, 0xb4000

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->start()V

    :cond_0
    return-void
.end method

.method public deleteSuperImposeLayer(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->removeLayer(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->removeLayer(I)V

    :cond_0
    return-void
.end method

.method public doUndoRedoFromExecutor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->draw()V

    return-void
.end method

.method public getARGBData()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbData:[I

    return-object v0
.end method

.method public getARGBHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbHeight:I

    return v0
.end method

.method public getARGBWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->argbWidth:I

    return v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCardViewSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrLayer()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    return v0
.end method

.method public getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    return-object v0
.end method

.method public getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    goto :goto_0
.end method

.method public getImageDataAtPos(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLayerData(I)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    return-object v0
.end method

.method public getLayerId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getLayerLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    return-object v0
.end method

.method public declared-synchronized getNextLayerId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumLayers()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getPendingRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPendingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPreviewOutputBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCommonPreviewOutput:[I

    if-nez v0, :cond_0

    const/high16 v0, 0x280000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCommonPreviewOutput:[I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCommonPreviewOutput:[I

    return-object v0
.end method

.method public getRotation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mRotation:Ljava/lang/String;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSphereGeometry()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sphere_geometry:[F

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public getSuperImposeBmp()Landroid/graphics/Bitmap;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".collage_temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0xb4000

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->decode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getmServiceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    return v0
.end method

.method public hideAttachSheet(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const v1, 0x80001

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAttachSheetFragment(Z)V

    :cond_1
    return-void
.end method

.method public hideMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideMainlayout()V

    return-void
.end method

.method public hideProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideProgress()V

    return-void
.end method

.method public initBG()V
    .locals 10

    const/4 v9, 0x0

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v4, v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setClearViewBrightnessMode"

    invoke-virtual {v7, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    aput-object v3, v0, v7

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->init()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->init(Landroid/content/res/Resources;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->init()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->init()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->initBG()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initUI()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isFromCollageAsService()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->init(Z)V

    return-void
.end method

.method public isCameraOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isCameraOpening()Z

    move-result v0

    goto :goto_0
.end method

.method public isDecoration360Service()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsDecoration360Service:Z

    return v0
.end method

.method public isExiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z

    return v0
.end method

.method public isFaceDetect()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isFaceDetect()Z

    move-result v0

    return v0
.end method

.method public isImageLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsImageLoaded:Z

    return v0
.end method

.method public isMenuShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v17, "selectedItems"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->lock()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->lock()V

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v17, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v17, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$9;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$9;->start()V

    goto/16 :goto_0

    :pswitch_2
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v17, "newString"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateTextForWaterMark(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v17, "selectedItems"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    const/4 v9, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v17, "\\."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v14, v17

    const-string v18, "gif"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v17

    const/high16 v18, 0x80000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->decodeBaseImage(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v17

    const/high16 v18, 0x80000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAttachSheetFragment(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v17

    const/high16 v18, 0x80000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v14, v17

    const-string v18, "gif"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f070096

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    const/high16 v18, 0x80000

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->lock()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->lock()V

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->is360Image(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v17

    const v18, 0x80009

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsDecoration360Service:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/4 v13, 0x1

    :goto_6
    new-instance v17, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$10;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;ZLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v17, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$11;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$11;->start()V

    goto/16 :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v17

    const/high16 v18, 0x80000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f070336

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v17

    const/high16 v18, 0x80000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f070182

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doCancel()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    const/high16 v18, 0x80000

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0

    :pswitch_4
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStoragePath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v17, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->reloadEffects()V

    goto/16 :goto_0

    :cond_d
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->reloadEffectThumbs()V

    goto/16 :goto_0

    :pswitch_6
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteLayer(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    :cond_e
    invoke-static/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertIntentFromLauncher(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V

    invoke-static/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertIntentFromLauncher(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :pswitch_7
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setStateToSuperImposeAndInit()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed(Z)Z
    .locals 8

    const v7, 0x2000e

    const/high16 v6, 0x20000

    const/16 v5, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideCardView()V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showMainButton(Z)V

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v5, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v3

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v3

    if-ne v3, v6, :cond_6

    const v3, 0x20004

    if-lt v0, v3, :cond_6

    if-ge v0, v7, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isAdjustmentCropLayoutVisible()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onBackPressed()V

    if-ne v0, v7, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v3

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_8

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onBackPressed()V

    move v1, v2

    goto :goto_0

    :cond_8
    const/high16 v3, 0x80000

    if-eq v0, v3, :cond_a

    if-eq v0, v5, :cond_a

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_9

    if-eq v0, v6, :cond_9

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isLauncher:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    move v1, v2

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasUndoHistory(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->isSaved(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    const/16 v3, 0xa

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)V

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->shareToGallery(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 3

    const/high16 v1, 0x80000

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$14;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->clickSound()V

    :cond_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->isDoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$12;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$12;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$13;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$13;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onSuperImposeClick(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    const v1, 0x10000004

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerClicked(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000000 -> :sswitch_0
        0x10000004 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextMenuItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onContextMenuItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onEffectThumbUpdated()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->onEffectThumbUpdated()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onEffectThumbsUpdated()V

    goto :goto_0
.end method

.method public onFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->onLanguageChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onKeyDown(Landroid/view/KeyEvent;I)V
    .locals 1

    const/16 v0, 0x71

    if-eq p2, v0, :cond_0

    const/16 v0, 0x72

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isPressCtrl:Z

    :cond_1
    const/16 v0, 0x70

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isPressCtrl:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onKeyDelete()V

    :cond_3
    return-void
.end method

.method public onKeyUp(Landroid/view/KeyEvent;I)V
    .locals 1

    const/16 v0, 0x71

    if-eq p2, v0, :cond_0

    const/16 v0, 0x72

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isPressCtrl:Z

    :cond_1
    return-void
.end method

.method public onLanguageChangeForEffects()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onLanguageChangeForEffects()V

    return-void
.end method

.method public onLanguageChangeForPen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onLanguageChangeForPen()V

    return-void
.end method

.method public onLanguageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->onLanguageChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onLanguageChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->onLanguageChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->onLanguageChanged()V

    :cond_0
    return-void
.end method

.method public onLayoutChangeRTLForAdjustment()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onLayoutChangeRTLForAdjustment()V

    :cond_0
    return-void
.end method

.method public onLongClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v1

    const v2, 0x10000004

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v1

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerNum(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$19;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$19;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDeleteLayer(ILandroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_0
.end method

.method public onMenuClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onMenuClicked(I)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const v1, 0x80001

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAttachSheetFragment(Z)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/high16 v7, 0x80000

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    const-string v4, "service"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasRedoHistory(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasUndoHistory(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->isSaved(I)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    :cond_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->finishActivity(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->dismiss()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v1

    if-ne v1, v7, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAllSuperImposeDialogs()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->clearSuperImpose()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->finishActivity(I)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v1

    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->reLoadPenSettingView()V

    :cond_7
    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewInstance:Z

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteLayer(I)V

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewInstance:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070135

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->onOrientationChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHelpPopup:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->onConfigurationChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onOrientationChanged(I)V

    :cond_2
    return-void
.end method

.method public onPreviewClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isBototmBarAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showMenu()V

    goto :goto_0
.end method

.method public onPreviewUpdate(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onPreviewUpdate(II)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateContentDescription()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isPressCtrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onZoomByScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStateClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->onLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openEffectAfterReady()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$7;->start()V

    return-void
.end method

.method public openModeFromExecutor(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getUIReady()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutorAfterReady(I)V

    goto :goto_0
.end method

.method public openModeFromExecutorAfterReady(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openSubModeFromExecutor(ILjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor openSubModeFromExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSubModeFromExecutor(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSubModeEffect(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public openWBSubModeFromExecutor(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor openWBSubModeFromExecutor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSubModeFromExecutor(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public pickGalleryImage(II)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public reCreateDialogScreenResolution()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->onLanguageChanged()V

    :cond_0
    return-void
.end method

.method public removeCardViewData(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->removeData(I)V

    return-void
.end method

.method public resetDrawingSpenView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->resetSettingView()V

    return-void
.end method

.method public sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExecutorMode:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    return-void
.end method

.method public setAsImage(Ljava/lang/String;)V
    .locals 14

    const-string v12, "PEDIT_LayerManager"

    const-string v13, "Set as image"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.ATTACH_DATA"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "image/*"

    invoke-virtual {v9, v11, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "mimeType"

    invoke-virtual {v9, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v5, -0x1

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v5, v2

    :cond_0
    if-ltz v5, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "Set As"

    invoke-static {v9, v12}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/LabeledIntent;

    const-string v12, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v10, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setIsGifStickerAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isGifStickerAdded:Z

    return-void
.end method

.method public setLayerLayout(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setOnLongClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;)V

    return-void
.end method

.method public setLayerListener(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    return-void
.end method

.method public setMainLayout(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->setMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-void
.end method

.method public setResultAndExit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setResultAndExit(Z)V

    return-void
.end method

.method public setResultAndExit(Z)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->PE_RESULT_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v1, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v8, "output"

    sget-object v9, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->PE_RESULT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, -0x1

    invoke-virtual {v0, v8, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-boolean v13, v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    sget v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    if-eq v8, v12, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    sget v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->moveToFront(I)V

    sput v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v0, v8, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v8

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v6, v7

    goto :goto_2
.end method

.method public setStickersDataAndExit(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$25;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideSubbtnLayoutDecoration(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setmServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I

    return-void
.end method

.method public shareVia(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "display"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenSharingSupport(Landroid/hardware/display/DisplayManager;)Z

    move-result v10

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v14, "android.intent.action.SEND"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "android.intent.extra.STREAM"

    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v10, :cond_5

    const-string v14, "more_actions_screen_sharing"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledQuickConnect(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledOneConnect(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    const-string v14, "more_actions_quick_connect"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string v14, "more_actions_print"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "image/*"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v14, 0x24000000

    invoke-virtual {v12, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move v7, v4

    :cond_3
    if-ltz v7, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0702a1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v6, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/LabeledIntent;

    const/high16 v14, 0x20000000

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v14, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v11, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v14, 0x24000000

    invoke-virtual {v11, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v14, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenMirroringSupport(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "more_actions_screen_mirroring"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForChangePlayerSupport(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "more_actions_change_player"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public showHistory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showCardView(Z)V

    return-void
.end method

.method public showMainButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showMenu()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideMenu()V

    goto :goto_0
.end method

.method public showMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMenuShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mMainLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->show()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showMainLayout()V

    return-void
.end method

.method public showPreviousText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showPrevious(Z)V

    return-void
.end method

.method public showProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    return-void
.end method

.method public takePicture()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    const-string v2, "PEDIT_LayerManager"

    const-string v3, "Start taking pic"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStoragePath:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStoragePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->temp:Ljava/io/File;

    const-string v2, "PEDIT_LayerManager"

    const-string v3, "Created File"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "PEDIT_LayerManager"

    const-string v3, "Intent created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->temp:Ljava/io/File;

    if-eqz v2, :cond_0

    const-string v2, "PEDIT_LayerManager"

    const-string v3, "intent Launched"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "output"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->temp:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public updateActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCardViewData([III)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->updateData(Landroid/graphics/Bitmap;II)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateCardViewData([III)V

    return-void
.end method

.method public updateLayerIcon(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->updateLayerIcon(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public updateMenuUndoRedo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$23;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$23;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
