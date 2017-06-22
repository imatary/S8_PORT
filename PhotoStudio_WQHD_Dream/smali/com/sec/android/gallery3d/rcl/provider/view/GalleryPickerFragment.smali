.class public Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
.super Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.source "GalleryPickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
    }
.end annotation


# static fields
.field private static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final CONTENT_TYPE_ALL:I = 0x3

.field public static final CONTENT_TYPE_IMAGE:I = 0x1

.field public static final CONTENT_TYPE_VIDEO:I = 0x2

.field private static final GALLERY_PKG_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final MAX_FILE_SIZE_INFINITE:I = -0x1

.field public static final MAX_PICK_COUNT_INFINITE:I = -0x1

.field public static final RESULT_CANCEL:I = 0x2

.field public static final RESULT_OK:I = 0x1

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalleryPickerFragment"

.field public static final VERSION:Ljava/lang/String; = "1.1.12"


# instance fields
.field private final mCloudImageContentObserver:Landroid/database/ContentObserver;

.field private final mCloudVideoContentObserver:Landroid/database/ContentObserver;

.field private mConsumerPrimaryColor:I

.field private mConsumerPrimaryDarkColor:I

.field private mContentType:I

.field private mCount:Landroid/widget/TextView;

.field private final mDoneActionListener:Landroid/view/View$OnClickListener;

.field private mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field private mGalleryPickerButtonView:Landroid/view/View;

.field private mGalleryPickerDataLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

.field private mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

.field private mGridViewSpace:F

.field private final mImageContentObserver:Landroid/database/ContentObserver;

.field private mIsBottomLayoutShown:Z

.field private mIsFirstLoading:Z

.field private mIsFullLoaded:Z

.field private mIsMaxCount:Z

.field private mMaxFileSize:I

.field private mMaxFileSizeToast:Landroid/widget/Toast;

.field private mMaxHeight:I

.field private mMaxPickCount:I

.field private mMultiSelectedListener:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

.field private mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

.field private mPickerView:Landroid/widget/FrameLayout;

.field private mPickerViewIsExpanded:Z

.field private mSelectionMode:I

.field private mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

.field private mUltraPowerSavingModeToast:Landroid/widget/Toast;

.field private mUnableOpenGalleryToast:Landroid/widget/Toast;

.field private mUnsupportedFileToast:Landroid/widget/Toast;

.field private final mVideoContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/high16 v4, -0x1000000

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFullLoaded:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    iput v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGridViewSpace:F

    iput v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    iput v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    iput v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxHeight:I

    iput v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerDataLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    iput v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryColor:I

    iput v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryDarkColor:I

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$1;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mImageContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$2;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudImageContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$3;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mVideoContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$4;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudVideoContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$5;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mDoneActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMultiSelectedListener:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->completeSelectingItem()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setFluidScrollEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->updateSelection(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFullLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    return-void
.end method

.method private checkMaxFontSize(Landroid/widget/TextView;Z)V
    .locals 7

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v1, v2

    if-lez v5, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->pick_count_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v3, v5

    div-float v0, v3, v1

    :goto_0
    const/4 v5, 0x0

    mul-float v6, v0, v2

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->pick_done_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v4, v5

    div-float v0, v4, v1

    goto :goto_0
.end method

.method private completeSelectingItem()V
    .locals 4

    const-string v1, "GalleryPickerFragment"

    const-string v2, "completeSelectingItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onResult(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;ILjava/util/List;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onResult(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;ILjava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearSelectedItems()V

    goto :goto_0
.end method

.method private initGalleryPickerButtonView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerView:Landroid/widget/FrameLayout;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->crossapp_gallery_picker_button_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->pick_count:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCount:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->checkMaxFontSize(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->pick_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->checkMaxFontSize(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mDoneActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto :goto_0
.end method

.method private initializeView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gridview_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGridViewSpace:F

    return-void
.end method

.method private isShowButtonBackground(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadData(Z)V
    .locals 3

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData isDirty["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mIsFirstLoading["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerDataLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->reloadData(ZZ)V

    :cond_0
    return-void
.end method

.method private resetGridViewLayout(I)V
    .locals 5

    const-string v2, "GalleryPickerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetGridViewLayout maxHeight["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_1
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    :cond_3
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string v2, "GalleryPickerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed height["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bottomMargin["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->requestLayout()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, v2

    goto :goto_1
.end method

.method private sendItemSelectionCallback(ZLandroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onItemSelected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onItemDeselected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setColumnWidth()V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gridview_item_thumbnail_width_for_tablet:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGridViewSpace:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    float-to-int v1, v4

    :goto_1
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGridViewSpace:F

    add-int/lit8 v6, v1, 0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v2, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->setGridItemSize(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setColumnWidth(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gridview_item_thumbnail_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v1, v4, v3

    goto :goto_1
.end method

.method private setFluidScrollEnabled()V
    .locals 8

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getColumnWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getColumnWidth()I

    move-result v4

    div-int v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getCount()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getNumColumns()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-le v0, v2, :cond_1

    const-string v3, "GalleryPickerFragment"

    const-string v4, "FluidScrollEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->setEnableFluidScroll(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "GalleryPickerFragment"

    const-string v4, "FluidScrollDisabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->setEnableFluidScroll(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "GalleryPickerFragment"

    const-string v4, "twSetFluidScrollEnabled - NoSuchMethodError"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "GalleryPickerFragment"

    const-string v4, "FluidScrollDisabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "GalleryPickerFragment"

    const-string v4, "twSetFluidScrollEnabled - NotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGalleryPickerButtonVisibility(Z)V
    .locals 4

    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGalleryPickerButtonVisibility visible ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxHeight:I

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->resetGridViewLayout(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTotalSelectedCount()V
    .locals 10

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCount:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFullLoaded:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ar"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    const-string v5, "GalleryPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTotalSecelectedCount totalSelectedCount ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "GalleryPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTotalSecelectedCount totalCount ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getTotalCount()I

    move-result v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private updateGalleryPickerButtonView()V
    .locals 4

    const-string v1, "GalleryPickerFragment"

    const-string v2, "updateGalleryPickerButtonView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerButtonView:Landroid/view/View;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->pick_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->isShowButtonBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x8fe

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->accessibility_show_button_background_for_grace:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->accessibility_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateSelection(Landroid/view/View;IZ)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v4, "GalleryPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnItemClick position ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isGalleryAppInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GalleryPickerFragment"

    const-string v5, "onGalleryButtonIsClicked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    const-string v5, "com.sec.android.gallery3d"

    invoke-interface {v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onGalleryButtonIsClicked(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUltraPowerSavingModeToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    const-string v4, "GalleryPickerFragment"

    const-string v5, "onGalleryButtonIsClicked : Ultra Saving Mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUltraPowerSavingModeToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnableOpenGalleryToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    const-string v4, "GalleryPickerFragment"

    const-string v5, "onGalleryButtonIsClicked : gallery is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnableOpenGalleryToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->isBrokenItem(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnsupportedFileToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnsupportedFileToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    if-eq v4, v7, :cond_6

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getFileSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSizeToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSizeToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v4, v9, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1, v2, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/view/View;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->completeSelectingItem()V

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v4, v11, :cond_0

    sget v4, Lcom/sec/android/gallery3d/rcl/provider/R$id;->checkbox:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1, v2, v10}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/view/View;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    if-nez p3, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->sendItemSelectionCallback(ZLandroid/net/Uri;)V

    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v4, v11, :cond_e

    const-string v4, "GalleryPickerFragment"

    const-string v5, "onCreateView GalleryPickerButtonVisibility true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSeselectedItemByMutiSelection(Landroid/net/Uri;Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateDeselectedItemByMutiSelection(Landroid/net/Uri;Z)V

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    goto :goto_1

    :cond_a
    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    if-eq v4, v7, :cond_c

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_c

    const-string v4, "GalleryPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnItemClick selectedItems size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_b

    if-eqz p3, :cond_8

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    if-nez v4, :cond_8

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$string;->maximum_selection_number_exceeded:I

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz p3, :cond_8

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1, v2, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/view/View;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    if-nez p3, :cond_d

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->sendItemSelectionCallback(ZLandroid/net/Uri;)V

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSeselectedItemByMutiSelection(Landroid/net/Uri;Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateDeselectedItemByMutiSelection(Landroid/net/Uri;Z)V

    goto/16 :goto_1

    :cond_e
    const-string v4, "GalleryPickerFragment"

    const-string v5, "onCreateView GalleryPickerButtonVisibility false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deselectItem(Landroid/net/Uri;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v2, "GalleryPickerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deselectItem uri ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong uri [null]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/net/Uri;Z)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->notifyDataSetChanged()V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v2, v6, :cond_4

    const-string v2, "GalleryPickerFragment"

    const-string v3, "deselectItem GalleryPickerButtonVisibility true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "GalleryPickerFragment"

    const-string v3, "deselectItem GalleryPickerButtonVisibility false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto :goto_0
.end method

.method public getSelectedItemCount()V
    .locals 4

    const-string v1, "GalleryPickerFragment"

    const-string v2, "getSelectedItemCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedItemCount["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    invoke-interface {v1, p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onSelectedItemCount(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;I)V

    return-void
.end method

.method public initialize(II)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "GalleryPickerFragment"

    const-string v1, "1.1.12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] selectionMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq p2, v3, :cond_1

    if-eq p2, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong selection mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    iput p2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    return-void
.end method

.method public initialize(IIZ)V
    .locals 3

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBottomLayoutShown ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initialize(II)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mImageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mVideoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudKeyInCMH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudImageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudVideoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initializeView()V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnGalleryListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or ParentFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnGalleryListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initializeView()V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnGalleryListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or ParentFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnGalleryListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->getFirstVisiblePosition()I

    move-result v0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setColumnWidth()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->requestLayout()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setSelection(I)V

    return-void
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    const-string v17, "GalleryPickerFragment"

    const-string v18, "onCreateView"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string v17, "contentType"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    const-string v17, "selectionMode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    const-string v17, "expandMode"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    move/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    const-string v17, "GalleryPickerFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreateView2 contentType["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] selectionMode["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] mPickerViewIsExpanded ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    sget v17, Lcom/sec/android/gallery3d/rcl/provider/R$layout;->crossapp_gallery_picker:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerView:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/gallery3d/rcl/provider/R$string;->error_exceed_max_size:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSizeToast:Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/gallery3d/rcl/provider/R$string;->unsupported_file:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnsupportedFileToast:Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/gallery3d/rcl/provider/R$string;->ultra_power_saving_mode:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/sec/android/gallery3d/rcl/provider/R$string;->gallery:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUltraPowerSavingModeToast:Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/gallery3d/rcl/provider/R$string;->unable_open_gallery:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mUnableOpenGalleryToast:Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    sget v18, Lcom/sec/android/gallery3d/rcl/provider/R$id;->picker_gridview:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    const-string v17, "GalleryPickerFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Build Version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x8fe

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    const-string v17, "GalleryPickerFragment"

    const-string v18, "semEnableGoToTop true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->setEnableGoToTop(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Z)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMultiSelectedListener:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->setMultiSelectedListener(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$8;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$9;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v17, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;-><init>(Landroid/content/Context;IILcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    move/from16 v17, v0

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->setSelectionMode(Z)V

    if-eqz p3, :cond_4

    const-string v17, "selectedUris"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "GalleryPickerFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreateView2 update selected items["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->addToSelectedItem(Ljava/util/ArrayList;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setColumnWidth()V

    new-instance v17, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;-><init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerDataLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [I

    const/16 v17, 0x0

    const-string v18, "colorPrimary"

    const-string v19, "attr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    aput v18, v6, v17

    const/16 v17, 0x1

    const v18, 0x1010433

    aput v18, v6, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [I

    const/16 v17, 0x0

    const-string v18, "colorPrimaryDark"

    const-string v19, "attr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    aput v18, v7, v17

    const/16 v17, 0x1

    const v18, 0x1010434

    aput v18, v7, v17

    invoke-virtual {v14}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/high16 v19, -0x1000000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryColor:I

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/high16 v19, -0x1000000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryDarkColor:I

    const-string v17, "GalleryPickerFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mConsumerPrimaryColor [ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "mConsumerPrimaryDarkColor [ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mConsumerPrimaryDarkColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->initGalleryPickerButtonView()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    return-object v17

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    const-string v1, "GalleryPickerFragment"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onResult(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;ILjava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->destroy()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mImageContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mImageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mVideoContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mVideoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudImageContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudImageContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudVideoContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mCloudVideoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->destroy()V

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroyView()V

    return-void
.end method

.method public onExpansionFinish(Z)V
    .locals 4

    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpansionFinish isExpand["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->computeVerticalScrollOffset()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] current[true]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setFluidScrollEnabled()V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "GalleryPickerFragment"

    const-string v2, "onExpansionFinish GalleryPickerButtonVisibility true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] current[false]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0

    :cond_3
    const-string v1, "GalleryPickerFragment"

    const-string v2, "onExpansionFinish GalleryPickerButtonVisibility false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto :goto_1
.end method

.method protected onExpansionMaxHeightChanged(I)V
    .locals 3

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionMaxHeightChanged maxHeight["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxHeight:I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->resetGridViewLayout(I)V

    return-void
.end method

.method public onExpansionProgress(I)V
    .locals 0

    return-void
.end method

.method public onExpansionStart(Z)V
    .locals 3

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionStart isExpand["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onPause()V

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onResume()V

    const-string v0, "GalleryPickerFragment"

    const-string v1, "1.1.12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->loadData(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->updateGalleryPickerButtonView()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsMaxCount:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "contentType"

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "selectionMode"

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "expandMode"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "selectedUris"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v1, "GalleryPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState contentType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mContentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] selectionMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mPickerViewIsExpanded ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerViewIsExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[true]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[false]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onSelectionChanged(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->sendItemSelectionCallback(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    return-void
.end method

.method public selectItem(Landroid/net/Uri;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, "GalleryPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectItem uri ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wrong uri [null]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v4, v11, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    if-eq v4, v7, :cond_4

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    if-gt v4, v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->isAlreadySelectedItem(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "GalleryPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectItem selectedItems size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$string;->maximum_selection_number_exceeded:I

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsBottomLayoutShown:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mSelectionMode:I

    if-ne v4, v11, :cond_6

    const-string v4, "GalleryPickerFragment"

    const-string v5, "selectItem GalleryPickerButtonVisibility true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1, v10}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/net/Uri;Z)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getFileSize()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4, p1, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateSelectedItem(Landroid/net/Uri;Z)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSizeToast:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSizeToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    const-string v4, "GalleryPickerFragment"

    const-string v5, "selectItem GalleryPickerButtonVisibility false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setGalleryPickerButtonVisibility(Z)V

    goto/16 :goto_0
.end method

.method public setMaxFileSize(I)V
    .locals 3

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxFileSize["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong max file size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxFileSize:I

    return-void
.end method

.method public setMaxPickCount(I)V
    .locals 3

    const-string v0, "GalleryPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxPickCount["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong max pick count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mMaxPickCount:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V

    return-void
.end method
