.class public Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;


# static fields
.field private static final ADD_REQUEST:I = 0xfa1

.field private static final REPLACE_REQUEST:I = 0xfa2

.field private static final REQ_CODE_LPE_EDIT:I = 0xfa3

.field private static final TAG:Ljava/lang/String; = "PEDIT_CollageManager"


# instance fields
.field private diffX:F

.field private diffY:F

.field private gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

.field private isModifyPopupShown:Z

.field private isSavedFromExecutor:Z

.field public isShowAttach:Z

.field private isVideoScreenshot:Z

.field private listLayout1_X:[I

.field private mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

.field private mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

.field private mBorderFillerLayout:Landroid/widget/LinearLayout;

.field private mCollageAnimating:Z

.field private mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

.field private mContext:Landroid/content/Context;

.field private mCurrAspect:I

.field private mCurrBG:I

.field public mCurrBgColor:I

.field public mCurrLayout:I

.field private mCurrMain:I

.field private mCurrSub:I

.field private mCurrentValues:[F

.field private mDensity:F

.field private mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

.field private mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreLongPress:Z

.field private mIsDragExiting:Z

.field private mIsDragReady:Z

.field public mIsDragging:Z

.field private mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field private mNewActivityStarted:Z

.field public mPEStarted:Z

.field private mPreColorPicker:I

.field private mPrivateSaveFolder:Ljava/lang/String;

.field private mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field private mSaveAfterShuffle:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUri:Landroid/net/Uri;

.field private plusLayoutListnener:Landroid/view/View$OnClickListener;

.field private prevX:F

.field private prevY:F

.field private savePath:Ljava/lang/String;

.field private selectedCode:I

.field private selectedIntent:Landroid/content/Intent;

.field private unsupportedFileCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIgnoreLongPress:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragReady:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPreColorPicker:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isModifyPopupShown:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->plusLayoutListnener:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isSavedFromExecutor:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageManager(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {v1, p2, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setActionBarListener(Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager$ActionBarListener;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-direct {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->getInstance(Landroid/content/Context;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const v1, 0x7f0e0120

    invoke-direct {p0, v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initCollage(Landroid/app/Activity;Landroid/content/Intent;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setContentDescriptionForUIElements()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setHoveringForUIElements()V

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateCollageBackground(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateMainButtonsParams()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateColorPicker()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBottomMenuBG()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAspectRatioGsimLog(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x7f0e027e
        0x7f0e0293
        0x7f0e02ac
        0x7f0e02d1
        0x45
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClickPlusLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutPopupPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->cancelDrag()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isModifyPopupShown:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->plusLayoutListnener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doSave()V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragReady:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->deInitDrag()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->removeAttachSheet(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateRatioPopupPosition()V

    return-void
.end method

.method private addSALogCollage()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getMargin()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getDisplayDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_BORDER:Ljava/lang/String;

    const-string v2, "Border"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_ROUNDNESS:Ljava/lang/String;

    const-string v2, "Roundness"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getMargin()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getDisplayDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_MARGIN:Ljava/lang/String;

    const-string v2, "Margin"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getMargin()F

    move-result v3

    float-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    if-eq v0, v6, :cond_3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_ASPECT_RATIO:Ljava/lang/String;

    const-string v2, "Aspect ratio"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v1, 0x7f0e0120

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_1_TO_1:Ljava/lang/String;

    const-string v2, "1 to 1"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v0, v6, :cond_4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT:Ljava/lang/String;

    const-string v2, "Layout"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    sparse-switch v0, :sswitch_data_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    if-eq v0, v6, :cond_5

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_BACKGROUND:Ljava/lang/String;

    const-string v2, "Background"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_2
    :pswitch_0
    return-void

    :cond_6
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v1, 0x7f0e0123

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_9_TO_16:Ljava/lang/String;

    const-string v2, "9 to 16"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(1)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(2)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(3)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(4)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(5)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 2(6)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(1)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(2)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(3)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(4)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(5)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(6)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(7)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(8)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(9)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 3(10)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(1)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(2)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(3)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(4)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(5)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(6)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(7)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(8)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_18
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(9)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_19
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(10)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 4(11)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(1)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(2)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(3)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(4)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(5)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_20
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(6)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_21
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(7)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_22
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(8)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_23
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(9)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_24
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(10)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_25
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 5(11)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_26
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(1)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_27
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(2)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_28
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(3)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_29
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(4)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(5)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(6)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(7)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_LAYOUT_STYLE:Ljava/lang/String;

    const-string v2, "Layout style 6(8)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND_COLOR:Ljava/lang/String;

    const-string v2, "Select background color"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    if-eq v0, v6, :cond_5

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_COLOR_PICKER:Ljava/lang/String;

    const-string v2, "Color picker"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 2"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 3"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 4"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 5"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 6"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 7"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 8"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 9"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 10"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 11"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 12"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 13"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 14"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 15"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 16"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 17"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 18"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 19"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 20"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 21"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 22"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 23"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_18
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 24"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_19
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 25"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 26"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 27"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SELECT_BACKGROUND:Ljava/lang/String;

    const-string v2, "Select background 28"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e027c -> :sswitch_0
        0x7f0e027e -> :sswitch_1
        0x7f0e0280 -> :sswitch_2
        0x7f0e0282 -> :sswitch_3
        0x7f0e0284 -> :sswitch_4
        0x7f0e0286 -> :sswitch_5
        0x7f0e0289 -> :sswitch_6
        0x7f0e028b -> :sswitch_7
        0x7f0e028d -> :sswitch_8
        0x7f0e028f -> :sswitch_9
        0x7f0e0291 -> :sswitch_a
        0x7f0e0293 -> :sswitch_b
        0x7f0e0295 -> :sswitch_c
        0x7f0e0297 -> :sswitch_d
        0x7f0e0299 -> :sswitch_e
        0x7f0e029c -> :sswitch_f
        0x7f0e02a0 -> :sswitch_10
        0x7f0e02a3 -> :sswitch_11
        0x7f0e02a6 -> :sswitch_12
        0x7f0e02a9 -> :sswitch_13
        0x7f0e02ac -> :sswitch_14
        0x7f0e02af -> :sswitch_15
        0x7f0e02b2 -> :sswitch_16
        0x7f0e02b5 -> :sswitch_17
        0x7f0e02b8 -> :sswitch_18
        0x7f0e02bb -> :sswitch_19
        0x7f0e02be -> :sswitch_1a
        0x7f0e02c2 -> :sswitch_1b
        0x7f0e02c5 -> :sswitch_1c
        0x7f0e02c8 -> :sswitch_1d
        0x7f0e02cb -> :sswitch_1e
        0x7f0e02ce -> :sswitch_1f
        0x7f0e02d1 -> :sswitch_20
        0x7f0e02d4 -> :sswitch_21
        0x7f0e02d7 -> :sswitch_22
        0x7f0e02da -> :sswitch_23
        0x7f0e02dd -> :sswitch_24
        0x7f0e02e0 -> :sswitch_25
        0x7f0e02e4 -> :sswitch_26
        0x7f0e02e7 -> :sswitch_27
        0x7f0e02ea -> :sswitch_28
        0x7f0e02ed -> :sswitch_29
        0x7f0e02f0 -> :sswitch_2a
        0x7f0e02f3 -> :sswitch_2b
        0x7f0e02f6 -> :sswitch_2c
        0x7f0e02f9 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0e012b
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
    .end packed-switch
.end method

.method private cancelDrag()V
    .locals 28

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getItemInfo()[F

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v26

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimValues()[F

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v12, 0x6

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v13, 0x7

    aget v12, v12, v13

    move-object/from16 v0, v26

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v26

    iget v14, v0, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    aget v15, v27, v15

    const/16 v16, 0x1

    aget v16, v27, v16

    const/16 v17, 0x2

    aget v17, v27, v17

    const/16 v18, 0x3

    aget v18, v27, v18

    const/16 v19, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v20

    const/16 v21, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v21

    const/16 v22, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v22

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;-><init>(I[FFFFFFFFFFFFFFFFFFFFF)V

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setDuration(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setAnimation(Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$21;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->start(Landroid/content/Context;)V

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private deInitDrag()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDragEnd()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getMargin()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setMargin(F)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setClickable(Landroid/app/Activity;Z)V

    return-void
.end method

.method private doBackPress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private doDelete()V
    .locals 8

    const v7, 0x7f0e0126

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v2

    if-le v2, v6, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->removeItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :goto_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    if-ne v2, v7, :cond_3

    invoke-direct {p0, v7, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setEmptyItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getCurrentStyle()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCurrentLayout(IILandroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private doEffects()V
    .locals 4

    const/16 v2, 0x64

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07009c

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->startIntentToLPE(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private doReplace()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->sendGallery(Landroid/content/Context;)V

    return-void
.end method

.method private doRotate()V
    .locals 4

    const/16 v2, 0x64

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07009c

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->startIntentToLPE(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private doSave()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->launchPermissionForSaveShare()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->addSALogCollage()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b8

    invoke-direct {v0, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070055

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->start()V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    const-string v3, "CollageSave"

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doShare()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->shareVia(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private doShuffle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->shuffle()V

    :cond_0
    return-void
.end method

.method private initCollage(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v7, "selectedItems"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v8, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v7, "/VideoScreenShot/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    :cond_0
    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    sput-boolean v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v8, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getUriMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {p0, v8, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isCheckNotSupportFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->addGrid(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getSaveDirPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSaveSDCard(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p1, v5}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->exitLowSDCardMemory(Landroid/app/Activity;)V

    :cond_6
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    if-lez v7, :cond_7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v9, 0x7f0701a2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->unsupportedFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v7

    if-gtz v7, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->addGrid(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    :cond_9
    const-string v7, "layout"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v3, 0x0

    :cond_a
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUIElements(I)V

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x7f0e01a2

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    const v7, 0x7f0e01a2

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0e01a4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x3e8f5c29    # 0.28f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    const v7, 0x7f0e01a2

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0e01a5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x3e8f5c29    # 0.28f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    const v7, 0x7f0e0126

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    :cond_b
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertNumberOfImagesLaunchedGsimLog(I)V

    :cond_c
    :goto_3
    return-void

    :cond_d
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v8, 0x7f070315

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3
.end method

.method private initColorPicker()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$18;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setColorPickerCallback(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;)V

    :cond_0
    return-void
.end method

.method private initDrag(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 29

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragReady:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getItemInfo()[F

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimValues()[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v26, 0x0

    :goto_0
    const/4 v3, 0x4

    move/from16 v0, v26

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    add-int/lit8 v4, v26, 0x4

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v27

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v12, 0x6

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v13, 0x7

    aget v12, v12, v13

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v27

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    const/high16 v19, 0x3f400000    # 0.75f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    const/high16 v20, 0x3f400000    # 0.75f

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/high16 v21, 0x3f400000    # 0.75f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v21, v21, v22

    const/high16 v22, 0x3f400000    # 0.75f

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    move-object/from16 v22, v0

    const/16 v23, 0x7

    aget v22, v22, v23

    const/high16 v23, 0x3f400000    # 0.75f

    mul-float v22, v22, v23

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;-><init>(I[FFFFFFFFFFFFFFFFFFFFF)V

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setDuration(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setAnimation(Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$20;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->start(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setClickable(Landroid/app/Activity;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    return-void
.end method

.method private isRTL(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onClickPlusLayout()V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_ADD_IMAGE:Ljava/lang/String;

    const-string v2, "Add Image"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->pickImageFromGallery(Z)V

    :cond_1
    return-void
.end method

.method private pickImageFromGallery(Z)V
    .locals 10

    const v9, 0x7f0e0199

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v7, "ATTACH_VIEW"

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    sget v4, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v7

    sub-int v7, v4, v7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    add-int/2addr v4, v7

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->maxImage:I

    invoke-static {v6, v6}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->newInstance(IZ)Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setExpansionFragments(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)V

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$8;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$8;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const-string v8, "ATTACH_VIEW"

    invoke-virtual {v4, v9, v7, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v7, 0x7f0e00de

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v4, 0x7f0e0195

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddEnable(Z)V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    :goto_1
    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.MULTIPLE_PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v4

    sget v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    if-ge v4, v7, :cond_4

    const-string v4, "pick-max-item"

    sget v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v8

    if-nez v8, :cond_3

    :goto_2
    add-int/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xfa1

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    const-string v4, "pick-max-item"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xfa2

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private registerOnTouchListener(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private registerOnTouchListenerForActionbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0476

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0477

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0478

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    const v1, 0x7f0e0479

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    return-void
.end method

.method private removeAttachSheet(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e0199

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method private sendGallery(Landroid/content/Context;)V
    .locals 11

    const v10, 0x7f0e0199

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "vnd.android.cursor.dir/image"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "ATTACH_VIEW"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-nez v5, :cond_0

    invoke-static {v9, v8}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->newInstance(IZ)Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v5, v9}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setExpansionFragments(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;

    invoke-direct {v6, p0, p1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    :cond_0
    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$4;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0e00de

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v5, 0x7f0e0195

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const-string v7, "ATTACH_VIEW"

    invoke-virtual {v5, v10, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddEnable(Z)V

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    :goto_0
    return-void

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    check-cast p1, Landroid/app/Activity;

    const/16 v5, 0xfa2

    invoke-virtual {p1, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBackgrounds()V
    .locals 5

    const v4, 0x7f0206b5

    const v3, 0x7f0206a3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e011f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e01b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e0129

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e019e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e01a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e01a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setContentDescriptionForUIElements()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e019d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700a9

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700aa

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0e01a7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700ab

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700ac

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateContentDescription()V

    return-void
.end method

.method private setHoveringForUIElements()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0120

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private setMainButtonsTextViewProp(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    goto :goto_0
.end method

.method private setTextViewProperties()V
    .locals 7

    const v6, 0x7f0e01aa

    const v5, 0x7f0e01a5

    const v2, 0x7f0e01a0

    const v4, 0x7f0c0099

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMainButtonsTextViewProp(I)V

    const v1, 0x7f0e01ae

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMainButtonsTextViewProp(I)V

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMainButtonsTextViewProp(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMainButtonsTextViewProp(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    const v1, 0x7f0e01ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    return-void
.end method

.method private startAgainPE()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "service"

    const-string v3, "open_again"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    const/16 v3, 0xfa3

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIntentToLPE(Landroid/graphics/Bitmap;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "fails to create"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v7, ".collage_temp.jpg"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sec.android.mimage.photoretouching"

    const-string v8, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x2

    if-ne p2, v7, :cond_2

    const-string v7, "service"

    const-string v8, "effect"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v7, "filepath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->PE_RESULT_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    const/16 v8, 0xfa3

    invoke-virtual {v7, v5, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_2
    const-string v7, "service"

    const-string v8, "adjustment"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateAspectRatio(IZ)V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    if-ne p1, v7, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateContentDescriptionForAspectRatio(I)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    sparse-switch v7, :sswitch_data_0

    :goto_0
    if-nez p2, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    :cond_1
    return-void

    :sswitch_0
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    sub-int v8, v6, v4

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v10, v4

    int-to-float v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setDimensions(FFFF)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v7, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAspectRatioGsimLog(I)V

    goto :goto_0

    :sswitch_1
    const/high16 v2, 0x3f100000    # 0.5625f

    int-to-float v7, v6

    int-to-float v8, v1

    div-float v3, v7, v8

    cmpl-float v7, v2, v3

    if-lez v7, :cond_2

    int-to-float v5, v6

    int-to-float v7, v6

    div-float v0, v7, v2

    :goto_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    int-to-float v8, v6

    sub-float/2addr v8, v5

    div-float/2addr v8, v10

    int-to-float v9, v1

    sub-float/2addr v9, v0

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9, v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setDimensions(FFFF)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v7, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAspectRatioGsimLog(I)V

    goto :goto_0

    :cond_2
    int-to-float v0, v1

    int-to-float v7, v1

    mul-float v5, v7, v2

    goto :goto_1

    :sswitch_2
    sput-boolean v12, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v7, v6, 0x9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x10

    int-to-float v0, v7

    int-to-float v7, v1

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_3

    int-to-float v0, v1

    mul-int/lit8 v7, v1, 0x10

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x9

    div-int/2addr v7, v8

    int-to-float v5, v7

    :goto_2
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    int-to-float v8, v6

    sub-float/2addr v8, v5

    div-float/2addr v8, v10

    int-to-float v9, v1

    sub-float/2addr v9, v0

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9, v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setDimensions(FFFF)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v7, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAspectRatioGsimLog(I)V

    goto/16 :goto_0

    :cond_3
    int-to-float v5, v6

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x41800000    # 16.0f

    div-float v0, v7, v8

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f0e0120 -> :sswitch_0
        0x7f0e0123 -> :sswitch_1
        0x7f0e0126 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateBG(IIZ)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBG(IILandroid/content/Context;Z)V

    return-void
.end method

.method private updateBorderPopupPosition()V
    .locals 10

    const v9, 0x7f0e01a6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v8, 0x2

    new-array v2, v8, [I

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080200

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080539

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v8, 0x0

    aget v8, v2, v8

    sub-int v9, v5, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v7, v8

    int-to-float v8, v1

    add-float/2addr v8, v7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v8, v1

    sub-int/2addr v8, v3

    int-to-float v7, v8

    :cond_0
    const v8, 0x7f0e0164

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS3Device()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    float-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0805a5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private updateCollageBackground(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0153

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0157

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0159

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e015b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e015d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e015f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0e0161

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCollageTextViewLayoutParams(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateColorPicker()V
    .locals 5

    const v4, 0x7f0e0169

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080262

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateColorPickerBG(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initColorPicker()V

    :cond_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->updateColorOnClick(I)V

    :cond_1
    return-void
.end method

.method private updateContentDescription()V
    .locals 12

    const/16 v11, 0x10

    const v10, 0x7f070263

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const v2, 0x7f0e01b3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700af

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700ce

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0700ee

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f07003a

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v1

    goto/16 :goto_0

    :cond_1
    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_3

    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    const v2, 0x7f0e01b3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700af

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700ce

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0700ee

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e01b6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f070323

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateContentDescriptionForAspectRatio(I)V
    .locals 12

    const/16 v11, 0x10

    const v10, 0x7f070263

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0e0120

    if-ne p1, v2, :cond_2

    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContentDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_3

    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContentDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContentDescriptionButtonWithSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_5

    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    const v2, 0x7f0e0123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private updateLanguage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e01a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e01a5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e01aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ab

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e01ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateLayoutPopupPosition()V
    .locals 13

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v10, 0x2

    new-array v2, v10, [I

    const v10, 0x7f0e01a1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v10, 0x7f0e01a1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v3

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int v11, v6, v0

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v8, v10

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f0e019b

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    aget v11, v2, v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    sub-int v11, v6, v0

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v8, v10

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS3Device()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v8, v10

    :cond_1
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    const/4 v8, 0x0

    :cond_2
    const v10, 0x7f0e01b9

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    const v11, 0x7f0e01ba

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0805a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_0
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080215

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x6

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08021f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x7

    add-int v0, v10, v11

    goto/16 :goto_0

    :pswitch_1
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080215

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0xa

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08021f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0xb

    add-int v0, v10, v11

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080215

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0xb

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08021f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0xc

    add-int v0, v10, v11

    goto/16 :goto_0

    :pswitch_3
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080215

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x8

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08021f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x9

    add-int v0, v10, v11

    goto/16 :goto_0

    :cond_3
    float-to-int v10, v8

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateMainButtonsParams()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0188

    const/4 v4, 0x0

    const v5, 0x7f0804ae

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0e0045

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS3Device()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0045

    const/4 v3, -0x1

    const v4, 0x7f0804ae

    const v5, 0x7f0804c9

    const v6, 0x7f0804c9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0190

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f0804c9

    const v6, 0x7f0804c9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0e0190

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080524

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080514

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0e0190

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0191

    const v4, 0x7f0801f9

    const v5, 0x7f0801f8

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0192

    const v4, 0x7f0801f9

    const v5, 0x7f0801f8

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0193

    const v4, 0x7f0801f9

    const v5, 0x7f0801f8

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0194

    const v4, 0x7f0801f9

    const v5, 0x7f0801f8

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v13, v1, :cond_2

    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x7f0804ae

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f080232

    const v8, 0x7f080232

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v4

    const v5, 0x7f0801ed

    const v6, 0x7f0801ed

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getId()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateCollageTextViewLayoutParams(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0045

    const/4 v3, 0x0

    const v4, 0x7f0804ae

    const v5, 0x7f0805a6

    const v6, 0x7f0805a6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0190

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0805a6

    const v6, 0x7f0805a6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0e018c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0804ae

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    return-void
.end method

.method private updateModifyPopupParams()V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e01b2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0206a3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b0

    const v2, 0x7f0801f9

    const v3, 0x7f0801f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f080514

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e01b0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b7

    const v2, 0x7f0801f9

    const v3, 0x7f0801f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f080514

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0801f8

    const v7, 0x7f0801f8

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e01b2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0804c5

    const v3, 0x7f0804c4

    const v4, 0x7f080364

    const v5, 0x7f080218

    const v6, 0x7f080541

    const v7, 0x7f080541

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v8, -0x1

    if-ne v9, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0804c5

    const v3, 0x7f0804c4

    const v4, 0x7f080218

    const v5, 0x7f080364

    const v6, 0x7f080541

    const v7, 0x7f080541

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0804c5

    const v3, 0x7f0804c4

    const v4, 0x7f080218

    const v5, 0x7f080218

    const v6, 0x7f080541

    const v7, 0x7f080541

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0e01b3

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e01b4

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e01b5

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f020186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e01b6

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f020185

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateRatioPopupPosition()V
    .locals 11

    const v8, 0x7f0e019c

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v7, 0x2

    new-array v2, v7, [I

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08021f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    add-int v1, v7, v8

    aget v7, v2, v10

    sub-int v8, v4, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f0e019b

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aget v8, v2, v10

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    sub-int v8, v4, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS3Device()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabS2Device()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080527

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v6, v7

    :cond_1
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    const/4 v6, 0x0

    :cond_2
    const v7, 0x7f0e011f

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v7, v6

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeAddImageIconAlignment(Landroid/graphics/RectF;Landroid/content/Context;)V
    .locals 10

    const v9, 0x7f0700ad

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v1, v7

    iget v7, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v7

    iget v7, p1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v7

    move-object v7, p2

    check-cast v7, Landroid/app/Activity;

    const v8, 0x7f0e011d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p2, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v5

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v7

    sub-int v7, v5, v2

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_2
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public checkIfPrivateImageExists()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getmFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getmFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doSaveFromExecutor()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isSavedFromExecutor:Z

    const v0, 0x7f0e0478

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    return-void
.end method

.method public exitLowSDCardMemory(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f070050

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAspectId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    return v0
.end method

.method public getCurrentStyle()I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getFinalBitmap()Landroid/graphics/Bitmap;
    .locals 50

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v9

    const/high16 v43, 0x4b000000    # 8388608.0f

    mul-float v44, v10, v9

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v30, v0

    mul-float v43, v30, v10

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v29

    mul-float v43, v30, v9

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v28

    const/16 v43, 0x1

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_0

    const/16 v43, 0x1

    move/from16 v0, v28

    move/from16 v1, v43

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v25, 0x0

    :goto_0
    monitor-exit p0

    return-object v25

    :cond_1
    :try_start_1
    sget-object v43, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v29

    move/from16 v1, v28

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getBGTiles()[I

    move-result-object v35

    const/16 v43, 0x0

    aget v43, v35, v43

    const/16 v44, 0x1

    aget v44, v35, v44

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v6, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getTiledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v34

    new-instance v43, Landroid/graphics/Rect;

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v46

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v47

    invoke-direct/range {v43 .. v47}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v44, Landroid/graphics/Rect;

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v47

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v48

    invoke-direct/range {v44 .. v48}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v45, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_3
    :goto_1
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_8

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    if-eqz v17, :cond_3

    new-instance v15, Landroid/graphics/RectF;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v15, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v21

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v20

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v21

    div-float v43, v43, v10

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v42

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v18

    div-float v43, v43, v9

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v12

    if-lez v42, :cond_3

    if-lez v12, :cond_3

    sget-object v43, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v36

    new-instance v37, Landroid/graphics/Canvas;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v43, Landroid/graphics/Rect;

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v45, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    mul-float v45, v45, v46

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->round(F)I

    move-result v45

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v46, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    mul-float v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->round(F)I

    move-result v46

    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v47, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    mul-float v47, v47, v48

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->round(F)I

    move-result v47

    iget v0, v15, Landroid/graphics/RectF;->bottom:F

    move/from16 v48, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v48, v48, v49

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->round(F)I

    move-result v48

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v45, Landroid/graphics/Rect;

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v48

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v49

    invoke-direct/range {v45 .. v49}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v46, Landroid/graphics/Paint;

    const/16 v47, 0x3

    invoke-direct/range {v46 .. v47}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    move-object/from16 v2, v43

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v39

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundedness()F

    move-result v24

    move/from16 v0, v39

    move/from16 v1, v38

    if-le v0, v1, :cond_5

    div-int/lit8 v43, v38, 0x2

    :goto_2
    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v32, v24, v43

    const/4 v13, 0x0

    :goto_3
    int-to-float v0, v13

    move/from16 v43, v0

    cmpg-float v43, v43, v32

    if-gez v43, :cond_7

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v43, v0

    int-to-float v0, v13

    move/from16 v45, v0

    sub-float v45, v32, v45

    cmpg-float v43, v43, v45

    if-gez v43, :cond_6

    int-to-float v0, v13

    move/from16 v43, v0

    sub-float v43, v32, v43

    int-to-float v0, v13

    move/from16 v45, v0

    sub-float v45, v32, v45

    mul-float v43, v43, v45

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v32, v45

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v46, v32, v46

    mul-float v45, v45, v46

    add-float v43, v43, v45

    mul-float v45, v32, v32

    cmpl-float v43, v43, v45

    if-lez v43, :cond_4

    const/16 v43, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v23

    move/from16 v2, v43

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    sub-int v43, v39, v13

    add-int/lit8 v43, v43, -0x1

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v23

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v43, v38, -0x1

    sub-int v43, v43, v23

    const/16 v45, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v45

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    sub-int v43, v39, v13

    add-int/lit8 v43, v43, -0x1

    add-int/lit8 v45, v38, -0x1

    sub-int v45, v45, v23

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_5
    div-int/lit8 v43, v39, 0x2

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_7
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v19

    div-float v43, v43, v10

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v45, v45, v20

    div-float v45, v45, v9

    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v43

    monitor-exit p0

    throw v43

    :cond_8
    const/16 v27, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->checkIfPrivateImageExists()Z

    move-result v43

    if-eqz v43, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-static/range {v43 .. v44}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getSaveDirPathForPrivate(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v27

    :goto_5
    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    new-instance v43, Ljava/io/File;

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v43 .. v43}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v43

    if-eqz v43, :cond_e

    new-instance v26, Ljava/io/File;

    sget-object v43, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_9

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    :cond_9
    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    :cond_a
    :goto_6
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v43

    if-eqz v43, :cond_11

    new-instance v26, Ljava/io/File;

    sget-object v43, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_GRACE_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    :cond_b
    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_GRACE_PHOTO_SAVE_DIR:Ljava/lang/String;

    :cond_c
    :goto_7
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    new-instance v44, Ljava/text/SimpleDateFormat;

    const-string v45, "yyyyMMdd_HHmmss"

    invoke-direct/range {v44 .. v45}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v45, Ljava/util/Date;

    invoke-direct/range {v45 .. v45}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".jpg"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v33, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v43, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v44, 0x50

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    const-string v43, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v43, "orientation"

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v43, "width"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v43, "height"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    sget-object v44, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mUri:Landroid/net/Uri;

    new-instance v31, Landroid/content/Intent;

    const-string v43, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getSaveDirPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    :cond_e
    if-eqz v27, :cond_f

    new-instance v43, Ljava/io/File;

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_f

    const/4 v14, 0x1

    new-instance v43, Ljava/io/File;

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_a

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " was not created "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    if-nez v27, :cond_a

    new-instance v26, Ljava/io/File;

    sget-object v43, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    :cond_10
    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    goto/16 :goto_6

    :cond_11
    invoke-static/range {v27 .. v27}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNotSupportFolder(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_c

    new-instance v26, Ljava/io/File;

    sget-object v43, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_12

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    :cond_12
    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    goto/16 :goto_7

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public getPrivateSaveFolder()Ljava/lang/String;
    .locals 2

    const-string v0, "Private"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPrivateSaveFolder:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPrivateSaveFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM/Photo editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasAddImageIconContainerFocus(Landroid/content/Context;)Z
    .locals 2

    check-cast p1, Landroid/app/Activity;

    const v1, 0x7f0e011d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    return v1
.end method

.method public hideAttachGallery(Z)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v4, 0x7f0e00de

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f040010

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddEnable(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e0195

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_0

    new-instance v4, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$5;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->removeAttachSheet(Landroid/view/View;)V

    goto :goto_1
.end method

.method public hideModifyPopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0197

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isModifyPopupShown:Z

    return-void
.end method

.method public initForDesktopMode()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0129

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e01b9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$16;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$16;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$17;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public initUI()V
    .locals 11

    const v10, 0x7f0c002c

    const v6, 0x7f0206ac

    const/16 v9, 0x9c4

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e0126

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e00ef

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mBorderFillerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mBorderFillerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$11;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$11;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e0168

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e0166

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-boolean v8, v4, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isCollage:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput-boolean v8, v4, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isCollage:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTextVisible(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->semSetThumbTintColor(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->semSetThumbTintColor(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setBackgroundResource(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$12;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$12;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setCustomSeekListener(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$13;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$13;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getRoundSeekBarKeyIncrement()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setKeyProgressIncrement(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTextVisible(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$14;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setCustomSeekListener(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x19

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgress(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$15;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$15;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v4

    if-ge v1, v4, :cond_2

    const/high16 v4, 0x41c80000    # 25.0f

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v5

    div-int/2addr v4, v5

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getCustomMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setKeyProgressIncrement(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initColorPicker()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->plusLayoutListnener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setBackgrounds()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setTextViewProperties()V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isCameraOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isCameraOpening()Z

    move-result v0

    goto :goto_0
.end method

.method public isCheckNotSupportFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    invoke-static {p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMenuShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveArrowToCurrentRectPosition(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    if-eqz p2, :cond_0

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_0
    if-eqz p3, :cond_1

    int-to-float v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    const/16 v12, 0xfa3

    move/from16 v0, p1

    if-eq v0, v12, :cond_d

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    const/16 v12, 0xfa1

    move/from16 v0, p1

    if-ne v0, v12, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v4

    if-eqz v3, :cond_6

    const-string v12, "selectedItems"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isCheckNotSupportFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-static {v13, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getUriMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v12, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->addGrid(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-lez v10, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v14, 0x7f0701a2

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v16, v16, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v12

    if-ge v4, v12, :cond_4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v13, 0x7f0e0126

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v13

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    const v12, 0x7f0e0126

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertNumberOfImagesAddedGsimLog(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v13, 0x7f070315

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getCurrentStyle()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v13, v14}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCurrentLayout(IILandroid/content/Context;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    goto :goto_2

    :cond_9
    const/16 v12, 0xfa2

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v12, "selectedItems"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-static {v13, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getUriMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isCheckNotSupportFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v13, 0x7f070315

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertPopUpReplaceGsimLog()V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->replaceItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v13, 0x7f0e0126

    if-ne v12, v13, :cond_c

    const v12, 0x7f0e0126

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    goto :goto_4

    :cond_d
    const/16 v12, 0xfa3

    move/from16 v0, p1

    if-ne v0, v12, :cond_10

    sget-object v9, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->PE_RESULT_PATH:Ljava/lang/String;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItemToEdit:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v2, v13, v14}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    :cond_e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v12, "onActivity Result.. file deleted "

    invoke-static {v12}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    goto/16 :goto_3

    :cond_10
    const/16 v12, 0xfa1

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    if-nez p2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUIOnBackPress(Landroid/app/Activity;)V

    goto/16 :goto_3
.end method

.method public onBackPressed()Z
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    :goto_0
    return v3

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUIOnBackPress(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$25;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$25;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$26;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$26;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->shareToGallery(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(I)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isSavedFromExecutor:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->cancelDrag()V

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isSavedFromExecutor:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v4, 0x7f0e0197

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_42

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x7f0e01b3

    if-eq p1, v4, :cond_2

    const v4, 0x7f0e01b4

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const v4, 0x7f0e01b3

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e01b5

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e01b6

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e0097

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e0478

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e0099

    if-eq p1, v4, :cond_4

    const v4, 0x7f0e0479

    if-eq p1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_4
    const v4, 0x7f0e0099

    if-eq p1, v4, :cond_5

    const v4, 0x7f0e0479

    if-eq p1, v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    return-void

    :sswitch_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v6, 0x7f0e019d

    if-ne v4, v6, :cond_7

    const/4 v4, -0x1

    :goto_2
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v6, 0x7f0e0120

    if-ne v4, v6, :cond_8

    const v4, 0x7f0e0120

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateRatioPopupPosition()V

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f0e019d

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v6, 0x7f0e0123

    if-ne v4, v6, :cond_6

    const v4, 0x7f0e0123

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :sswitch_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v6, 0x7f0e01a2

    if-ne v4, v6, :cond_9

    const/4 v4, -0x1

    :goto_4
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutPopupPosition()V

    goto/16 :goto_0

    :cond_9
    const v4, 0x7f0e01a2

    goto :goto_4

    :sswitch_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v6, 0x7f0e01a7

    if-ne v4, v6, :cond_a

    const/4 v4, -0x1

    :goto_5
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v4, 0x7f0e00ea

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBorderPopupPosition()V

    goto/16 :goto_0

    :cond_a
    const v4, 0x7f0e01a7

    goto :goto_5

    :sswitch_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v6, 0x7f0e01ac

    if-ne v4, v6, :cond_b

    const/4 v4, -0x1

    :goto_6
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v4, 0x7f0e012b

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_b
    const v4, 0x7f0e01ac

    goto :goto_6

    :sswitch_4
    const v4, 0x7f0e0126

    if-ne p1, v4, :cond_f

    const/4 v4, 0x0

    sput-boolean v4, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    :cond_c
    :goto_7
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, p1, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    :cond_d
    :goto_8
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f0e0126

    if-ne p1, v4, :cond_12

    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e01a4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x3e8f5c29    # 0.28f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e01a5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x3e8f5c29    # 0.28f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateLayout(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v6

    aget v4, v4, v6

    const/16 v6, 0x45

    if-ne v4, v6, :cond_e

    const v4, 0x7f0e02e4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    :cond_e
    :goto_9
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v4

    if-eqz v4, :cond_c

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    goto/16 :goto_7

    :cond_10
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-nez v4, :cond_11

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initColorPicker()V

    :cond_11
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getCurrentColor()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_updateColor(I)V

    goto/16 :goto_8

    :cond_12
    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e01a4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    const v4, 0x7f0e01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e01a5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateLayout(I)V

    goto :goto_9

    :sswitch_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_13

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_13
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_14
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_15

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_15
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_8
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_16

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_16
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_9
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_17

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_17
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_a
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_18

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_18
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_b
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_19

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_19
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_c
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1a

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1a
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_d
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1b

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1b
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_e
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1c

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1c
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_f
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1d

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1d
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_10
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1e

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1e
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_11
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_1f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_1f
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x7

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_12
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_20

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_20
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x8

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_13
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_21

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_21
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x9

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_14
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_22

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_22
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xa

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_15
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_23

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_23
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_16
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_24

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_24
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_17
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_25

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_25
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_18
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_26

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_26
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_19
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_27

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_27
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1a
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_28

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_28
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1b
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_29

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_29
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x7

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1c
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2a

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2a
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x8

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1d
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2b

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2b
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x9

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1e
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2c

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2c
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xa

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_1f
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2d

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2d
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xb

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_20
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2e

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2e
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_21
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_2f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_2f
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_22
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_30

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_30
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_23
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_31

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_31
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_24
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_32

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_32
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_25
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_33

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_33
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_26
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_34

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_34
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x7

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_27
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_35

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_35
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x8

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_28
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_36

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_36
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x9

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_29
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_37

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_37
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xa

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2a
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_38

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_38
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xb

    invoke-virtual {v4, v8, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2b
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_39

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_39
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2c
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3a

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3a
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v10, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2d
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3b

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3b
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2e
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3c

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3c
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_2f
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3d

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3d
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_30
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3e

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3e
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_31
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_3f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_3f
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x7

    invoke-virtual {v4, v10, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_32
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_40

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_40
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x8

    invoke-virtual {v4, v10, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_33
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    if-eq v4, p1, :cond_41

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    :cond_41
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_34
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_35
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_36
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_37
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_38
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_39
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3a
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3b
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3c
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3d
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3e
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_3f
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_40
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_41
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_42
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0xf

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_43
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_44
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_45
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_46
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_47
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x14

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_48
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_49
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4a
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x17

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4b
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4c
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4d
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x1a

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4e
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/16 v6, 0x1b

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertBackgroundGsimLog(I)V

    goto/16 :goto_0

    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateColorPickerBG(I)V

    goto/16 :goto_0

    :sswitch_50
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_UP_BUTTON:Ljava/lang/String;

    const-string v7, "Up button"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doBackPress()V

    goto/16 :goto_0

    :sswitch_51
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_ADD:Ljava/lang/String;

    const-string v7, "Add"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->pickImageFromGallery(Z)V

    goto/16 :goto_0

    :sswitch_52
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doShare()V

    goto/16 :goto_0

    :sswitch_53
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SHUFFLE:Ljava/lang/String;

    const-string v7, "Shuffle"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doShuffle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertShuffleGsimLog()V

    goto/16 :goto_0

    :sswitch_54
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_SAVE:Ljava/lang/String;

    const-string v7, "Save"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doSave()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->logInGsimLogs()V

    goto/16 :goto_0

    :sswitch_55
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_REPLACE:Ljava/lang/String;

    const-string v7, "Replace"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doReplace()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertPopUpReplaceGsimLog()V

    goto/16 :goto_0

    :sswitch_56
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_REMOVE:Ljava/lang/String;

    const-string v7, "Remove"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doDelete()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertPopUpRemoveGsimLog()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertLayoutGsimLog(II)V

    goto/16 :goto_0

    :sswitch_57
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_EFFECTS:Ljava/lang/String;

    const-string v7, "Effects"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doEffects()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertPopUpEffectGsimLog()V

    goto/16 :goto_0

    :sswitch_58
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_ADJUSTMENT:Ljava/lang/String;

    const-string v7, "Adjustment"

    invoke-static {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doRotate()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->gsimLogInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertPopUpAdjustmentGsimLog()V

    goto/16 :goto_0

    :cond_42
    const/4 v4, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e008b -> :sswitch_50
        0x7f0e0093 -> :sswitch_51
        0x7f0e0095 -> :sswitch_53
        0x7f0e0097 -> :sswitch_54
        0x7f0e0099 -> :sswitch_52
        0x7f0e0120 -> :sswitch_4
        0x7f0e0123 -> :sswitch_4
        0x7f0e0126 -> :sswitch_4
        0x7f0e012b -> :sswitch_33
        0x7f0e012c -> :sswitch_34
        0x7f0e012e -> :sswitch_35
        0x7f0e0131 -> :sswitch_36
        0x7f0e0133 -> :sswitch_37
        0x7f0e0135 -> :sswitch_38
        0x7f0e0137 -> :sswitch_39
        0x7f0e0139 -> :sswitch_3a
        0x7f0e013b -> :sswitch_3b
        0x7f0e013d -> :sswitch_3c
        0x7f0e013f -> :sswitch_3d
        0x7f0e0141 -> :sswitch_3e
        0x7f0e0143 -> :sswitch_3f
        0x7f0e0145 -> :sswitch_40
        0x7f0e0147 -> :sswitch_41
        0x7f0e0149 -> :sswitch_42
        0x7f0e014b -> :sswitch_43
        0x7f0e014d -> :sswitch_44
        0x7f0e014f -> :sswitch_45
        0x7f0e0151 -> :sswitch_46
        0x7f0e0153 -> :sswitch_47
        0x7f0e0155 -> :sswitch_48
        0x7f0e0157 -> :sswitch_49
        0x7f0e0159 -> :sswitch_4a
        0x7f0e015b -> :sswitch_4b
        0x7f0e015d -> :sswitch_4c
        0x7f0e015f -> :sswitch_4d
        0x7f0e0161 -> :sswitch_4e
        0x7f0e016c -> :sswitch_4f
        0x7f0e016d -> :sswitch_4f
        0x7f0e016e -> :sswitch_4f
        0x7f0e016f -> :sswitch_4f
        0x7f0e0170 -> :sswitch_4f
        0x7f0e0171 -> :sswitch_4f
        0x7f0e0172 -> :sswitch_4f
        0x7f0e0173 -> :sswitch_4f
        0x7f0e0174 -> :sswitch_4f
        0x7f0e0175 -> :sswitch_4f
        0x7f0e0176 -> :sswitch_4f
        0x7f0e0177 -> :sswitch_4f
        0x7f0e0178 -> :sswitch_4f
        0x7f0e0179 -> :sswitch_4f
        0x7f0e019d -> :sswitch_0
        0x7f0e01a2 -> :sswitch_1
        0x7f0e01a7 -> :sswitch_2
        0x7f0e01ac -> :sswitch_3
        0x7f0e01b3 -> :sswitch_55
        0x7f0e01b4 -> :sswitch_56
        0x7f0e01b5 -> :sswitch_57
        0x7f0e01b6 -> :sswitch_58
        0x7f0e027c -> :sswitch_5
        0x7f0e027e -> :sswitch_6
        0x7f0e0280 -> :sswitch_7
        0x7f0e0282 -> :sswitch_8
        0x7f0e0284 -> :sswitch_9
        0x7f0e0286 -> :sswitch_a
        0x7f0e0289 -> :sswitch_b
        0x7f0e028b -> :sswitch_c
        0x7f0e028d -> :sswitch_d
        0x7f0e028f -> :sswitch_e
        0x7f0e0291 -> :sswitch_f
        0x7f0e0293 -> :sswitch_10
        0x7f0e0295 -> :sswitch_11
        0x7f0e0297 -> :sswitch_12
        0x7f0e0299 -> :sswitch_13
        0x7f0e029c -> :sswitch_14
        0x7f0e02a0 -> :sswitch_15
        0x7f0e02a3 -> :sswitch_16
        0x7f0e02a6 -> :sswitch_17
        0x7f0e02a9 -> :sswitch_18
        0x7f0e02ac -> :sswitch_19
        0x7f0e02af -> :sswitch_1a
        0x7f0e02b2 -> :sswitch_1b
        0x7f0e02b5 -> :sswitch_1c
        0x7f0e02b8 -> :sswitch_1d
        0x7f0e02bb -> :sswitch_1e
        0x7f0e02be -> :sswitch_1f
        0x7f0e02c2 -> :sswitch_20
        0x7f0e02c5 -> :sswitch_21
        0x7f0e02c8 -> :sswitch_22
        0x7f0e02cb -> :sswitch_23
        0x7f0e02ce -> :sswitch_24
        0x7f0e02d1 -> :sswitch_25
        0x7f0e02d4 -> :sswitch_26
        0x7f0e02d7 -> :sswitch_27
        0x7f0e02da -> :sswitch_28
        0x7f0e02dd -> :sswitch_29
        0x7f0e02e0 -> :sswitch_2a
        0x7f0e02e4 -> :sswitch_2b
        0x7f0e02e7 -> :sswitch_2c
        0x7f0e02ea -> :sswitch_2d
        0x7f0e02ed -> :sswitch_2e
        0x7f0e02f0 -> :sswitch_2f
        0x7f0e02f3 -> :sswitch_30
        0x7f0e02f6 -> :sswitch_31
        0x7f0e02f9 -> :sswitch_32
        0x7f0e0476 -> :sswitch_51
        0x7f0e0477 -> :sswitch_53
        0x7f0e0478 -> :sswitch_54
        0x7f0e0479 -> :sswitch_52
    .end sparse-switch
.end method

.method public onConfigurationChanged()V
    .locals 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setOrientationChange(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateMargin(FF)V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDensity:F

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateMainButtonsParams()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatioButtonsParams()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyleButtonsParams()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBorderLayoutParams()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBackgroundButtonsParams()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateModifyPopupParams()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setBackgrounds()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateColorPicker()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->plusLayoutListnener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->onOrientationChanged(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBottomMenuBG()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddIconSize()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setOrientationChange(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    return-void
.end method

.method public onConfigurationColorPickerChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->configurationChanged()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onTouchDown(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragTouch(Landroid/view/MotionEvent;)V
    .locals 37

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragReady:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevX:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->diffX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevY:F

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->diffY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v5, 0x0

    aget v6, v3, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->diffX:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrentValues:[F

    const/4 v5, 0x1

    aget v6, v3, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->diffY:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v6

    add-float/2addr v5, v6

    cmpl-float v5, v35, v5

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v5, v35, v5

    if-gez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v6

    add-float/2addr v5, v6

    cmpl-float v5, v36, v5

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v5, v36, v5

    if-gez v5, :cond_2

    move-object/from16 v29, v32

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_0

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItems()Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v35, v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v35, v4

    if-gez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v36, v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v36, v4

    if-gez v4, :cond_7

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-object/from16 v27, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDragItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aput-object v4, v27, v3

    const/4 v3, 0x1

    aput-object v32, v27, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    const/16 v30, 0x0

    :goto_1
    const/4 v3, 0x2

    move/from16 v0, v30

    if-ge v0, v3, :cond_0

    aget-object v26, v27, v30

    rsub-int/lit8 v3, v30, 0x1

    aget-object v3, v27, v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getItemInfo()[F

    move-result-object v33

    rsub-int/lit8 v3, v30, 0x1

    aget-object v3, v27, v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v31

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    const/4 v3, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimValues()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v33, v5

    const/4 v6, 0x1

    aget v6, v33, v6

    const/4 v7, 0x2

    aget v7, v33, v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v33, v8

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v10

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    move-object/from16 v0, v31

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v31

    iget v14, v0, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    aget v15, v33, v15

    const/16 v16, 0x1

    aget v16, v33, v16

    const/16 v17, 0x2

    aget v17, v33, v17

    const/16 v18, 0x3

    aget v18, v33, v18

    const/16 v19, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v20

    const/16 v21, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v21

    const/16 v22, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v22

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;-><init>(I[FFFFFFFFFFFFFFFFFFFFF)V

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setDuration(I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setAnimation(Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$22;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->start(Landroid/content/Context;)V

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->cancelDrag()V

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onFling(FF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    const/4 v0, 0x0

    return v0
.end method

.method public onLanguageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->onLanguageChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->onLanguageChanged()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setTextViewProperties()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLanguage()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setBackgrounds()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isDLResizing()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLastDLTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIgnoreLongPress:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->prevY:F

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initDrag(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onMenuClicked(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    return-void
.end method

.method public onMenuLongClicked(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPEInstanceSerivceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->startAgainPE()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mPEStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateContentDescription()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateContentDescriptionForAspectRatio(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateContentDescriptionForReturn()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onScale(Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onScroll(FF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragExiting:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onSingleTapUp(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTouchedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e01b5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "CollageManager::onTouch"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isDLResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDLTouch(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIgnoreLongPress:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onDragTouch(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIgnoreLongPress:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIgnoreLongPress:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public reCreateDialogScreenResolution()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->onLanguageChanged()V

    :cond_0
    return-void
.end method

.method public resetBGColor()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    const v0, 0x7f0e016c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGColor(I)V

    return-void
.end method

.method public resetCurrMain()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    return-void
.end method

.method public setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e011d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListener(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e011e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$23;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$23;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setAddImageIconVisibility(Landroid/content/Context;I)V
    .locals 4

    const v3, 0x7f0700ad

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e011d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e011e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setClickable(Landroid/app/Activity;Z)V
    .locals 1

    const v0, 0x7f0e019d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0e01a2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0e01a7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0e01ac

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0e011d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$6;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setCollageMenu(Landroid/view/Menu;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->registerOnTouchListenerForActionbar()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->updateActionbarLayout()V

    return-void
.end method

.method public setPosition(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/view/View;)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateModifyPopupParams()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v21

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v23

    add-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v24

    add-float v23, v23, v24

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    invoke-direct/range {v19 .. v23}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getScreenWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getScreenHeight()I

    move-result v9

    const v20, 0x7f0e01b0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v20, 0x7f0e01b7

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0801f9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0801f8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080367

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v20, 0x7f0e01b5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0804c4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080541

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v15, v20, v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v12, v20, v15

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    div-int/lit8 v21, v16, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v11, v0

    add-int v20, v11, v16

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    sub-int v11, v10, v16

    :cond_1
    :goto_2
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sub-int v20, v9, v15

    add-int v21, v12, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v12, v0

    if-gez v12, :cond_2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v12, v0

    :cond_2
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0805b2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    sub-int v12, v12, v20

    iput v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_8

    sub-int v20, v10, v16

    sub-int v20, v20, v11

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_3
    sub-int v20, v18, v11

    div-int/lit8 v21, v7, 0x2

    sub-int v17, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->moveArrowToCurrentRectPosition(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v12, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080217

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v20, v9, v8

    sub-int v20, v20, v15

    move/from16 v0, v20

    if-le v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v12, v0

    if-ge v12, v3, :cond_3

    move v12, v3

    :cond_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0805b1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v12, v12, v20

    :cond_5
    iput v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0804c5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080364

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080218

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0x6

    add-int v16, v20, v21

    goto/16 :goto_1

    :cond_7
    if-gez v11, :cond_1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_8
    iput v11, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_3
.end method

.method public setRoundSeekBarKeyIncrement(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setKeyProgressIncrement(I)V

    :cond_0
    return-void
.end method

.method public shareToGallery(Ljava/lang/String;)V
    .locals 6

    const-string v3, "PEDIT_CollageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning Intent to Gallery "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "saved_uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "PEDIT_CollageManager"

    const-string v4, "Setting Result SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public shareVia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->launchPermissionForSaveShare()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    if-nez v15, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v15}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual {v15}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "display"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenSharingSupport(Landroid/hardware/display/DisplayManager;)Z

    move-result v12

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v16, "android.intent.action.SEND"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v12, :cond_a

    const-string v16, "more_actions_screen_sharing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledQuickConnect(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledOneConnect(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    :cond_5
    const-string v16, "more_actions_quick_connect"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    const-string v16, "more_actions_print"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v16, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v16, 0x24000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    move v9, v6

    :cond_7
    if-ltz v9, :cond_8

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0702a1

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/pm/LabeledIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/LabeledIntent;

    const/high16 v16, 0x20000000

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v16, "android.intent.extra.INITIAL_INTENTS"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v16, 0x24000000

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_9

    const-string v16, "extra_chooser_bixby_applist"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v16, "extra_chooser_bixby_state"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenMirroringSupport(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_b

    const-string v16, "more_actions_screen_mirroring"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForChangePlayerSupport(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "more_actions_change_player"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public showFocusOnAddImageIcon(Landroid/content/Context;)V
    .locals 6

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e011d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f0700ad

    invoke-static {p1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$24;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$24;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/widget/FrameLayout;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showModifyPopUp()V
    .locals 12

    const/16 v11, 0x64

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CollageManager::showModifyPopUp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const v5, 0x7f0e01b5

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0e01b6

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, v11, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, v11, :cond_2

    :cond_0
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v6, 0x7f0e0126

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    if-eqz v5, :cond_3

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isModifyPopupShown:Z

    const v5, 0x7f0e0197

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0e01af

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setPosition(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public shuffle()V
    .locals 57

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    check-cast v26, Landroid/app/Activity;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    new-instance v48, Ljava/util/Random;

    invoke-direct/range {v48 .. v48}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v6, 0x7f0e012a

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v28, v4

    check-cast v28, Landroid/view/ViewGroup;

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v27, v27, -0x8

    :cond_0
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v49

    const v4, 0x7f0e012b

    move/from16 v0, v49

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getCurrentColor()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetBGColor()V

    :goto_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const v6, 0x7f0e0126

    if-ne v4, v6, :cond_4

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getCurrentColor()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGColor(I)V

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getCurrentButtonId()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1, v4, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_1

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v44

    move-object/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v42

    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v44

    if-le v0, v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    move/from16 v0, v52

    if-ne v0, v4, :cond_5

    move-object/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v52

    goto :goto_1

    :cond_5
    move/from16 v50, v52

    invoke-static/range {v50 .. v50}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCollageData(I)[[F

    move-result-object v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v51

    const/16 v39, 0x0

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v51

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mItems:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getItemInfo()[F

    move-result-object v43

    aget-object v46, v30, v39

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v33

    const/4 v3, 0x0

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v40

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getPOI()Landroid/graphics/PointF;

    move-result-object v47

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    if-eqz v47, :cond_6

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getMargin()F

    move-result v45

    const/4 v4, 0x2

    aget v4, v46, v4

    sub-float v6, v35, v45

    mul-float/2addr v4, v6

    sub-float v37, v4, v45

    const/4 v4, 0x3

    aget v4, v46, v4

    sub-float v6, v34, v45

    mul-float/2addr v4, v6

    sub-float v36, v4, v45

    div-float v4, v37, v36

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v38, v37, v4

    :goto_3
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v38

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getUserScale()F

    move-result v6

    mul-float v56, v4, v6

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v38

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getUserScale()F

    move-result v6

    mul-float v55, v4, v6

    move-object/from16 v0, v47

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v56

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v37, v6

    sub-float v53, v4, v6

    move-object/from16 v0, v47

    iget v4, v0, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v55

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v36, v6

    sub-float v54, v4, v6

    div-float v24, v53, v56

    div-float v25, v54, v55

    :cond_6
    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    const/4 v4, 0x0

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimValues()[F

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v43, v6

    const/4 v7, 0x1

    aget v7, v43, v7

    const/4 v8, 0x2

    aget v8, v43, v8

    const/4 v9, 0x3

    aget v9, v43, v9

    const/4 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v11

    const/4 v12, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v12

    const/4 v13, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v13

    move-object/from16 v0, v40

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v40

    iget v15, v0, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x0

    aget v16, v46, v16

    const/16 v17, 0x1

    aget v17, v46, v17

    const/16 v18, 0x2

    aget v18, v46, v18

    const/16 v19, 0x3

    aget v19, v46, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v25}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;-><init>(I[FFFFFFFFFFFFFFFFFFFFF)V

    :goto_4
    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setDuration(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setAnimation(Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v42

    invoke-direct {v4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;II)V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->start(Landroid/content/Context;)V

    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v38, v36, v4

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimValues()[F

    move-result-object v5

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    const/4 v10, 0x4

    aget v10, v5, v10

    const/4 v11, 0x5

    aget v11, v5, v11

    const/4 v12, 0x6

    aget v12, v5, v12

    const/4 v13, 0x7

    aget v13, v5, v13

    move-object/from16 v0, v40

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v40

    iget v15, v0, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x0

    aget v16, v46, v16

    const/16 v17, 0x1

    aget v17, v46, v17

    const/16 v18, 0x2

    aget v18, v46, v18

    const/16 v19, 0x3

    aget v19, v46, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v25}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;-><init>(I[FFFFFFFFFFFFFFFFFFFFF)V

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getAnimation()Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->cancel()V

    goto :goto_4
.end method

.method public updateActionBar()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v0

    sget v1, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->enableSave(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setSaveVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setShareViaVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setAddVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setSaveVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->setShareViaVisibility(I)V

    goto :goto_1
.end method

.method public updateAddIconSize()V
    .locals 6

    const v5, 0x7f0801f7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e011d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v3, 0x7f0e011e

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v4, 0x7f020170

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateAddImagePosition()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CollageManager::updateAddImagePosition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->changeAddImageIconAlignment(Landroid/graphics/RectF;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateAspectRatio(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(IZ)V

    return-void
.end method

.method public updateAspectRatioButtonsParams()V
    .locals 15

    const v14, 0x7f080219

    const v2, 0x7f0801fb

    const v3, 0x7f0801fa

    const v4, 0x7f08021f

    const v5, 0x7f08057f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e011f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0206a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0120

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0123

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v4

    move v12, v4

    move v13, v4

    invoke-static/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0126

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v4

    move v12, v4

    move v13, v4

    invoke-static/range {v6 .. v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0128

    const v3, 0x7f08021a

    move v4, v14

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0122

    const v3, 0x7f08021a

    move v4, v14

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0125

    const v3, 0x7f08021a

    move v4, v14

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    return-void
.end method

.method public updateBackgroundButtonsParams()V
    .locals 13

    const v1, 0x7f0e0129

    const v12, 0x7f080264

    const v5, 0x7f08057f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const v4, 0x7f0801fc

    const v6, 0x7f0805a5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const v2, 0x7f0206a3

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e012a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080266

    const v3, 0x7f080262

    if-nez v9, :cond_0

    const/4 v4, 0x0

    :goto_1
    const v6, 0x7f080263

    const v7, 0x7f080265

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v4, v12

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateBorderLayoutParams()V
    .locals 15

    const/4 v10, 0x0

    const/4 v14, -0x2

    const v8, 0x7f080201

    const/4 v9, -0x1

    const v4, 0x7f08057f

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBorderPopupPosition()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00ea

    const v2, 0x7f080200

    const v3, 0x7f0801ff

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00eb

    const v7, 0x7f080202

    move v2, v9

    move v3, v8

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00ef

    const v3, 0x7f080203

    move v2, v9

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00f0

    const v6, 0x7f080202

    move v2, v9

    move v3, v8

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e00eb

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e00f0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move v2, v9

    move v3, v8

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    move v6, v13

    move v7, v9

    move v9, v4

    move v10, v4

    move v11, v4

    move v12, v4

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00ed

    const v7, 0x7f0801fe

    const v8, 0x7f0801fd

    const v9, 0x7f0801bf

    const v10, 0x7f0804c2

    move v11, v4

    move v12, v4

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00f2

    const v7, 0x7f0801fe

    const v8, 0x7f0801fd

    const v9, 0x7f0801bf

    const v10, 0x7f0804c2

    move v11, v4

    move v12, v4

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0166

    const v7, 0x7f080205

    move v8, v14

    move v9, v4

    move v10, v4

    move v11, v4

    move v12, v4

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0168

    const v7, 0x7f080205

    move v8, v14

    move v9, v4

    move v10, v4

    move v11, v4

    move v12, v4

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0e00ea

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v2, 0x7f0206a3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mMarginCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->updateThumb(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mRoundCustomSeek:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->updateThumb(Z)V

    return-void
.end method

.method public updateBottomMenuBG()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e0188

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0e019a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "#73FAFAFA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const-string v3, "#0A000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "#D9FAFAFA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const-string v3, "#12000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public updateFontScale()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/ActionBarManager;->onOrientationChanged(I)V

    return-void
.end method

.method public updateLayout(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateLayout(I)V

    :cond_0
    const/16 v0, 0x45

    if-ne p1, v0, :cond_1

    const v0, 0x7f0e02e4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    :cond_1
    return-void
.end method

.method public updateLayoutStyle(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v13

    add-int/lit8 v1, v11, -0x1

    if-ge v12, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080215

    const v4, 0x7f080214

    const v5, 0x7f08021f

    const v6, 0x7f08057f

    const v7, 0x7f08021f

    const v8, 0x7f08021f

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v5, 0x7f08021a

    const v6, 0x7f080219

    const v7, 0x7f08057f

    const v8, 0x7f08057f

    const v9, 0x7f08057f

    const v10, 0x7f08057f

    move v4, v13

    invoke-static/range {v3 .. v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080215

    const v4, 0x7f080214

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f08021f

    const v8, 0x7f08021f

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateLayoutStyleButtonsParams()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b9

    const/4 v2, -0x1

    const/4 v3, -0x2

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e01ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e01ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0206a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyle(I)V

    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyle(I)V

    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyle(I)V

    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyle(I)V

    const v0, 0x7f0e02e3

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutStyle(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutPopupPosition()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01b9

    const/4 v2, -0x1

    const/4 v3, -0x2

    const v4, 0x7f0802a5

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_0
.end method

.method public updateRandomBG()V
    .locals 6

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0e012a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0e012b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetBGColor()V

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBG(IIZ)V

    goto :goto_0
.end method

.method public updateUI()V
    .locals 10

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/4 v8, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI0(Landroid/app/Activity;)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    :cond_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v7, 0x7f0e01a2

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    const v4, 0x7f0e027b

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_9

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0e0288

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0e029f

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x4

    if-ne v1, v4, :cond_b

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0e02c1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x5

    if-ne v1, v4, :cond_c

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0e02e3

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x6

    if-ne v1, v7, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    :goto_4
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    :cond_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v6, 0x7f0e01ac

    if-ne v4, v6, :cond_6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    if-eq v4, v8, :cond_6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    const v6, 0x7f0e012b

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initColorPicker()V

    :cond_3
    const v4, 0x7f0e0169

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateColorPicker()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerDefault()V

    :cond_4
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBgColor:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mColorPicker:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getCurrentColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_updateColor(I)V

    :cond_5
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrBG:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    :cond_6
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v5, 0x7f0e019d

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    if-eq v4, v8, :cond_7

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrAspect:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrSub:I

    :cond_7
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    :cond_8
    return-void

    :cond_9
    move v4, v6

    goto/16 :goto_0

    :cond_a
    move v4, v6

    goto/16 :goto_1

    :cond_b
    move v4, v6

    goto/16 :goto_2

    :cond_c
    move v4, v6

    goto/16 :goto_3

    :cond_d
    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    const v2, 0x7f0e027c

    :goto_5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    if-eq v2, v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reset()V

    :cond_e
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    goto/16 :goto_4

    :pswitch_0
    const v2, 0x7f0e027c

    goto :goto_5

    :pswitch_1
    const v2, 0x7f0e0289

    goto :goto_5

    :pswitch_2
    const v2, 0x7f0e02a0

    goto :goto_5

    :pswitch_3
    const v2, 0x7f0e02c2

    goto :goto_5

    :pswitch_4
    const v2, 0x7f0e02e4

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateUI0(Landroid/app/Activity;)V
    .locals 8

    const v7, 0x7f0e01a7

    const v6, 0x7f0e01a2

    const v5, 0x7f0e019d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0191

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0192

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v6, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v7, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0193

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v7, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e01ac

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v4, 0x7f0e01ac

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0194

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v4, 0x7f0e01ac

    if-ne v3, v4, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e01a0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v1, v5, :cond_8

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e01ae

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v3, 0x7f0e01ac

    if-ne v1, v3, :cond_9

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e01a5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v1, v6, :cond_a

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e01aa

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v1, v7, :cond_b

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e011f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v5, :cond_c

    move v0, v2

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e01b9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v6, :cond_d

    move v0, v2

    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0164

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    if-ne v0, v7, :cond_e

    move v0, v2

    :goto_e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0129

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v3, 0x7f0e01ac

    if-ne v1, v3, :cond_f

    :goto_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0169

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v1, v2

    goto/16 :goto_7

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    goto :goto_b

    :cond_c
    const/16 v0, 0x8

    goto :goto_c

    :cond_d
    const/16 v0, 0x8

    goto :goto_d

    :cond_e
    const/16 v0, 0x8

    goto :goto_e

    :cond_f
    const/16 v2, 0x8

    goto :goto_f
.end method

.method public updateUIElements(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isVideoScreenshot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC9Model()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->listLayout1_X:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateRandomBG()V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getRandomLayout(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getExtraLayout(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetBGColor()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public updateUIOnBackPress(Landroid/app/Activity;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const v0, 0x7f0e019d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0191

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e01a2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0192

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e01a7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0193

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e01ac

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0194

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e011f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e01b9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0164

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0129

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrMain:I

    const v0, 0x7f0e0169

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
