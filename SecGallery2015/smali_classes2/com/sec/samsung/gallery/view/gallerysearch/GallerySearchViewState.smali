.class public Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.source "GallerySearchViewState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GallerySearchViewState"


# instance fields
.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsShowHistoryList:Z

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mSearchFilterHidden:Z

.field private mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

.field private mSearchViewMargin:I

.field private final mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;

    const-string/jumbo v1, "GALLERY_SEARCH_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getTagFilterHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRemoveCountUpdateMessage:I

    return p1
.end method

.method static synthetic access$10200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->startDetailViewInUIThread(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCloseTipsButtonPressed:Z

    return p1
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    return v0
.end method

.method static synthetic access$15400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCloseTipsButtonPressed:Z

    return v0
.end method

.method static synthetic access$15700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateTagListView(Z)V

    return-void
.end method

.method static synthetic access$16100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$16200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16802(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    return p1
.end method

.method static synthetic access$16900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17402(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    return p1
.end method

.method static synthetic access$17500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$17700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->startDetailViewState(IZ)V

    return-void
.end method

.method static synthetic access$18500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$18600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18802(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsMovableKeypad:Z

    return p1
.end method

.method static synthetic access$18900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$19000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19102(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsInputMethodShown:Z

    return p1
.end method

.method static synthetic access$19200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$19300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsInputMethodShown:Z

    return p1
.end method

.method static synthetic access$19500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    return v0
.end method

.method static synthetic access$19600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->hideSearchFilterView()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRemoveCountUpdateMessage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRemoveCountUpdateMessage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$2408(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRemoveCountUpdateMessage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRemoveCountUpdateMessage:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsMovableKeypad:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showSearchFilterView(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isScrollable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method private changeActionBarViewBG(Z)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;

    invoke-direct {v4, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setImeVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$19;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    return-void
.end method

.method private getTagFilterHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private handleEventEnterKeywordSearch(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$28;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$28;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private handleEventPressSearch(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEVI"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->checkSearchResult()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->updateHistoryList()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method private hideSearchFilterView()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->startHideAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initHandler()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-void
.end method

.method private initNoItemView()V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400eb

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getTagFilterHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCloseTipsButtonPressed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    const v2, 0x7f120232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    const v2, 0x7f1200f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    const v2, 0x7f120235

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$16;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400ec

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private initSearchView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->init()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->initNoItemView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->checkSearchResult()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initGlRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    :cond_4
    return-void
.end method

.method private isScrollable()Z
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v2

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTotalHeight()I

    move-result v1

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getHistoryViewHeight()I

    move-result v4

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_3
    add-int v7, v2, v0

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    if-ge v3, v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method private prepareActionBar()V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v5, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mVoiceRecog:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v5

    if-ne v2, v5, :cond_5

    :goto_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_6

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v5, 0x1f4

    invoke-virtual {v3, v2, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :cond_0
    :goto_4
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->refreshActionBarTheme(I)V

    :cond_1
    monitor-exit v4

    :goto_5
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mVoiceRecog:Z

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v3, :cond_8

    monitor-exit v4

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->changeActionBarViewBG(Z)V

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private registerSIPBroadcastReceiver(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$27;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "ResponseAxT9InfoTypeChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private setExtraMargin(Z)V
    .locals 17

    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getTagFilterHeight()I

    move-result v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b01f8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v2, 0x0

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUSAModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsInputMethodShown:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b014e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b014e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v12, :cond_5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b002a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b01fd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b01fa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b01fe

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v11, v7, v6

    add-int v12, v5, v11

    add-int/2addr v12, v1

    add-int/2addr v12, v8

    iget v13, v9, Landroid/graphics/Point;->y:I

    if-le v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v9, Landroid/graphics/Point;->y:I

    add-int v16, v5, v11

    add-int v16, v16, v1

    add-int v16, v16, v8

    sub-int v15, v15, v16

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    iget v13, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    iget v13, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setY(F)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getHistoryViewHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b016f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b016c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v8, v12

    const/4 v11, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v12, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setEdgeViewMargin(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMargin:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMargin:I

    add-int v15, v5, v11

    add-int/2addr v15, v8

    invoke-virtual {v12, v13, v14, v15, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setExtraMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEdgeMarginBottom(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b016c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v12, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setHistoryMargin(I)V

    goto/16 :goto_1

    :cond_8
    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v5

    :cond_9
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method private showNoItemView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$17;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$17;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSearchFilterView(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->startShowAnimation(Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

.method private startDetailViewState(IZ)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4, v7, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->updateHistoryList()V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4, v7, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const-string/jumbo v4, "GallerySearchViewState"

    const-string/jumbo v5, "cannot start anmation to DetailView. bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "expansion_detail_view"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v4, v5, v0, p2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method private updateTagListView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkSearchResult()V
    .locals 8

    const v7, 0x7f0a02f2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-nez v4, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoItemView(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->exitSelectionMode()V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->getSearchKeyword()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoResultView(Z)V

    :cond_4
    :goto_1
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoItemView(Z)V

    goto :goto_0

    :cond_5
    const v0, 0x7f100001

    const v3, 0x7f0b0200

    invoke-virtual {p0, v7, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setEmptyHistoryText(III)V

    goto :goto_1

    :cond_6
    const v2, 0x7f0a0398

    const v0, 0x7f100001

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v3, 0x7f0b0201

    :goto_2
    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setEmptyHistoryText(III)V

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoResultView(Z)V

    goto :goto_1

    :cond_7
    const v3, 0x7f0b0200

    goto :goto_2

    :cond_8
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoResultView(Z)V

    goto :goto_1

    :cond_9
    const v0, 0x7f100001

    const v3, 0x7f0b0200

    invoke-virtual {p0, v7, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setEmptyHistoryText(III)V

    goto :goto_1
.end method

.method protected createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0
.end method

.method protected exitSelectionMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$20;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->refreshActionBarTheme(I)V

    :cond_1
    return-void
.end method

.method public isLastRowKeyboardfocus()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isFocusedLastItem()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSearchFilterHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    return v0
.end method

.method public isSupportPenSelect()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isSearchFilterHidden()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->exitSelectionMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->removeKeyword()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->resetSearchData()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->onConfigurationChanged()V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0202

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMargin:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x64

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$25;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$25;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    int-to-long v8, v1

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getTagFilterHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    add-int v6, v2, v0

    invoke-virtual {v3, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->refreshActionBarTheme(I)V

    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/high16 v7, 0x80000

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "GallerySearchViewState onCreate Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v3, :cond_0

    const-string/jumbo v3, "GallerySearchViewState"

    const-string/jumbo v4, "mRootView is null in GallerySearchViewState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    const-string/jumbo v4, "children"

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setSearchTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    :cond_1
    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->registerSIPBroadcastReceiver(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMargin:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->initHandler()V

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "GallerySearchViewState onCreate End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 9

    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->registerSIPBroadcastReceiver(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setImeVisibility(Z)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->releaseInstance()V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->onDestroy()V

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->clear()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onDestroy()V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long v2, v4, v6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v4, "GallerySearchViewState onPause Start"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForcePause()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumCopyMove:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->getVoiceSearchState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->changeActionBarViewBG(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1000ab

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    aget v2, v0, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionTitleFocus(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "GALLERY_SEARCH_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onPause()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "GallerySearchViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GallerySearchViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "gallerSearchViewMode"

    invoke-static {v0, v1, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->setInitialLevel(I)V

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getThumbSizeType(I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$18;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    or-int/lit16 v4, v4, 0x80

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setFirstIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->initSearchView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->prepareActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f10011f

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v1, v6, v9

    aget v2, v6, v11

    const/4 v3, 0x3

    aget v3, v6, v3

    aget v5, v6, v10

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLastQueryText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLastQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateKeyword(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSearchMoveListener()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setSearchMoveListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->onConfigurationChanged()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForceResume()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShareState:Z

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onResume()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GallerySearchViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto :goto_1
.end method

.method public onViewInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSearchScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSearchRotateScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$9;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$10;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$11;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$12;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$13;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$14;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$15;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSearchData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->resetSelectedItem()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->resetSelectedItemViewData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->moveSearchFilter(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->clear()V

    return-void
.end method

.method public setFocusToSearchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setFocusToSearchView(Z)V

    :cond_0
    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    return-void
.end method

.method protected startDetailViewInUIThread(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$24;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 11

    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_SUBMITTED:I

    if-ne v4, v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->handleEventPressSearch(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_UPDATE_SEARCH_VIEW_MARGIN:I

    if-ne v4, v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "GallerySearchViewState"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v4, v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_3
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v4, v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectAll()V

    goto :goto_0

    :cond_4
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v4, v7, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->unSelectAll()V

    goto :goto_0

    :cond_5
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_CHANGED:I

    if-ne v4, v7, :cond_6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->handleEventEnterKeywordSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_PRESS_VOICE_SEARCH:I

    if-ne v4, v7, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v7, v7, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v7, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setVoiceSearchState(Z)V

    goto :goto_0

    :cond_7
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v4, v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_8
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v4, v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SEARCH_HISTORY_LIST:I

    if-ne v4, v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsShowHistoryList:Z

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showNoItemView(Z)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected updateKeyword(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->addKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->updateKeyword(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
