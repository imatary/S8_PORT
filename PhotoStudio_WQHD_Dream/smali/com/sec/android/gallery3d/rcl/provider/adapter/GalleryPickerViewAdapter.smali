.class public Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
.super Landroid/widget/CursorAdapter;
.source "GalleryPickerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;,
        Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;,
        Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;,
        Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;
    }
.end annotation


# static fields
.field private static final GALLERY_PKG_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static GALLLERY_BUTTON_TTS:Ljava/lang/String; = null

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "GalleryPickerViewAdapter"


# instance fields
.field private mBrokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonSize:I

.field private mCheckBoxSize:I

.field private mContext:Landroid/content/Context;

.field private mDataSourceType:I

.field private final mDelectedItemsByMultiSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstBitmap:Landroid/graphics/Bitmap;

.field private mGalleryButton:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

.field private mGalleryButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mGirdItemHeight:I

.field private mGirdItemWidth:I

.field private mIsActive:Z

.field private mIsDirty:Z

.field private mIsFakeLoading:Z

.field private mIsSelectionMode:Z

.field private mListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;

.field private mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

.field private mMediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

.field private final mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedItemsByMultiSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbExistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mUltraPowerSavingModeToast:Landroid/widget/Toast;

.field private mUnableOpenGalleryToast:Landroid/widget/Toast;

.field private mUpdateSelectionTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->GALLLERY_BUTTON_TTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsActive:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsDirty:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsFakeLoading:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsSelectionMode:Z

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDataSourceType:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaType:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailWidth:I

    iput v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mButtonSize:I

    iput v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mCheckBoxSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mFirstBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButton:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaType:I

    iput p3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDataSourceType:I

    iput-object p4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsActive:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8fe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gallery_button_size_with_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mButtonSize:I

    :goto_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setThumbnailSize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$string;->ultra_power_saving_mode:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/gallery3d/rcl/provider/R$string;->gallery:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUltraPowerSavingModeToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$string;->unable_open_gallery:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUnableOpenGalleryToast:Landroid/widget/Toast;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gallery_button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mButtonSize:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUltraPowerSavingModeToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUnableOpenGalleryToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mFirstBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearBrokenItemList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private clearThumbExistList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private updateTalkBackString(Landroid/widget/ImageView;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p2, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->GALLLERY_BUTTON_TTS:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->gallery:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->GALLLERY_BUTTON_TTS:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->GALLLERY_BUTTON_TTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$string;->pictures:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsSelectionMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_item_selected:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$string;->videos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_double_tap_to_attach_file:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/rcl/provider/R$string;->speak_double_tap_to_attach_file:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addToSelectedItem(Ljava/util/ArrayList;)V
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

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "GalleryPickerViewAdapter"

    const-string v2, "addToSelectedItem"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public clearDeletedItemsByMultiSelection()Z
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearSelectedItems()V
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "GalleryPickerViewAdapter"

    const-string v2, "clearSelectedItems"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearSeletedItemsByMultiSelection()Z
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsActive:Z

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->terminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->join(J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->interrupt()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearSelectedItems()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearSeletedItemsByMultiSelection()Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearDeletedItemsByMultiSelection()Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearBrokenItemList()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearThumbExistList()V

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->clear()V

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->clear()V

    sput-object v4, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->GALLLERY_BUTTON_TTS:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDelectedItemsByMultiSelection()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem is failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedItemsByMultiSelection()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaType:I

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDataSourceType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet$MediaSetFactory;->getTotalItemCount(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    if-nez p2, :cond_c

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$layout;->crossapp_gallery_picker_item:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;)V

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->thumbnail:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->border:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail_border:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->ripple:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->ripple:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->from_gallery_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button_text:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->gallery_button:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getGalleryButtonIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButtonDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mButtonSize:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mButtonSize:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isNOS()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->picker_gallery_checkbox_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mCheckBoxSize:I

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->checkbox_btn_for_n_os:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mCheckBoxSize:I

    iget v13, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mCheckBoxSize:I

    invoke-direct {v6, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->video_icon_for_n_os:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->videoIcon:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->private_icon_for_n_os:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->privateIcon:Landroid/widget/ImageView;

    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail_border:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->ripple:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_d

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButton:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    if-nez v2, :cond_3

    new-instance v2, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButton:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v2

    const/16 v5, 0x8fe

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button_text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGalleryButton:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;

    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v9

    const/4 v12, 0x0

    iget v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mediaKey:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_e

    iget v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mediaKey:I

    if-ne v2, v9, :cond_4

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->isBrokenItem(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->isThumbExist(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x1

    :cond_5
    :goto_3
    if-nez p1, :cond_10

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mIsFirstPosition:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v2

    const/16 v5, 0x8fe

    if-ge v2, v5, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_6
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button_text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_gallery_button_bg_color_for_grace:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_4
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    :cond_7
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iput v9, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mediaKey:I

    if-eqz v12, :cond_13

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getThumbnailFromCache(I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_8

    iget v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mediaKey:I

    if-ne v2, v9, :cond_8

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailHeight:I

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailWidth:I

    const/4 v7, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$ThumbnailSettingTask;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;III)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->put(Landroid/os/AsyncTask;)V

    :cond_9
    :goto_6
    move-object v10, v3

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;

    invoke-direct {v5, p0, v4, v10}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$2;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$2;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->videoIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "GalleryPickerViewAdapter"

    const-string v5, "secret box is true"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->privateIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsSelectionMode:Z

    if-eqz v2, :cond_17

    if-eqz p1, :cond_17

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_9
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_a
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-boolean v5, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mIsFirstPosition:Z

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateTalkBackString(Landroid/widget/ImageView;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V

    :cond_a
    return-object p2

    :cond_b
    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->video_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->videoIcon:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/gallery3d/rcl/provider/R$id;->private_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->privateIcon:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    goto/16 :goto_2

    :cond_e
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_f
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_gallery_button_bg_color:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_10
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getBuildVersion(Landroid/content/Context;)I

    move-result v2

    const/16 v5, 0x8fe

    if-ge v2, v5, :cond_11

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button_text:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->gallery_button:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mIsFirstPosition:Z

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->expandButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/rcl/provider/R$color;->gallery_picker_view_bg_color:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_13
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setBroken(Z)V

    :cond_14
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getMediaId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setThumbExist(Z)V

    goto/16 :goto_6

    :cond_15
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->videoIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_16
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->privateIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_17
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_9

    :cond_18
    iget-object v2, v3, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_a
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAlreadySelectedItem(Landroid/net/Uri;)Z
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v2, "isAlreaySelectedItem true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "GalleryPickerViewAdapter"

    const-string v2, "isAlreaySelectedItem false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBrokenItem(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mBrokenList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbExist(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbExistList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "GalleryPickerViewAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadData isDirty["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsDirty:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] mIsFakeLoading["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsFakeLoading:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->isActive()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaType:I

    iget v9, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDataSourceType:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet$MediaSetFactory;->getInstance(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;

    iget-object v8, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsFakeLoading:Z

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->loadData(Z)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->getMediaItemList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsDirty:Z

    if-nez v7, :cond_5

    if-eq v3, v0, :cond_8

    :cond_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUpdateSelectionTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUpdateSelectionTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;

    invoke-virtual {v7, v6}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->cancel(Z)Z

    :cond_6
    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->isActive()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_7
    new-instance v7, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;)V

    iput-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUpdateSelectionTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUpdateSelectionTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v7, v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    move v5, v6

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized reloadData(ZZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "GalleryPickerViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadData isDirty["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] isFakeLoading["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mIsActive["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsDirty:Z

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsFakeLoading:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->notifyDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    const-string v2, "GalleryPickerViewAdapter"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->setLoadingListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$3;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->setOnLoadDataListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mReloadTask:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setGridItemSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailWidth:I

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemWidth:I

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mThumbnailHeight:I

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mGirdItemHeight:I

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mIsSelectionMode:Z

    return-void
.end method

.method public updateDeselectedItemByMutiSelection(Landroid/net/Uri;Z)V
    .locals 5

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDeselectedItemByMutiSelection uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDeselectedItemByMutiSelection item id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateDeselectedItemByMutiSelection mDelectedItemsByMultiSelection add"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateDeselectedItemByMutiSelection mDelectedItemsByMultiSelection remove"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mDelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSelectedItem(Landroid/net/Uri;Z)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;
    .locals 5

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelectedItem uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSelectedItem item id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSelectedItem mSelectedItems add"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSelectedItem mSelectedItems remove"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSelectedItem(Landroid/view/View;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V
    .locals 4

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelectedItem isSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSelectedItem mSelectedItems add"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v1, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->mIsFirstPosition:Z

    invoke-direct {p0, v1, p2, v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->updateTalkBackString(Landroid/widget/ImageView;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Z)V

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSelectedItem mSelectedItems remove"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSeselectedItemByMutiSelection(Landroid/net/Uri;Z)V
    .locals 5

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSeselectedItemByMutiSelection uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v1, "GalleryPickerViewAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSeselectedItemByMutiSelection item id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->getMediaId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSeselectedItemByMutiSelection mSelectedItemsByMultiSelection remove"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GalleryPickerViewAdapter"

    const-string v3, "updateSeselectedItemByMutiSelection mSelectedItemsByMultiSelection add"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItemsByMultiSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
