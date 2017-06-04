.class public Lcom/sec/samsung/gallery/view/common/SelectionBuffer;
.super Ljava/lang/Object;
.source "SelectionBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;,
        Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;,
        Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final ANIMATION_DURATION_FADE:J = 0xc8L

.field private static final ANIMATION_DURATION_LIST_FADE:J = 0x320L

.field public static final ANIMATION_DURATION_TRANS:J = 0x12cL

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final TAG:Ljava/lang/String; = "SelectionBuffer"

.field private static mSelectionBufferHeight:I


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mSelectionBufferLayout:Landroid/widget/RelativeLayout;

.field private mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

.field private mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

.field private mTempObj:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferHeight:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->FEATURE_USE_NAVIGATION_BAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ViewObservable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    const-string/jumbo v0, "SelectionBuffer"

    const-string/jumbo v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->initializeView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->initializeData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSelectionBuffer(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/ViewObservable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getTempMediaObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setTempMediaObject(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;IZJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZJ)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTempMediaObject()Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mTempObj:Lcom/sec/android/gallery3d/data/MediaObject;

    return-object v0
.end method

.method private getTopMargin()I
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabViewHeightPixel()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method private initializeData()V
    .locals 3

    const-string/jumbo v0, "SelectionBuffer"

    const-string/jumbo v1, "init data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0400f5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initializeView()V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "SelectionBuffer"

    const-string/jumbo v7, "init view"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f1200d5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f12023a

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSelectionBufferVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v7, 0x7f0400f3

    move-object v5, v6

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    :goto_0
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSelectionBufferFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSelectionBufferFactory;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v5}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->addView(Landroid/widget/RelativeLayout;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLcdRect()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v5, Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/util/DimensionUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->updateMargin()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f120008

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSelectionBufferFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSelectionBufferFactory;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v5}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->addView(Landroid/widget/RelativeLayout;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    new-instance v6, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$1;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    new-instance v6, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$2;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSelectionBufferVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    new-instance v6, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setOnAddDeleteListener(Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V

    :cond_1
    sget v5, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferHeight:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0365

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferHeight:I

    :cond_2
    return-void

    :cond_3
    const v5, 0x7f0400f2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto/16 :goto_1
.end method

.method private requestTransferRootView(I)V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_TRANSFER_ROOTVIEW_TO_UPDOWN:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ViewObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private resetNavigationBarPosition()Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    goto :goto_0
.end method

.method private setTempMediaObject(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mTempObj:Lcom/sec/android/gallery3d/data/MediaObject;

    return-void
.end method

.method private setVisibility(IZJ)V
    .locals 7

    const/4 v6, 0x2

    const-string/jumbo v3, "SelectionBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVisibility with fade duration, visibility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;

    invoke-direct {v1, p0, p1, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$7;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDisplayChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->updateMargin()V

    return-void
.end method

.method public declared-synchronized remove(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$6;

    invoke-direct {v1, p0, p1, p1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$6;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setViewObservable(Lcom/sec/samsung/gallery/view/ViewObservable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mViewObservable:Lcom/sec/samsung/gallery/view/ViewObservable;

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 10

    const-wide/16 v8, 0xc8

    const/4 v6, 0x2

    const-string/jumbo v3, "SelectionBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVisibility, visibility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v3, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferHeight:I

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->requestTransferRootView(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v3, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->requestTransferRootView(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateMargin()V
    .locals 10

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLcdRect()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v7, Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mDimenUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getTopMargin()I

    move-result v5

    sget-boolean v7, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->resetNavigationBarPosition()Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    move-result-object v3

    sget-object v7, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    if-ne v3, v7, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getNavigationBarHeight()I

    move-result v1

    :goto_0
    sget-object v7, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/common/SelectionBuffer$NavigationPos;

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getNavigationBarHeight()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6, v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method
