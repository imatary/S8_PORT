.class public Lcom/sec/android/gallery3d/app/CropImage;
.super Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final ACTION_CROP_SEC_ONLY:Ljava/lang/String; = "com.sed.android.gallery3d.CROP_SEC_ONLY"

.field private static final BACKGROUND_ALPHA_VALUE:I = 0x66

.field public static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final DOWNLOAD_BUCKET:Ljava/io/File;

.field private static final EXIF_SOFTWARE_VALUE:Ljava/lang/String; = "Android Gallery"

.field private static final FEATURE_SUPPORT_AGIF_CROPPER:Z

.field private static final GIF:Ljava/lang/String; = "gif"

.field public static final IS_PRESSED_CANCEL:Ljava/lang/String; = "is_pressed_cancel"

.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field private static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field private static final KEY_CROP_AND_DELETE:Ljava/lang/String; = "crop_and_delete"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_IS_CALLER_ID:Ljava/lang/String; = "is-caller-id"

.field private static final KEY_IS_MANUAL_FD:Ljava/lang/String; = "is-manual-fd"

.field private static final KEY_IS_SLINK_CROP:Ljava/lang/String; = "is_slink"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT:Ljava/lang/String; = "output"

.field public static final KEY_OUTPUT_AGIF_X:Ljava/lang/String; = "outputX-gif"

.field public static final KEY_OUTPUT_AGIF_Y:Ljava/lang/String; = "outputY-gif"

.field private static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field private static final KEY_PHOTO_FRAME:Ljava/lang/String; = "photo-frame"

.field private static final KEY_RESIZE_HEIGHT:Ljava/lang/String; = "resizeH"

.field private static final KEY_RESIZE_WIDTH:Ljava/lang/String; = "resizeW"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AGIF_CROPPER:Ljava/lang/String; = "support-crop-gif"

.field public static final KEY_SET_AS_BOTHSCREEN:Ljava/lang/String; = "set-as-bothscreen"

.field public static final KEY_SET_AS_CONTACT_PHOTO:Ljava/lang/String; = "set-as-contactphoto"

.field public static final KEY_SET_AS_IMAGE:Ljava/lang/String; = "set-as-image"

.field public static final KEY_SET_AS_LOCKSCREEN:Ljava/lang/String; = "set-as-lockscreen"

.field public static final KEY_SET_AS_MUSIC_ALBUM:Ljava/lang/String; = "fromMusicPlayer"

.field public static final KEY_SET_AS_ON_CIRCLE:Ljava/lang/String; = "set-as-oncircle"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SET_NORMAL_CROP:Ljava/lang/String; = "set_normal_crop"

.field private static final KEY_SET_SNOTE:Ljava/lang/String; = "set_snote"

.field private static final KEY_SET_SVIEW:Ljava/lang/String; = "set_sview"

.field private static final KEY_SPOTLIGHT_RECT:Ljava/lang/String; = "spotlightRect"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final LOOK_UP_ON_RECREATE:Ljava/lang/String; = "lookUpOnRecreate"

.field public static final MAX_AGIF_IMAGE_SIZE:Ljava/lang/String; = "max-file-size"

.field private static final MIMETYPE_EDITOR:Ljava/lang/String; = "image/*"

.field private static final MSG_BITMAP:I = 0x2

.field private static final MSG_CANCEL_DIALOG:I = 0x6a

.field private static final MSG_LARGE_BITMAP:I = 0x1

.field private static final MSG_MENU_CANCEL_SELECTED:I = 0x68

.field private static final MSG_MENU_HOME_SELECTED:I = 0x69

.field private static final MSG_MENU_SAVE_SELECTED:I = 0x67

.field private static final MSG_PAUSE_PENDING:I = 0x6

.field private static final MSG_RESUME_PENDING:I = 0x7

.field private static final MSG_SAVE_COMPLETE:I = 0x3

.field private static final MSG_SAVE_COMPLETE_SLINK:I = 0x5

.field private static final MSG_SHOW_SAVE_ERROR:I = 0x4

.field private static final MSG_TIMEOUT_BITMAP:I = 0x65

.field private static final MSG_TIMEOUT_LARGE_BITMAP:I = 0x66

.field private static final MSG_UPDATE_BACKSCREEN:I = 0x9

.field private static final MSG_UPDATE_BACKSCREEN_IN_PAUSE_STATE:I = 0x8

.field public static final SAMSUNG_CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.contacts"

.field public static final SETTING_EDIT_USER_PHOTO:Ljava/lang/String; = "CropEditUserPhoto"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_SAVING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final TILE_SIZE:I = 0x200

.field private static final TIMEOUT_MAX:I = 0x3a98

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final USE_MULTIWINDOW:Z

.field private static final VIDEO_CALL_SELECTION_RATIO:F = 0.3f


# instance fields
.field private lookUpKeyAfterRecreate:Ljava/lang/String;

.field private lookupkeytoPass:Ljava/lang/String;

.field private mActionBarButtons:Landroid/view/View;

.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

.field private mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

.field private mCacheActionViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmDialogForBackPress:Landroid/app/AlertDialog;

.field private mCropForVideoCall:Z

.field private mCropView:Lcom/sec/android/gallery3d/ui/CropView;

.field private mDoFaceDetection:Z

.field private mDoneActionView:Landroid/view/View;

.field private mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

.field private mIsActive:Z

.field private mIsActivityReCreated:Z

.field private mIsCallerId:Z

.field private mIsCropAndDelete:Z

.field private mIsForcePause:Z

.field private mIsFromDetailView:Z

.field private mIsManualFD:Z

.field private mIsNOs:Z

.field private mIsRequestAgifCrop:Z

.field private mIsSlinkCrop:Z

.field private mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mMediaEjectReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMenuHandler:Landroid/os/Handler;

.field private mMimeTypeFromUri:Ljava/lang/String;

.field private final mMultiWindowListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

.field private mNeedUpdateBackscreenInPauseState:Z

.field private mPausedWhileSaving:Z

.field private mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

.field private mSaveTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSpotlightRect:Landroid/graphics/RectF;

.field private mSrcUri:Ljava/lang/String;

.field private mState:I

.field private mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

.field private mUpdateBackscreenInPauseState:Z

.field private mUseRegionDecoder:Z

.field private mUseRightAlignedActionbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportAGifCropper:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/CropImage;->FEATURE_SUPPORT_AGIF_CROPPER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropForVideoCall:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPausedWhileSaving:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCallerId:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    iput v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mNeedUpdateBackscreenInPauseState:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsForcePause:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActivityReCreated:Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$1;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMenuHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$2;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaEjectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$5;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$14;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$14;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMultiWindowListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/util/Future;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/util/Future;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->forceResume()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/gallery3d/app/CropImage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->forcePause()V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/gallery3d/app/CropImage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mNeedUpdateBackscreenInPauseState:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->updateInPauseStateForTabletMWSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->updateInPauseStateDelayed()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCropAndDelete:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->handleSaveButton()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->handleCancelButton()V

    return-void
.end method

.method static synthetic access$2500(Landroid/graphics/Rect;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/crop/CropResult;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getCroppedResult()Lcom/sec/android/gallery3d/crop/CropResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/util/Future;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActivityReCreated:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSaveTask:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->lookUpKeyAfterRecreate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->lookupkeytoPass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsSlinkCrop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSrcUri:Ljava/lang/String;

    return-object v0
.end method

.method private cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->waitDone()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method private changeExifData(Ljava/lang/String;II)V
    .locals 6

    new-instance v1, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v2, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->setTag(Lcom/sec/android/gallery3d/exif/ExifTag;)Lcom/sec/android/gallery3d/exif/ExifTag;

    sget v2, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->setTag(Lcom/sec/android/gallery3d/exif/ExifTag;)Lcom/sec/android/gallery3d/exif/ExifTag;

    sget v2, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const-string/jumbo v3, "Android Gallery"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->setTag(Lcom/sec/android/gallery3d/exif/ExifTag;)Lcom/sec/android/gallery3d/exif/ExifTag;

    sget v2, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->setTag(Lcom/sec/android/gallery3d/exif/ExifTag;)Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->removeCompressedThumbnail()V

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "cannot find file to set exif: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "cannot set exif data - write orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkRequiredPermissions()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_CROP:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_CROP:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_0
    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-direct {v2, p0, v1, v4}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :goto_0
    move v2, v3

    :goto_1
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v4, 0x77

    invoke-static {p0, v2, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string/jumbo v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private createCustomMenuItem(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCacheActionViews:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040052

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const v3, 0x7f1200b5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$4;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    return-object v0
.end method

.method private createUpdateBackScreenListener()Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/app/CropImage$13;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/CropImage$13;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    return-object v0
.end method

.method private static determineCompressFormat(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "JPEG"

    instance-of v2, p0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v0, "PNG"

    :cond_1
    return-object v0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13

    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, v4, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    :cond_2
    return-void
.end method

.method private forcePause()V
    .locals 2

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "forcePause() is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsForcePause:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsForcePause:Z

    return-void
.end method

.method private forceResume()V
    .locals 2

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "forceResume() is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->onResume()V

    return-void
.end method

.method private getCroppedResult()Lcom/sec/android/gallery3d/crop/CropResult;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string/jumbo v6, "output"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsRequestAgifCrop:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/sec/android/gallery3d/app/CropImage;->FEATURE_SUPPORT_AGIF_CROPPER:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/CropView;->isAGiFMode()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    new-instance v4, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "return-data"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    new-instance v4, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0
.end method

.method private getCustomActionButtonTextSize(I)F
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010095

    aput v4, v3, v5

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/gallery3d/app/CropImage;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    return v1
.end method

.method private getErrorStringID(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0a0195

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    const v0, 0x7f0a020d

    :cond_1
    return v0

    :cond_2
    const v0, 0x7f0a0194

    goto :goto_0
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "png"

    :goto_1
    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "jpg"

    goto :goto_1
.end method

.method private getLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/sec/android/gallery3d/app/CropImage$16;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/app/CropImage$16;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method private getMediaItemFromUri()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "CropImage"

    const-string/jumbo v5, "no data given"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CropImage Uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot get path for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", or no data given"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;Z)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "image/jpeg"

    goto :goto_0
.end method

.method private handleCancelButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMenuHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    return-void
.end method

.method private handleSaveButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMenuHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private hasSaveableSpace()Z
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v5, "output"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_4

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->hasSaveAbleSDCardStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :cond_2
    const-string/jumbo v5, "return-data"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->hasSaveAbleStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z

    move-result v5

    goto :goto_0
.end method

.method private initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->createCustomMenuItem(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/app/CropImage$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/app/CropImage$6;-><init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a041c

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDoneCancelButton()V
    .locals 13

    const v12, 0x7f1000a5

    const v11, 0x7f0a041c

    const v10, 0x7f020095

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v5, 0x7f0c00b9

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/app/CropImage;->getCustomActionButtonTextSize(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/CropImage;->isShowButtonBackground(Landroid/content/Context;)Z

    move-result v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v6, 0x7f120078

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v6, 0x7f120079

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v2, :cond_3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_0

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v6, 0x7f12007a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v6, 0x7f12007b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v2, :cond_4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    if-eqz v5, :cond_5

    const v5, 0x7f0a0386

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->isImageLoaded()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_5
    const v5, 0x7f0a012f

    goto :goto_2
.end method

.method private initializeData()V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    :cond_0
    const-string/jumbo v2, "data"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    :cond_1
    const-string/jumbo v2, "spotlightRect"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    const/16 v9, 0x140

    new-instance v2, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v9}, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/CropView;->setDataModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMediaItemFromUri()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilePathFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_8

    :cond_6
    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_7

    if-eqz v11, :cond_9

    :cond_7
    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The media item ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is null or file don\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a01a4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto :goto_1

    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "image/*"

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMimeTypeFromUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    const-string/jumbo v16, "image/*"

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mIsRequestAgifCrop:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/sec/android/gallery3d/app/CropImage;->FEATURE_SUPPORT_AGIF_CROPPER:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMimeTypeFromUri:Ljava/lang/String;

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "gif"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "max-file-size"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "outputX-gif"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "outputY-gif"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v2, Lcom/sec/android/gallery3d/crop/GifCropper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/crop/GifCropper;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/data/MediaItem;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMimeTypeFromUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/crop/GifCropper;->initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V

    :cond_c
    const/4 v2, 0x0

    const v3, 0x7f0a0247

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    :cond_d
    if-eqz v10, :cond_10

    const-string/jumbo v2, "senderIsVideoCall"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoCallCrop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropForVideoCall:Z

    const-string/jumbo v2, "resizeW"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v2, "resizeH"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    if-eqz v20, :cond_10

    if-eqz v19, :cond_10

    const v21, 0x3e99999a    # 0.3f

    const v13, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v14

    :cond_e
    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v20, :cond_f

    if-eqz v19, :cond_f

    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v14

    mul-float/2addr v2, v3

    int-to-float v3, v15

    div-float v18, v2, v3

    :cond_f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v18, v2

    if-lez v2, :cond_13

    div-float v13, v21, v18

    :goto_5
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v3, v21

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v4, v13

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v5, v5, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v13

    move/from16 v0, v22

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    const/16 v17, 0x1

    :goto_6
    if-eqz v17, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/sec/android/gallery3d/app/CropImage$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/gallery3d/app/CropImage$12;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    :cond_13
    mul-float v21, v13, v18

    goto :goto_5

    :cond_14
    const/16 v17, 0x0

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    goto/16 :goto_1
.end method

.method private isNotFullWindow()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShowButtonBackground(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->getErrorStringID(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "image_too_small"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4

    const v3, 0x7f1000a9

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    iput v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v1, 0x7f120078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v1, 0x7f120079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v1, 0x7f12007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->startCropView()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V
    .locals 8

    const v7, 0x7f1000a9

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    const v3, 0x7f0a0194

    invoke-static {p0, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    iput v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_1

    const v3, 0x7f0a020d

    invoke-static {p0, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v4, 0x7f120078

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v4, 0x7f120079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v4, 0x7f12007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    new-instance v3, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    check-cast v3, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3, v4, v2, v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    check-cast v3, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->startCropView()V

    goto/16 :goto_0
.end method

.method private onSaveClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->hasSaveableSpace()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->saveCropImageFile()V

    goto :goto_0
.end method

.method private registerSettingsObserver()V
    .locals 5

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "REGISTER_SETTINGS_OBSERVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    int-to-float v0, p1

    div-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    neg-int v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v2

    neg-int v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void

    :cond_0
    neg-int v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v2

    neg-int v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3

    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sparse-switch p3, :sswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v1, p4}, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/sec/android/gallery3d/app/CropImage$11;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/gallery3d/app/CropImage$11;-><init>(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    const/16 v0, 0x64

    :try_start_0
    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "Bitmap write errror!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private saveCloudImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Landroid/net/Uri;
    .locals 7

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/app/CropImage;->saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private saveCropImageFile()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v4, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v5, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/CropView;->getCropRectangleEx(II)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CropImage saveCropImageFile cropRect= ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPausedWhileSaving:Z

    if-eqz v2, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPausedWhileSaving:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v4, Lcom/sec/android/gallery3d/app/CropImage$15;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/app/CropImage$15;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSaveTask:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const v3, 0x7f0a038b

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_1
.end method

.method private saveGenericImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10

    const-wide/16 v8, 0x3e8

    sget-object v5, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "cannot create download folder"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/sec/android/gallery3d/app/CropImage;->saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "date_modified"

    div-long v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "date_added"

    div-long v6, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "mime_type"

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 18

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x2e

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-ltz v11, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sec/android/gallery3d/app/CropImage;->saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/SoundScene;->copySoundDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x2e

    invoke-virtual {v6, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-ltz v11, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v8, v14, v16

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "_display_name"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "datetaken"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "mime_type"

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/sec/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "latitude"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v13, "longitude"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;JLjava/lang/String;)Landroid/net/Uri;
    .locals 13

    sget-object v7, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "cannot create download folder"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_2
    const/16 v7, 0x2e

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/sec/android/gallery3d/app/CropImage;->changeExifData(Ljava/lang/String;II)V

    sget-object v7, Lcom/sec/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sec/android/gallery3d/app/CropImage;->saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "title"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "_display_name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "datetaken"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "mime_type"

    const-string/jumbo v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "orientation"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3e8

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot create file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v2

    const-string/jumbo v7, "CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail to create new file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v7, Lcom/sec/android/gallery3d/app/CropImage$10;

    invoke-direct {v7, p0}, Lcom/sec/android/gallery3d/app/CropImage$10;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/app/CropImage;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    :goto_1
    return-object v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    invoke-direct {p0, p1, p2, v7, v5}, Lcom/sec/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v7, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    const-string/jumbo v7, "CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail to save image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :cond_4
    move-object v7, v1

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v4, v5

    goto :goto_2
.end method

.method private saveToMediaProvider(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/app/CropImage;->saveCloudImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/CropImage;->saveGenericImage(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->setActionBarNos()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->setActionBarMOs()V

    goto :goto_0
.end method

.method private setActionBarMOs()V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f02010f

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/CropImage;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    const v2, 0x7f120077

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/16 v2, 0xc

    invoke-virtual {v0, v4, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->initDoneCancelButton()V

    goto :goto_0
.end method

.method private setActionBarNos()V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f120077

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->initDoneCancelButton()V

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2

    const-string/jumbo v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private startCropView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->setDataModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;I)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->startCropHandler()V

    :cond_0
    return-void
.end method

.method private updateInPauseStateDelayed()V
    .locals 3

    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mNeedUpdateBackscreenInPauseState:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "updateBackscreenInPauseState() is called for showing background screen normally in Pause state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->isNotFullWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateInPauseStateForTabletMWSwitch()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "Activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->forcePause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getCropForVideoCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropForVideoCall:Z

    return v0
.end method

.method public getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 36

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v13, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v22

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/ui/CropView;->mIsSetAsContactPhoto:Z

    if-eqz v5, :cond_c

    const/16 v32, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->getImageWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/sec/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->getImageHeight()I

    move-result v19

    :cond_0
    :goto_1
    const/16 v17, 0x140

    move/from16 v0, v32

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    :cond_1
    const/16 v30, 0x1

    :cond_2
    :goto_2
    if-eqz v18, :cond_3

    if-nez v30, :cond_3

    const-string/jumbo v5, "outputX"

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v5, "outputY"

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    :cond_3
    const v16, 0x4c4b40

    mul-int v5, v21, v22

    move/from16 v0, v16

    if-le v5, v0, :cond_4

    move/from16 v0, v16

    int-to-double v6, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v6, v6, v34

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v6, v6, v34

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v27, v0

    const-string/jumbo v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scale down the cropped image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v22

    int-to-float v5, v0

    mul-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v22

    :cond_4
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v18, :cond_5

    const-string/jumbo v5, "scale"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    move/from16 v0, v21

    int-to-float v5, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v28, v5, v6

    move/from16 v0, v22

    int-to-float v5, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v29, v5, v6

    if-eqz v18, :cond_6

    const-string/jumbo v5, "scaleUpIfNeeded"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v28, v5

    if-lez v5, :cond_7

    const/high16 v28, 0x3f800000    # 1.0f

    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v29, v5

    if-lez v5, :cond_8

    const/high16 v29, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v24

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v29

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v23

    sub-int v5, v21, v24

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v6, v22, v23

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v7, v21, v24

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v8, v22, v23

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v13, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    :goto_3
    return-object v4

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v19

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCallerId:Z

    if-nez v5, :cond_d

    const/16 v30, 0x1

    :goto_4
    goto/16 :goto_2

    :cond_d
    const/16 v30, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v6

    move/from16 v0, v26

    rsub-int v7, v0, 0x168

    invoke-static {v13, v5, v6, v7}, Lcom/sec/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    move/from16 v0, v26

    rsub-int v5, v0, 0x168

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v14, v0, v1, v5}, Lcom/sec/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v5, :cond_11

    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v15

    move-object/from16 v0, v20

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v15

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_f

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v15

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-object/from16 v0, v20

    invoke-virtual {v5, v13, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-nez v5, :cond_9

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v26

    int-to-float v5, v0

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v4, v25

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_10
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-static {v11, v0, v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_3

    :cond_11
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-static {v11, v0, v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v5, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public getGifCropper()Lcom/sec/android/gallery3d/crop/GifCropper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    return-object v0
.end method

.method public getMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method public isFromDetailView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    return v0
.end method

.method public isImageLoaded()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPreDisplayBitmap(Landroid/graphics/Bitmap;I)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    check-cast v0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/gallery3d/ui/CropView;->setDataModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/CropView;->initializeHighlightRectangle(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    if-eqz v0, :cond_1

    const v0, 0x7f050032

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/app/CropImage;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    const-string/jumbo v1, "CropImage"

    const-string/jumbo v2, "CropImage onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView;->isCropAreaChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->handleCancelButton()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0386

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/app/CropImage$7;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/app/CropImage$7;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/app/CropImage$8;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/app/CropImage$8;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/app/CropImage$9;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/app/CropImage$9;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mConfirmDialogForBackPress:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "CropImage onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCallerId:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/CropImage;->setTitle(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->setActionBar()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->onConfigChanged()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "onConfigurationChanged : Crop activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    return-void

    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/CropImage;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->forceResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-string/jumbo v11, "CropImage"

    const-string/jumbo v12, "CropImage onCreate Start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    const/16 v13, 0x400

    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setFlags(II)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v11, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v3, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "file"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaEjectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/sec/android/gallery3d/app/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow(Z)V

    if-eqz p1, :cond_b

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActivityReCreated:Z

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRightAlignedActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    iget-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    if-eqz v11, :cond_0

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCacheActionViews:Landroid/util/SparseArray;

    :cond_0
    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsNOs:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkGoogleUriImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSrcUri:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    const-string/jumbo v11, "photo-frame"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v11, "set_snote"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "set-as-image"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_2
    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v11, "set_sview"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v11, "crop_and_delete"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCropAndDelete:Z

    const-string/jumbo v11, "is_slink"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsSlinkCrop:Z

    const-string/jumbo v11, "set_normal_crop"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMimeTypeFromUri:Ljava/lang/String;

    const-string/jumbo v11, "support-crop-gif"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsRequestAgifCrop:Z

    :cond_3
    const v11, 0x7f040041

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->setContentView(I)V

    new-instance v7, Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-direct {v7, p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    new-instance v11, Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {v11, p0}, Lcom/sec/android/gallery3d/ui/CropView;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v12, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->createUpdateBackScreenListener()Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setUpdateBackscreenListener(Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMultiWindowListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->registerSettingsObserver()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v2, :cond_4

    const-string/jumbo v11, "is-caller-id"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCallerId:Z

    const-string/jumbo v11, "is-manual-fd"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    iget-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v11, :cond_4

    const v11, 0x7f0a024b

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/app/CropImage;->setTitle(I)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-boolean v12, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/ui/CropView;->setManualFD(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->setActionBar()V

    new-instance v11, Lcom/sec/android/gallery3d/app/CropImage$3;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/sec/android/gallery3d/app/CropImage$3;-><init>(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "lookupKeyFromContactPopup"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->lookupkeytoPass:Ljava/lang/String;

    :cond_5
    if-eqz p1, :cond_6

    const-string/jumbo v11, "lookUpOnRecreate"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->lookUpKeyAfterRecreate:Ljava/lang/String;

    :cond_6
    if-eqz v2, :cond_9

    const-string/jumbo v11, "aspectX"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v11, "aspectY"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v11, "spotlightX"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const-string/jumbo v11, "spotlightY"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v9

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    :cond_7
    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    int-to-float v12, v0

    int-to-float v13, v1

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    :cond_8
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11, v8, v9}, Lcom/sec/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    :cond_9
    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11, v5}, Lcom/sec/android/gallery3d/ui/CropView;->setIsSNote(Z)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11, v4}, Lcom/sec/android/gallery3d/ui/CropView;->setIsPhotoFrame(Z)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v11, v6}, Lcom/sec/android/gallery3d/ui/CropView;->setIsSView(Z)V

    new-instance v11, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v12, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v11, v12}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mTileViewAdapter:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->checkApplyScreenNail()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    const v12, 0x7f050033

    invoke-static {p0, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    const-string/jumbo v11, "CropImage"

    const-string/jumbo v12, "CropImage onCreate End"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 13

    const v12, 0x7f12007b

    const v11, 0x7f050033

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v8, 0x7f130000

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isOnlyTextDisplayedOnActionBar(Landroid/content/Context;Landroid/util/DisplayMetrics;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v10

    :cond_2
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f130020

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v7, 0x7f120078

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    const v7, 0x7f12007a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/app/CropImage;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-static {p0, v9, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setContentInsetForCustomActionBar(Landroid/app/Activity;II)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    const v8, 0x7f1200b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsFromDetailView:Z

    if-eqz v7, :cond_5

    const v7, 0x7f0a0386

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoneActionView:Landroid/view/View;

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    const v7, 0x7f0a012f

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x6

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "CropImage onDestory Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->forcePause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    :cond_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->recycle()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMediaEjectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "CropImage onDestory End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const v1, 0x7f1200af

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMenuHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->handleSaveButton()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f12007b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "CropImage onPause Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/CropImage;->cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/CropImage;->cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSaveTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->waitDone()V

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/CropImage;->mPausedWhileSaving:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->enableDNIeMode(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "CropImage onPause End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "CropImage onResume Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/CropImage;->mNeedUpdateBackscreenInPauseState:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->checkRequiredPermissions()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->initializeData()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->onSaveClicked()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage;->setActionBar()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->enableDNIeMode(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/CropImage;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/CropView;->resume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    :goto_2
    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "CropImage onResume End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lookUpOnRecreate"

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->lookupkeytoPass:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCropHandler()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsCallerId:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage;->mCropView:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage;->mSpotlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->initializeHighlightRectangle(Landroid/graphics/RectF;)V

    goto :goto_0
.end method
