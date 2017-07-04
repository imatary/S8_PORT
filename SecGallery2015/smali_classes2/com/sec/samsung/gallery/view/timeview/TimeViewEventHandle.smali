.class Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
.super Ljava/lang/Object;
.source "TimeViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;
    }
.end annotation


# instance fields
.field private final mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private final mTimeViewMultiPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;

.field private final mTimeViewPersonPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;

.field private final mTimeViewPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

.field private final mTimeViewSelectionPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;

.field private final mTimeViewState:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewState:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewMultiPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewPersonPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewSelectionPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewState:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewState:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method


# virtual methods
.method initializeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;->initializeView()V

    return-void
.end method

.method onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;->onBackPressed()V

    return-void
.end method

.method onItemClick(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;->onItemClick(II)Z

    move-result v0

    return v0
.end method

.method setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;->$SwitchMap$com$sec$samsung$gallery$core$LaunchModeType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/LaunchModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewMultiPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewMultiPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewPersonPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPersonPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mTimeViewSelectionPick:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewSelectionPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
