.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.source "MoreInfoItemDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;
    }
.end annotation


# static fields
.field private static final EXCLUDE_DETAIL_INDEX:[I

.field private static final FEATURE_USE_GO_TO_URL:Z

.field private static final IS_NOS:Z

.field private static final MSG_ALREADY_EXIST:I = 0x4

.field private static final MSG_DELETE_URL:I = 0x6

.field private static final MSG_EMPTY:I = 0x3

.field private static final MSG_HIDE_SOFT_KEYBOARD:I = 0x1

.field private static final MSG_SHOW_SOFT_KEYBOARD:I = 0x2

.field private static final MSG_SWITCH_LAYOUT:I = 0x5

.field private static final MSG_UNAVAILABLE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "MoreInfoItemDetails"

.field private static final TITLE_POSITION:I

.field private static URL_POSITION:I


# instance fields
.field private isEditMode:Z

.field private mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mDetailsView:Landroid/widget/LinearLayout;

.field private final mEditTitleTextWatcher:Landroid/text/TextWatcher;

.field private mEditedTitleName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsActionDone:Z

.field private mIsEdited:Z

.field private mIsUrlWillBeDeleted:Z

.field private final mListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

.field private final mMediaType:I

.field private mOriginTitleName:Ljava/lang/String;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mTitleForDCRename:Ljava/lang/String;

.field private final mUseBlurBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->EXCLUDE_DETAIL_INDEX:[I

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->URL_POSITION:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->FEATURE_USE_GO_TO_URL:Z

    return-void

    :array_0
    .array-data 4
        0x4
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsActionDone:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->isEditMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mUseBlurBackground:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditTitleTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaType:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->initView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->hideSoftInput(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsEdited:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->FEATURE_USE_GO_TO_URL:Z

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->URL_POSITION:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->URL_POSITION:I

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mUseBlurBackground:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditTitleTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->isEditMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    return p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->IS_NOS:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsActionDone:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsActionDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->updateDetailListLayout(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->deleteUrlAndVendor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleForDCRename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleForDCRename:Ljava/lang/String;

    return-object p1
.end method

.method private deleteUrlAndVendor()Z
    .locals 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteUrlAndVendor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-nez v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "content://media/external/images/images_url"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "image_id= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v5, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/LocalImage;->updateUrl()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "image_url"

    const-string/jumbo v8, ""

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vendor"

    const-string/jumbo v8, ""

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v9, "id=?"

    new-array v10, v7, [Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v7

    :goto_1
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "MoreInfoItemDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MoreInfoItemDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initView()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mView:Landroid/view/View;

    const v5, 0x7f1201e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mDetailsView:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/16 v4, 0x6d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->EXCLUDE_DETAIL_INDEX:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget v0, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x6b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x69

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    sput v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->URL_POSITION:I

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v4, p0, v5, v1, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->getCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mDetailsView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-virtual {v5, v2, v8, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private save()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->dataEdited()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsSCloudItem:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->fileAlreadyExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->startHandleRename()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "GDDM"

    const-string/jumbo v2, "name"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->dataEdited()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static setURLPosition(I)V
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->URL_POSITION:I

    return-void
.end method

.method private startHandleRename()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->updateTitleName(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0558

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "RenameEditInfoSave"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateDetailListLayout(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mDetailsView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mDetailsView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->removeViews(II)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->access$1100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mDetailsView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-virtual {v3, v0, v5, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTitleName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoRename(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public actionEditCancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsActionDone:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsActionDone:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->updateDetailListLayout(Z)V

    return-void
.end method

.method public actionEditDone()V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isAccessoryKeyboardState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->save()V

    return-void
.end method

.method public dataEdited()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mOriginTitleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fileAlreadyExist(Ljava/lang/String;)Z
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v1, v3

    :goto_0
    const/4 v8, 0x0

    const-string/jumbo v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    :goto_1
    return v7

    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v8, "MoreInfoItemDetails"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NullPointerException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v8, "MoreInfoItemDetails"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "StringIndexOutOfBoundsException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getTitleEditText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mView:Landroid/view/View;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->dataEdited()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->access$1100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->access$1200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;->isInputMethodShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->onDestroy()V

    return-void
.end method

.method public processDeleteUrl(Landroid/widget/FrameLayout;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsUrlWillBeDeleted:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->invalidate()V

    return-void
.end method

.method public bridge synthetic refreshQuery(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->refreshQuery(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic reload()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->reload()V

    return-void
.end method

.method public bridge synthetic setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method

.method public setEditedTitleNameForDCRemoveLocation(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mIsSCloudItem:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mEditedTitleName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMode(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->isEditMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->hideSoftInput(Landroid/os/IBinder;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->updateDetailListLayout(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
